<?php

namespace App\Models;

use App\Models\Categories;
use App\Models\Companies;
use App\Models\Option;
use App\Models\optionTypes;
use App\Models\optionValue;
use App\Models\productDiscount;
use App\Models\productImage;
use App\Models\productReview;
use App\Models\productSpecialOffer;
use App\Models\Specification;
use App\Models\User;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
  use HasFactory;
  protected $guarded = [];
  public function photoLink()
  {
    $image = asset('AdminAssets/app-assets/images/portrait/small/avatar.png');
    if ($this->mainImage != ''  && file_exists(public_path('uploads/products/' . $this->id . '/' . $this->mainImage))) {
      $image = asset('uploads/products/' . $this->id . '/' . $this->mainImage);
    }
    return $image;
  }
  public function categories()
  {
    return $this->belongsTo(Categories::class, 'category_id');
  }
  public function companies()
  {
    return $this->belongsTo(Companies::class, 'company_id');
  }
  public function taxType()
  {
    return $this->belongsTo(taxType::class, 'tax_type_id');
  }
  public function length()
  {
    return $this->belongsTo(Length::class, 'length_id');
  }
  public function productDiscounts()
  {
    return $this->hasMany(productDiscount::class, 'product_id');
  }
  public function productSpecialOffers()
  {
    return $this->hasMany(productSpecialOffer::class, 'product_id');
  }
  public function productImages()
  {
    return $this->hasMany(productImage::class, 'product_id');
  }
  public function specifications()
  {
    return $this->belongsToMany(Specification::class, 'product_specifications', 'product_id', 'specification_id')
      ->withPivot('description_ar', 'description_en');
  }
  // public function optionValues()
  // {
  //     return $this->belongsToMany(optionValue::class, 'product_option', 'product_id', 'option_value_id')
  //       ->withPivot('optionRequired','optionQuantity','optionPrice', 'optionDiscountFromAvailableProducts');
  // }
  // public function optionTypes()
  // {
  //     return $this->belongsToMany(optionTypes::class, 'product_option', 'product_id', 'option_type_id');
  // }
  public function options()
  {
    return $this->hasMany(ProductOption::class, 'product_id');
  }

  public function apiData($lang, $user_id = null)
  {
    $is_fav = 0;
    if ($user_id != null) {
      $this_user = User::find($user_id);
      if ($this_user != '') {
        $the_fav = $this_user->wishlist()->where('product_id', $this->id)->first();
        if ($the_fav != '') {
          $is_fav = 1;
        }
      }
    }

    $reviews = [];
    foreach ($this->productReviews()->where('published', '1')->get() as $review) {
      $reviews[] = $review->apiData($lang);
    }

    $images = $this->mainImage != '' ? [asset('uploads/products/' . $this->id . '/' . $this->mainImage)] : [];
    foreach ($this->productImages as $image) {
      if (file_exists(public_path('uploads/products/' . $this->id . '/' . $image->additionalImages))) {
        $images[] = asset('uploads/products/' . $this->id . '/' . $image->additionalImages);
      }
    }
    $data = [
      'id' => $this->id,
      'name' => $this['name_' . $lang],
      'description' => $this['description_' . $lang],
      'type' => $this['type'],
      'original_price' => $this->price,
      'real_price' => $this->checkDiscount($this->price, $this->quantity),
      'min_quantity' => $this->min_quantity,
      'shipping_available' => ($this->shipping == 1 ? trans('api.yes') : trans('api.no')),
      'main_image' => $this->photoLink(),
      'minAge' => $this->minAge,
      'length' => $this->length,
      'width' => $this->width,
      'height' => $this->height,
      'weight' => $this->weight,
      'category' => $this->categories != '' ? $this->categories->apiData($lang) : ['id' => 0],
      'company' => $this->companies != '' ? $this->companies->apiData($lang) : ['id' => 0],
      'specifications' => [],
      'options' => [],
      'discounts' => [],
      'specialOffers' => [],
      'images' => $images,
      'reviews' => $reviews,
      'rate' => $this->countReviews(),
      'reviews_count' => $this->productReviews()->where('published', '1')->count(),
      'is_fav' => $is_fav
    ];
    if ($this->specifications != '') {
      foreach ($this->specifications as $specification) {
        $data['specifications'][] = [
          'id' => $specification->id,
          'name' => $specification['name_' . $lang],
          'description' => $specification->pivot['description_' . $lang],
        ];
      }
    }
    if ($this->optionTypes != '') {
      foreach ($this->optionTypes as $optionType) {
        $data['options'][] = [
          'id' => $optionType->id,
          'OptionTypeName' => $optionType['name_' . $lang],
          'values' => [],
        ];
      }
    }
    // foreach ($this->productImages as $productImage) {
    //   $data['images'][] = [
    //     'id' => $productImage->id,
    //     'image' => asset('uploads/products/' . $this->id . '/' . $productImage->image),
    //   ];
    // }
    return $data;
  }
  public function scopeFilter(Builder $builder, $filters, $lang)
  {
    if ($filters['name'] ?? false) {
      $builder->where('name_ar', 'like', '%' . $filters['name'] . '%')
        ->orWhere('name_en', 'like', '%' . $filters['name'] . '%');
    }
    if ($filters['status'] ?? false) {
      $builder->where('status', $filters['status']);
    }
    if ($filters['category'] ?? false) {
      $builder->where('category_id', $filters['category']);
    }
  }

  public function checkDiscount($price, $quantity)
  {
    $price = $this->price;
    if ($this->productDiscounts()->where('start_date', '<=', date('Y-m-d'))
      ->where('end_date', '>=', date('Y-m-d'))->count() > 0
    ) {
      $discount = $this->productDiscounts()->where('start_date', '<=', date('Y-m-d'))->where('end_date', '>=', date('Y-m-d'))->where('quantity', '<=', $quantity)->orderBy('quantity', 'desc')->first();
      if ($discount) {
        $price -= $discount->price;
      }
    }
    return $price;
  }
  public function realPriceAfterDiscount()
  {
    if ($this->checkDiscount($this->price, 1) > $this->price) {
      return $this->checkDiscount($this->price, 1);
    }
    return $this->price;
  }
  public function taxTotal()
  {
    $tax = 0;
    if ($this->taxType != '') {
      if ($this->taxType->apiTaxType(session()->get('Lang'))['taxCost'] > 0) {
        $tax = $this->taxType->taxRates()->sum('price');
      }
    }
    return $tax;
  }
  public function productReviews()
  {
    return $this->hasMany(productReview::class, 'product_id');
  }
  public function countReviews()
  {
    $total = $this->productReviews()->count() * 5;
    $acual_total = $this->productReviews != '' ? $this->productReviews()->sum('rating') : 0;

    $rate = 0;
    if ($acual_total > 0 && $total > 0) {
      $rate = ($acual_total / $total) * 5;
    }

    return $rate;
  }

  public static function getBrand($brand)
  {
    $brand = trim($brand, "[]");
    $list = preg_split("/[,]/", $brand);
    $categoryIds = [];
    foreach ($list as $key) {
      $brand = Companies::where('name_' . app()->getLocale(), $key)->first();
      if ($brand) {
        $brandIds[] = $brand->id;
      }
    }
    return $brandIds;
  }

  public static function getCategory($cate)
  {
    $cate = trim($cate, "[]");
    $list = preg_split("/[,]/", $cate);
    $categoryIds = [];
    foreach ($list as $key) {
      $category = Categories::where('name_' . app()->getLocale(), $key)->first();
      if ($category) {
        $categoryIds[] = $category->id;
      }
    }
    return $categoryIds;
  }
}
