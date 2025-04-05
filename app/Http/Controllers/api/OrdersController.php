<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Orders;
use App\Models\OrderItems;
use App\Models\Product;
use App\Models\UserPaymentMethods;
use App\Models\UserAddress;
use Illuminate\Http\Response;
use App\Models\User;
use Illuminate\Support\Facades\Http;

class OrdersController extends Controller
{
    public function createOrder(Request $request)
    {
        $lang = $request->header('lang');
        $user_id = $request->header('user');
        if (checkUserForApi($lang,$user_id) !== true) {
            return checkUserForApi($lang, $user_id);
        }
        $user = User::find($user_id);
        $rules = [
            'shipping_address_id' => 'required'
        ];
        $validator=Validator::make($request->all(),$rules);
        if($validator->fails())
        {
            foreach ((array)$validator->errors() as $error) {
                return response()->json([
                    'status' => 'faild',
                    'message' => trans('api.pleaseRecheckYourDetails'),
                    'data' => $error
                ]);
            }
        }
        $Address = UserAddress::where('id',$request->shipping_address_id)->where('user_id', $user_id)->first();
        if ($Address == '') {
            return response()->json([
                'status' => 'faild',
                'message' => trans('api.noAddressWithThisID'),
                'data' => ''
            ]);
        }

        if ($user->cart() == '') {
          return response()->json([
            'status' => 'faild',
            'message' => trans('api.youDon\'tHaveCart'),
            'data' => ''
          ]);
        }

        $user->cart()->update([
          'shipping_address_id' => $request->shipping_address_id
        ]);


        if ($user->cart()->address->email == '') {
          return response()->json([
            'status' => 'faild',
            'message' => 'يجب أن يحتوي تفاصيل العنوان على بريد إلكتروني خاص بالعميل',
            'data' => ''
          ]);
        }
        if ($user->cart()->address->phone == '') {
          return response()->json([
            'status' => 'faild',
            'message' => 'يجب أن يحتوي تفاصيل العنوان على هاتف خاص بالعميل',
            'data' => ''
          ]);
        }
        // return $user->cart()->address;
        $response = Http::withHeaders([
          'X-AccountNo' => '555141',
          'X-SecretKey' => 'sk_sandbox_a258dcd8aaa94e33a2539903a3433b88'
        ])->post('https://api.sandbox.payzaty.com/checkout', [
          'amount' => $user->cart()->totals()['netTotal'],
          'currency' => 'SAR',
          'language' => 'en',
          'reference' => 'ORD-'.$user->cart()->id,
          'customer' => [
              'name' => $user->name,
              'email' => $user->cart()->address->email,
              'phone' => '+966 '.$user->cart()->address->phone
          ],
          'response_url' => route('orders.success',['order'=>$user->cart()->id,'status'=>'success']),
          'cancel_url' => route('orders.success',['order'=>$user->cart()->id,'status'=>'faild'])
        ]);
        $response = json_decode($response);
        return $response;
        return response()->json([
          'status' => 'success',
          'message' => trans('api.thisIsYourPaymentLink'),
          'data' => $response->checkout_url
        ]);

        return response()->json([
            'status' => 'faild',
            'message' => '',
            'data' => $user->cart()
        ]);
    }
    public function myOrdersList(Request $request)
    {
      $lang = $request->header('lang');
      $user_id = $request->header('user');
        if (checkUserForApi($lang, $user_id) !== true) {
            return checkUserForApi($lang, $user_id);
        }
        $list = Orders::where('status','=','cart')->where('user_id',$user_id)->orderBy('id','desc')->get();
        $orders = [];
        foreach ($list as $key => $value) {
            $orders[] = $value->apiData($lang);
        }
        $resArr = [
            'status' => true,
            'data' => $orders
        ];
        return response()->json($resArr, Response::HTTP_OK);

    }
    public function OrderDetails(Request $request, $id)
    {
        $lang = $request->header('lang');
        $user_id = $request->header('user');

        if (checkUserForApi($lang, $user_id) !== true) {
            return checkUserForApi($lang, $user_id);
        }
        $order = Orders::find($id);
        if ($order != '') {
            $resArr = [
                'status' => 'success',
                'message' => '',
                'data' => $order->apiData($lang)
            ];
        } else {
            $resArr = [
                'status' => 'faild',
                'message' => trans('api.someThingWentWrong'),
                'data' => []
            ];
        }
        return response()->json($resArr);

    }
    public function getShippingRate(Request $request)
    {
        $lang = $request->header('lang');
        $currency = $request->header('currency');
        $shippingMethod = $request->header('shippingMethod');
        $user = $request->header('user');
        if ($shippingMethod == 'exprese') {
            $shippingMethod = 'aramex';
        }

        if (checkUserForApi($lang, $user->id) !== true) {
            return checkUserForApi($lang, $user->id);
        }

        $shipping_id = $request['shipping_id'];
        $resArr = [
            'status' => 'success',
            'data' => shippingCalculator($user->id,$shipping_id,$shippingMethod,$currency)
        ];
        return response()->json($resArr);

    }
    public function addToCart(Request $request)
    {
        $lang = $request->header('lang');
        $user = $request->header('user');

        if (checkUserForApi($lang, $user) !== true) {
            return checkUserForApi($lang, $user);
        }
        $user = User::find($user);
        $items = [];

        foreach ($request['cart'] as $key => $value) {
          $product = Product::find($value['product_id']);
          if ($product != '') {
            $items[] = [
                'product_id' => $value['product_id'],
                'quantity' => $value['quantity'],
                'options' => $value['options'],
            ];
          }
        }
        if (count($items) > 0) {
          foreach ($items as $item) {
            addToCart($user->id,$item);
          }
        }
        $resArr = [
            'status' => 'success',
            'data' => $user->myCart($lang)
        ];
        return response()->json($resArr);

    }
    public function myCart(Request $request)
    {
        $lang = $request->header('lang');
        $currency = $request->header('currency');
        $user_id = $request->header('user');
        $dateTime = date('Y-m-d H:i:s');

        if (checkUserForApi($lang, $user_id) !== true) {
            return checkUserForApi($lang, $user_id);
        }
        $user = User::find($user_id);
        if ($user && $user->cart() == null) {
            $order = $user->cart();
            if ($order == '') {
                $order = Orders::create([
                    'user_id' => $user_id,
                    'date_time' => $dateTime,
                    'date_time_str' => strtotime($dateTime),
                    'total' => 0,
                    'net_total' => 0,
                    'status' => 'cart'
                ]);
            }
        }
        $resArr = [
            'status' => true,
            'data' => $user->cart() != '' ? $user->cart()->apiData($lang) : $user->cart()->apiData($lang)
        ];
        return response()->json($resArr);
    }
    public function removeCart(Request $request)
    {
        $lang = $request->header('lang');
        $user = $request->header('user');

        if (checkUserForApi($lang, $user->id) !== true) {
            return checkUserForApi($lang, $user->id);
        }
        $user = User::find($user->id);
        $user->cart()->delete();
        $resArr = [
            'status' => 'success',
            'data' => $user->myCart($lang)
        ];
        return response()->json($resArr);

    }
    public function editCart(Request $request)
    {
        $lang = $request->header('lang');
        $user = $request->header('user');

        if (checkUserForApi($lang, $user->id) !== true) {
            return checkUserForApi($lang, $user->id);
        }
        $user = User::find($user->id);
        $items = [];
        foreach ($request['cart'] as $key => $value) {
            $items[] = [
                'product_id' => $value['product_id'],
                'quantity' => $value['quantity'],
                'price' => $value['price'],
            ];
        }
        addToCart($user->id,$items);
        $resArr = [
            'status' => 'success',
            'data' => $user->myCart($lang)
        ];
        return response()->json($resArr);

    }
    public function removeItem(Request $request, $id)
    {
        $lang = $request->header('lang');
        $user_id = $request->header('user');

        if (checkUserForApi($lang, $user_id) !== true) {
            return checkUserForApi($lang, $user_id);
        }
        $user = User::find($user_id);
        $item = OrderItems::find($id);
        if ($item != '') {
            $order = $item->order;
            $item->delete();
            if ($order != '') {
                if ($order->items()->count() == 0) {
                    $order->delete();
                }
            }
        }
        $resArr = [
            'status' => 'success',
            'data' => $user->myCart($lang)
        ];
        return response()->json($resArr);

    }
    public function editItem(Request $request, $id)
    {
        $lang = $request->header('lang');
        $user_id = $request->header('user');

        if (checkUserForApi($lang, $user_id) !== true) {
            return checkUserForApi($lang, $user_id);
        }
        $user = User::find($user_id);
        $item = OrderItems::find($id);
        if ($item != '') {
            $quantity = $item->quantity;
            if ($request->action == 'increase') {
                $quantity += 1;
            } else {
                if ($quantity > 1) {
                    $quantity -= 1;
                }
            }
            $item->update(['quantity'=>$quantity,'total'=>$quantity*$item->price]);
        }
        $resArr = [
            'status' => 'success',
            'message' => '',
            'data' => $user->myCart($lang)
        ];
        return response()->json($resArr);

    }
    public function addCoupon(Request $request)
    {
        $lang = $request->header('lang');
        $user_id = $request->header('user');

        if (checkUserForApi($lang, $user_id) !== true) {
            return checkUserForApi($lang, $user_id);
        }
        $user = User::find($user_id);
        if ($user->cart() != '') {
            if (checkForCoupon($user->cart()['id'],$request->coupon) != '') {
                $resArr = [
                    'status' => 'success',
                    'message' => trans('common.yourCouponAddedSuccessfully'),
                    'data' => $user->myCart($lang)
                ];
            } else {
                $resArr = [
                    'status' => 'faild',
                    'message' => trans('common.canNotUseThisCoupon'),
                    'data' => $user->myCart($lang)
                ];
            }
        } else {
            $resArr = [
                'status' => 'faild',
                'message' => trans('api.someThingWentWrong'),
                'data' => $user->myCart($lang)
            ];
        }
        return response()->json($resArr);

    }
    public function removeCoupon(Request $request)
    {
        $lang = $request->header('lang');
        $user_id = $request->header('user');

        if (checkUserForApi($lang, $user_id) !== true) {
            return checkUserForApi($lang, $user_id);
        }
        $user = User::find($user_id);
        if ($user->cart() != '') {
            $order = Orders::find($user->cart()['id'])->update([
                'coupun_id' => '',
                'coupun_code' => ''
            ]);
            $resArr = [
                'status' => 'success',
                'message' => trans('api.yourCouponRemovedSuccessfully'),
                'data' => $user->myCart($lang)
            ];
        } else {
            $resArr = [
                'status' => 'faild',
                'message' => trans('api.someThingWentWrong'),
                'data' => $user->myCart($lang)
            ];
        }
        return response()->json($resArr);

    }

    public function assignShippingAddress(Request $request) {
      $lang = $request->header('lang');
      $user_id = $request->header('user');

      if (checkUserForApi($lang, $user_id) !== true) {
          return checkUserForApi($lang, $user_id);
      }
      $user = User::find($user_id);
      if ($user->cart() != '') {
        $address = UserAddress::find($request->shipping_address_id);
        if ($address != '') {
          $user->cart()->update([
              'shipping_address_id' => $request->shipping_address_id
          ]);
          $resArr = [
              'status' => 'success',
              'message' => trans('api.yourDataHasBeenSavedSuccessfully'),
              'data' => $user->myCart($lang)
          ];
        } else {
          $resArr = [
              'status' => 'faild',
              'message' => trans('api.addressDoesn\'tExist'),
              'data' => $user->myCart($lang)
          ];
        }
      } else {
          $resArr = [
              'status' => 'faild',
              'message' => trans('api.someThingWentWrong'),
              'data' => $user->myCart($lang)
          ];
      }
      return response()->json($resArr);
    }
}
