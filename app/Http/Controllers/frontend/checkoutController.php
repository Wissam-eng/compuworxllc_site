<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use App\Models\orderAddress;
use App\Models\UserAddress;
use App\Models\OrderItems;
use App\Models\Orders;
use App\Models\Product;
use App\Models\ShippingLocations;
use App\Repositories\Cart\CartRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use App\Models\Countries;
use Illuminate\Support\Facades\Http;


class checkoutController extends Controller
{
  public function index()
  {
    $lang = app()->getLocale();
    $countries = Countries::orderBy('id','asc')->pluck('name_'.$lang,'iso')->all();
    $cartItems = getCart()['items'];
    $cartTotal = getCart()['total'];
    $ShippingLocations = ShippingLocations::with('items')->get();
    $order = auth()->user()->cart();
    return view('frontend.checkout.index', [
      'title' => trans('common.checkOut'),
      'breadcrumbs' => [
        [
          'url' => '',
          'text' => trans('common.checkOut')
        ]
      ]
    ], compact('cartItems','lang', 'countries', 'ShippingLocations','order'));
  }

  public function store(Request $request)
  {
    $rules = [
      'first_name' => 'required',
      'last_name' => 'required',
      'email' => 'required|email',
      'phone' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:10',
      'city' => 'required',
      'country' => 'required',
      'address' => 'required',
      'postalCode' => 'required',
    ];
    $validator = Validator::make($request->all(), $rules);
    if ($validator->fails()) {
      return redirect()->back()->withErrors($validator)->withInput();
    }
    $order = auth()->user()->cart();
    if (auth()->user()->cart()->address != '') {
      $userAddress = auth()->user()->cart()->address()->update([
        'user_id' => auth()->id(),
        'first_name' => $request->first_name,
        'last_name' => $request->last_name,
        'email' => $request->email,
        'phone' => $request->phone,
        'city' => $request->city,
        'country' => $request->country,
        'address' => $request->address,
        'postalCode' => $request->postalCode,
        'type' => 'shipping'
      ]);
    } else {
      $userAddress = UserAddress::create([
        'user_id' => auth()->id(),
        'first_name' => $request->first_name,
        'last_name' => $request->last_name,
        'email' => $request->email,
        'phone' => $request->phone,
        'city' => $request->city,
        'country' => $request->country,
        'address' => $request->address,
        'postal_code' => $request->postalCode,
        'type' => 'shipping'
      ]);
      auth()->user()->cart()->update([
        'shipping_address_id' =>$userAddress->id
      ]);
    }
    $total = auth()->user()->cart()->totals()['netTotal'];
    $user_cashBack = auth()->user()->cashBackTotal();
    if ($user_cashBack > 0) {
      if ($user_cashBack >= $total) {
        return redirect()->route('orders.success',['order'=>auth()->user()->cart()->id,'status'=>'success']);
      }
      $total = $total - $user_cashBack;
    }
    $response = Http::withHeaders([
      'X-AccountNo' => '555141',
      'X-SecretKey' => 'sk_sandbox_a258dcd8aaa94e33a2539903a3433b88'
    ])->post('https://api.sandbox.payzaty.com/checkout', [
      'amount' => $total,
      'currency' => 'SAR',
      'language' => 'en',
      'reference' => 'ORD-'.auth()->user()->cart()->id,
      'customer' => [
          'name' => $request->first_name.' '.$request->last_name,
          'email' => $request->email,
          'phone' => '+966 '.$request->phone
      ],
      'response_url' => route('orders.success',['order'=>auth()->user()->cart()->id,'status'=>'success']),
      'cancel_url' => route('orders.success',['order'=>auth()->user()->cart()->id,'status'=>'faild'])
    ]);
    $response = json_decode($response);
    if (is_array($response)) {
      if (isset($response['checkout_url'])) {
        return $response['checkout_url'];
      }
    }
    return redirect($response->checkout_url);


    // auth()->user()->cart()->update([
    //   'payment_status' => 'paid',
    //   'status' => 'new'
    // ]);
    // return redirect()->route('orders.success', ['order' => $order->id]);
  }

  public function applyCoupon(Request $request)
  {
    // $request->validate([
    //   'coupon' => 'required|exists:coupons,coupon'
    // ]);
    $result = $this->cart->applyCoupon($request->coupon);
    if ($result['status'] == 1) {
      return response()->json([
        'status' => 1,
        'total' => round($result['discounted'], 2),
        'message' => trans('common.ValidCoupon'),
      ]);
    }
    return response()->json([
      'status' => 0,
      'total' => $this->cart->total(),
      'message' => trans('common.InvalidCoupon')
    ]);
  }
}
