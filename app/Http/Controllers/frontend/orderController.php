<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use App\Models\Orders;
use App\Models\CashBack;
use Illuminate\Http\Request;

class orderController extends Controller
{
  public function orderSuccess($order_id){
    $lang = app()->getLocale();
    $order = Orders::find($order_id);
    if ($order == '') {
      # code...
    }
    if ($_GET['status'] == 'success') {
      $order->update([
        'payment_status' => 'paid',
        'status' => 'new',
        'checkout_id' => $_GET['checkoutId']
      ]);
      if (auth()->user()->cashBackTotal() > 0) {
        $cash_out = auth()->user()->cashBackTotal();
        if (auth()->user()->cashBackTotal() >= $order->totals()['netTotal']) {
          $cash_out = $order->totals()['netTotal'];
        } 
        $cash_back = CashBack::create([
          'user_id' => auth()->user()->id,
          'order_id' => $order_id,
          'in' => $back_to_cash
        ]);
      }
      if (getSettingValue('chashBackShare') != '') {
        if (getSettingValue('chashBackShare') > 0) {
          $share = getSettingValue('chashBackShare') / 100;
          $back_to_cash = $order->totals()['netTotal'] * $share;
          $cash_back = CashBack::create([
            'user_id' => auth()->user()->id,
            'order_id' => $order_id,
            'in' => $back_to_cash
          ]);
        }
      }

    }
    return view('frontend.order.orderSuccess', [
      'title' => trans('common.orders'),
      'breadcrumbs' => [
        [
          'url' => '',
          'text' => trans('common.orders')
        ]
      ]
    ], compact('lang','order'));
  }

  public function orderTracking(Orders $order){
    $lang = app()->getLocale();
    $order = $order->load(['items', 'address']);
    return view('frontend.order.orderTracking', [
      'title' => trans('common.orders'),
      'breadcrumbs' => [
        [
          'url' => '',
          'text' => trans('common.orders')
        ]
      ]
    ], compact('lang','order'));
  }
}
