<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use App\Models\FAQs;
use App\Models\Menu;
use App\Models\Pages;
use App\Models\Polices;
use App\Repositories\Cart\CartRepository;
use Illuminate\Http\Request;

class staticController extends Controller
{
  protected $cart;
  public function __construct(CartRepository $cart)
  {
    $this->cart = $cart;
  }
  public function index($id)
  {
    $lang = app()->getLocale();
    // $cartItems = $this->cart->get();
    // $cartTotal = $this->cart->total();
    $page = Pages::find($id);
    return view('frontend.pages.index', [
      'title' => $page->title,
      'breadcrumbs' => [
        [
          'url' => '',
          'text' => $page->title
        ]
      ]
    ], compact('lang', 'page'
    // , 'cartItems', 'cartTotal'
    ));
  }
  public function contact()
  {
    $lang = app()->getLocale();
    // $cartItems = $this->cart->get();
    // $cartTotal = $this->cart->total();
    return view('frontend.contact.index', [
      'title' => trans('common.contactUs'),
      'breadcrumbs' => [
        [
          'url' => '',
          'text' => trans('common.contactUs')
        ]
      ]
    ], compact('lang'
    // , 'cartItems', 'cartTotal'
  ));
  }
  public function about()
  {
    $lang = app()->getLocale();
    // $cartItems = $this->cart->get();
    // $cartTotal = $this->cart->total();
    return view('frontend.aboutUs.index', [
      'title' => trans('common.aboutUs'),
      'breadcrumbs' => [
        [
          'url' => '',
          'text' => trans('common.aboutUs')
        ]
      ]
    ], compact('lang'
    // , 'cartItems', 'cartTotal'
  ));
  }
  public function error()
  {
    $lang = app()->getLocale();
    // $cartItems = $this->cart->get();
    // $cartTotal = $this->cart->total();
    return view('frontend.error.index', [
      'title' => trans('common.error'),
      'breadcrumbs' => [
        [
          'url' => '',
          'text' => trans('common.error')
        ]
      ]
    ], compact('lang'
    // , 'cartItems', 'cartTotal'
  ));
  }
  public function faqs()
  {
    $lang = app()->getLocale();
    // $cartItems = $this->cart->get();
    // $cartTotal = $this->cart->total();
    $FAQs = FAQs::orderBy('ranking', 'asc')->get();
    return view('frontend.faqs.index', [
      'title' => trans('common.FAQs'),
      'breadcrumbs' => [
        [
          'url' => '',
          'text' => trans('common.FAQs')
        ]
      ]
    ], compact('lang', 'FAQs'
    // , 'cartItems', 'cartTotal'
  ));
  }

  public function polices()
  {
    $lang = app()->getLocale();
    // $cartItems = $this->cart->get();
    // $cartTotal = $this->cart->total();
    $polices = Polices::orderBy('ranking', 'asc')->get();
    return view('frontend.polices.index', [
      'title' => trans('common.policesPrivacies'),
      'breadcrumbs' => [
        [
          'url' => '',
          'text' => trans('common.policesPrivacies')
        ]
      ]
    ], compact('lang', 'polices'
    // , 'cartItems', 'cartTotal'
  ));
  }
}
