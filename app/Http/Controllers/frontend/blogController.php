<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Models\Menu;
use App\Repositories\Cart\CartRepository;
use Illuminate\Http\Request;

class blogController extends Controller
{
  protected $cart;
  public function __construct(CartRepository $cart)
  {
    $this->cart = $cart;
  }
  public function index()
  {
    $blogs = Blog::all();
    $lang = app()->getLocale();
    $cartItems = $this->cart->get();
    $cartTotal = $this->cart->total();
    return view('frontend.blog.index', [
      'title' => trans('common.blog'),
      'breadcrumbs' => [
        [
          'url' => '',
          'text' => trans('common.blog')
        ]
      ]
    ], compact('blogs', 'lang', 'cartItems', 'cartTotal'));
  }
  public function show(Blog $blog)
  {
    $lang = app()->getLocale();
    $cartItems = $this->cart->get();
    $cartTotal = $this->cart->total();
    return view('frontend.blog.details', [
      'title' => trans('common.blog'),
      'breadcrumbs' => [
        [
          'url' => route('e-commerce.blog'),
          'text' => trans('common.blog')
        ],
        [
          'url' => '',
          'text' => trans('common.blogDetails')
        ]
      ]
    ], compact('blog', 'lang', 'cartItems', 'cartTotal'));
  }
}
