<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Models\Categories;
use App\Models\Companies;
use App\Models\Menu;
use App\Models\Product;
use App\Repositories\Cart\CartRepository;
use Illuminate\Http\Request;

class HomeFrontendController extends Controller
{
  public function index()
  {
    $lang = app()->getLocale();
    // $cartItems = $this->cart->get();
    // $cartTotal = $this->cart->total();
    $cartItems = getCart()['items'];
    $cartTotal = getCart()['total'];
    $blogs = Blog::orderBy('id', 'desc')->take(3)->get();
    $products = Product::with(
      ['productImages', 'categories', 'companies', 'productDiscounts', 'productSpecialOffers', 'taxType', 'length', 'specifications', 'productReviews']
    )->orderBy('id', 'desc')->take(12)->get();
    $categories = Categories::with('products')->take(6)->get();
    $Companies = Companies::get();
    return view(
      'welcome',
      [
        'title' => trans('common.home'),
        'breadcrumbs' => [
          [
            'url' => '',
            'text' => trans('common.home')
          ]
        ]
      ],
      compact('blogs', 'products', 'categories', 'Companies', 'lang')
    );
  }

  public function underConstruction()
  {
    return view(
      'underConstruction.index',
      [
        'title' => trans('common.home'),
        'breadcrumbs' => [
          [
            'url' => '',
            'text' => trans('common.home')
          ]
        ]
      ],
    );
  }
}
