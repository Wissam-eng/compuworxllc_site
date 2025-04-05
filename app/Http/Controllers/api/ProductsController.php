<?php

namespace App\Http\Controllers\api;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Models\productReview;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class ProductsController extends Controller
{
  public function index(Request $request)
  {
    $lang = $request->header('lang');
    $user_id = $request->header('user');
    $cate_id = $request->cate_id;
    $brand_id = $request->brand_id;
    $price_from = $request->price_from;
    $price_to = $request->price_to;
    $gifts = $request->gifts;
    if ($lang == '') {
      $resArr = [
        'status' => false,
        'message' => trans('api.pleaseSendLangCode'),
      ];
      return response()->json($resArr);
    }
    $products = Product::orderBy('ordering', 'desc');
    if ($cate_id != '') {
      $products = $products->where('category_id', $cate_id);
    }
    if ($brand_id != '') {
      $products = $products->where('company_id', $brand_id);
    }
    if ($price_from != '') {
      $products = $products->where('price', '>=', $price_from);
    }
    if ($price_to != '') {
      $products = $products->where('price', '<=', $price_to);
    }
    if ($gifts != '') {
      $products = $products->where('gift', $gifts);
    }
    $products = $products->get();
    $list = [];
    foreach ($products as $product) {
      $list[] = $product->apiData($lang, $user_id);
    }
    $resArr = [
      'status' => true,
      'data' => $list
    ];
    return response()->json($resArr);
  }

  public function gifts(Request $request)
{
    $lang = $request->header('lang');
    $user_id = $request->header('user');
    $cate = $request->cate;
    $brand = $request->brand;
    $age = $request->age;
    $price_from = $request->price_from;
    $price_to = $request->price_to;
    if ($lang == '') {
        $resArr = [
            'status' => false,
            'message' => trans('api.pleaseSendLangCode'),
        ];
        return response()->json($resArr);
    }
    $products = Product::where('gift', 'yes')->orderBy('ordering', 'desc');
    if ($cate != '') {
        $categoryIds = Product::getCategory($cate);
        $products->whereIn('category_id', $categoryIds);
    }
    if ($brand != '') {
        $brandIds = Product::getBrand($brand);
        $products->whereIn('company_id', $brandIds);
    }
    if ($age != '') {
        $products->where('minAge', $age);
    }
    if ($price_from != '' && $price_to != '') {
        $products->whereBetween('price', [$price_from, $price_to]);
    }
    $products = $products->get();
    $list = [];
    foreach ($products as $product) {
        $list[] = $product->apiData($lang, $user_id);
    }
    $resArr = [
        'status' => true,
        'data' => $list,
    ];
    return response()->json($resArr);
}



  public function search(Request $request)
  {
    $lang = $request->header('lang');
    $user_id = $request->header('user');
    if ($lang == '') {
      $resArr = [
        'status' => false,
        'message' => trans('api.pleaseSendLangCode'),
      ];
      return response()->json($resArr);
    }
    $query = $request->get('query');
    if ($query != '') {
      $products = Product::where('name_'.$lang,'LIKE',"%{$query}%")
      ->orWhere('description_'.$lang,'LIKE',"%{$query}%")
      ->get();
        $list = [];
        foreach ($products as $product) {
          $list[] = $product->apiData($lang, $user_id);
        }
        $resArr = [
          'status' => true,
          'data' => $list
        ];
        return response()->json($resArr);
      }else{
        return response()->json('Nothing Match');
      }
  }


  public function show(Request $request, Product $product)
  {
    $lang = $request->header('lang');
    $user_id = $request->header('user');
    if ($lang == '') {
      $resArr = [
        'status' => false,
        'message' => trans('api.pleaseSendLangCode'),
      ];
      return response()->json($resArr);
    }
    $resArr = [
      'status' => true,
      'data' => $product->apiData($lang, $user_id)
    ];
    return response()->json($resArr);
  }

  public function SubmitReview(Request $request, $product_id)
  {
    $lang = $request->header('lang');
    $user_id = $request->header('user');

    if (checkUserForApi($lang, $user_id) !== true) {
      return checkUserForApi($lang, $user_id);
    }

    $rules = [
      'rate' => 'required|numeric|min:1|max:5',
      'comment' => 'required|string',
    ];
    $validator = Validator::make($request->all(), $rules);
    if ($validator->fails()) {
      foreach ((array)$validator->errors() as $error) {
        return response()->json([
          'status' => 'faild',
          'message' => trans('api.pleaseRecheckYourDetails'),
          'data' => $error
        ]);
      }
    }

    $data = $request->except(['_token']);
    $review = productReview::create([
      'product_id' => request('product_id'),
      'user_id' => $user_id,
      'rating' => request('rate'),
      'content' => request('comment'),
    ]);
    if ($review) {
      $resArr = [
        'status' => 'success',
        'message' => trans('api.yourDataHasBeenSavedSuccessfully'),
        'data' => $review->apiData($lang)
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
}
