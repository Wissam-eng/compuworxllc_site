<?php

namespace App\Models;

use App\Models\UserAddress;
use App\Models\User;
use Illuminate\Database\Eloquent\Model;

class Orders extends Model
{
  //
  protected $guarded = [];

  public function user()
  {
    return $this->belongsTo(User::class, 'user_id');
  }
  public function address()
  {
    return $this->belongsTo(UserAddress::class, 'shipping_address_id');
  }

  public function client()
  {
    return $this->belongsTo(User::class, 'user_id');
  }

  public function items()
  {
    return $this->hasMany(OrderItems::class, 'order_id');
  }

  public function coupon()
  {
    return $this->belongsTo(Coupons::class, 'coupun_id');
  }

  public function discount()
  {
    $discount = 0;
    if ($this->coupun_code != '') {
      $discount = $this->discount;
    }
    return $discount;
  }

  public function shippingRate()
  {
    $rate = 0;
    if ($this->chooseDeliveryMethod == 1) {
      $rate = getSettingValue('deliveryPrice') != '' ? getSettingValue('deliveryPrice') : 0;
    }
    return $rate;
  }

  public function countryData()
  {
    if (getCountryByIso($this->country)['name'] != '') {
      $name = getCountryByIso($this->country)['name'];
    } else {
      $name = null;
    }

    return [
      'id' => $this->country,
      'country_code' => $this->country,
      'name' => $name,
    ];
    return $this->belongsTo(Countries::class, 'country', 'iso');
  }
  public function governorateData()
  {
    return [
      'id' => $this->governorate,
      'name' => $this->governorate,
    ];
    return $this->belongsTo(Governorates::class, 'governorate');
  }
  public function cityData()
  {
    return [
      'id' => $this->city,
      'name' => $this->city,
    ];
    return $this->belongsTo(Cities::class, 'city');
  }

  public function totals()
  {
    $subtotal = 0;
    $taxRate = 0;
    $netTotal = 0;
    if ($this->items()->count() > 0) {
      foreach ($this->items as $key => $value) {
        $subtotal += $value->totals();
        $taxRate += $value->product != '' ? $value->product->taxTotal() : 0;
      }
      $netTotal = ($subtotal + $taxRate + $this->shippingRate()) - $this->discount();
    }
    return [
      'subtotal' => $subtotal,
      'discount' => $this->discount(),
      'shippingPrice' => $this->shippingRate(),
      'taxRate' => $taxRate,
      'netTotal' => $netTotal,
    ];
  }
  public function getDate($lang)
  {
    $date = date('l d F Y', strtotime($this['updated_at']));
    $time = date('H:i', strtotime($this['updated_at']));
    if ($lang == 'ar') {
      $date = DayMonthOnly($this['updated_at']);
      $time = getTime($this['updated_at']);
    }
    return [
      'date' => $date,
      'time' => $time
    ];
  }
  public function apiData($lang, $currency = null)
  {
    $orderItems = [];
    $itemsCount = 0;
    $total = 0;
    foreach ($this->items as $key => $value) {
      $itemsCount += $value->quantity;
      $orderItems[] = $value->apiData($lang, $currency);
      $total += $value->total;
    }
    if ($currency == '') {
      $totals = [
        'total' => $total,
        'netTotal' => $total - $this->discount(),
        'discount' => $this->discount()
      ];
    } else {
      $curruncy = Currencies::find($currency);
      if ($curruncy != '') {
        $totals = [
          'total' => round($total / $curruncy->transfer_rate),
          'netTotal' => round(($total - $this->discount()) / $curruncy->transfer_rate),
          'discount' => round($this->discount() / $curruncy->transfer_rate)
        ];
      } else {
        $totals = [
          'total' => $total,
          'netTotal' => $total - $this->discount(),
          'discount' => $this->discount()
        ];
      }
    }
    $data = [
      'id' => $this->id,
      'date' => $this->getDate($lang)['date'],
      'time' => $this->getDate($lang)['time'],
      'total' => $totals['total'],
      'discount' => $totals['discount'],
      'netTotal' => $totals['netTotal'],
      'address' => $this->address != '' ? $this->address->apiData($lang) :
        [
          'id' => 0,
          'user' => $this->user != '' ? $this->user->apiData($lang) : ['id' => ''] ,
        'country' => $this->countryData(),
        'city' => $this->cityData(),
        'governorate' => $this->governorateData(),
          'address' =>  null,
          'postal_code' =>  null,
          'phone' =>  null,
        ],
      //['id'=>0],
      'shippingMethod' => $this->shipping_method,
      'paymentMethod' => $this->payment_method,
      'itemsCount' => $this->items()->count(),
      'items' => $orderItems,
    ];

    return $data;
  }
}
