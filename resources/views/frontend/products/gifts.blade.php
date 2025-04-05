@extends('frontend.layouts.master')
@section('content')
@include('frontend.layouts.topbar.breadcrumbs')


@if (getSettingImageLink('giftsBannerImg') != '')
  <section class="banner p-0">
      <img src="{{getSettingImageLink('giftsBannerImg')}}" alt="Banner Image" class="banner-image" />
    @if (getSettingValue('giftsBannerHeader_'.$lang) != '' || getSettingValue('giftsBannerText_'.$lang) != '')
      <div class="banner-content-1">
        @if (getSettingValue('giftsBannerHeader_'.$lang) != '')
          <h1>{{getSettingValue('giftsBannerHeader_'.$lang)}}</h1>
        @endif
        @if (getSettingValue('giftsBannerText_'.$lang) != '')
          <p>{{getSettingValue('giftsBannerText_'.$lang)}}</p>
        @endif
      </div>
    @endif
  </section>
@endif
<section class="filter">
    <h2 class="filterTitle">Product Filter</h2>
    <div class="filterContainer">
        <div>
            <label class="label">عمر الطفل</label>
            <input class="inp" name="age" type="number" />
        </div>
        <div>
            <label class="label">{{ trans('common.categories') }}</label>
            <select class="inp" name="category_id[]">
              @foreach ($categories as $key => $category)
                <option value="{{ $key }}">{{ $category }}</option>
              @endforeach
            </select>
        </div>
        <div>
            <label class="label">هوايات الطفل</label>
            <input class="inp" name="interests" type="text" />
        </div>
        <div>
            <label class="label">نوع الطفل</label>
            <select class="inp" name="sex">
                <option>male</option>
                <option>female</option>
            </select>
        </div>
    </div>
</section>
<section class=" pt-0 ratio_asos">
    <div class="container">
        <div class="row py-4">
            <div class="col">
                <div class="product-5 product-m no-arrow">
                    @forelse ($products as $product)
                      @include('frontend.products.product-main-card',['product_data'=>$product])
                    @empty
                      <div class="col-12">
                          <h2 class="text-center"> {{trans('common.nothingToView')}} </h2>
                      </div>
                    @endforelse

                </div>
            </div>
        </div>
    </div>
    <hr>
</section>
<script src="./index.js"></script>


@stop
