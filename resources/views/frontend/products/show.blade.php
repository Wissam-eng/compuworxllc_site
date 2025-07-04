@extends('frontend.layouts.master')
@section('content')
@include('frontend.layouts.topbar.breadcrumbs')
<!-- section start -->
<section class="section-b-space">
  <div class="collection-wrapper">
    <div class="container p-4">
      <div class="row">
        <div class="col-sm-3 collection-filter" id="myFilter">
          <!-- side-bar single product slider start -->
          <div class="theme-card">
            <h5 class="title-border">{{ trans('common.newProducts') }}</h5>
            <div class="offer-slider slide-1">
              <?php $row = 0 ?>
              @for($i = 0; $i < 3; $i++) <div>
                @php
                $newProducts1 = $newProducts->skip($row)->take(3);
                @endphp
                @foreach ($newProducts1 as $newProduct)
                <div class="media">
                  <a href="{{ route('product.details', ['product'=>$newProduct->id]) }}">
                    <img class="img-fluid blur-up lazyload" src="{{asset('uploads/products/'.$newProduct->id.'/'.$newProduct->mainImage)}}" alt="">
                  </a>
                  <div class="media-body align-self-center">
                    <div class="rating">
                      {{-- {{ $newProduct->countReviews() }} --}}
                      @for($i = 0; $i < $newProduct->countReviews(); $i++)
                        <i class="fa fa-star" style="color: gold;"></i>
                        @endfor
                    </div>
                    <a href="{{ route('product.details', ['product'=>$newProduct->id]) }}">
                      <h6>
                        {{ $newProduct['name_'.$lang] }}
                      </h6>
                    </a>
                    <h4>
                      {{ $newProduct->price . ' '.getDefaultCurrencySypml() }}
                    </h4>
                  </div>
                </div>
                @endforeach
            </div>
            <?php $row += 3 ?>
            @endfor
          </div>
        </div>
        <!-- side-bar single product slider end -->
      </div>
      <div class="col-lg-9 col-sm-12 col-xs-12">
        <div class="container-fluid p-0">
          {{-- <div class="row">
            <div class="col-xl-12">
              <div class="filter-main-btn mb-2">
                <span class="filter-btn">
                  <i class="fa fa-filter" aria-hidden="true"></i>
                  filter
                </span>
              </div>
            </div>
          </div> --}}
          <div class="row">
            <div class="col-lg-6">
              <div class="product-slick">
                <div>
                  <img src="{{asset('uploads/products/'.$product->id.'/'.$product->mainImage)}}" alt="" class="img-fluid blur-up lazyload image_zoom_cls-0">
                </div>
                @php
                $i = 1;
                @endphp
                @forelse ($product->productImages as $image)
                <div>
                  <img src="{{ asset('uploads/products/'.$product->id.'/'.$image->additionalImages) }}" alt="" class="img-fluid blur-up lazyload image_zoom_cls-{{ $i++ }}">
                </div>
                @empty
                <div>
                  <img src="{{ asset('frontend/assets/images/pro3/27.jpg') }}" alt="" class="img-fluid blur-up lazyload image_zoom_cls-3">
                </div>
                @endforelse
              </div>
              <div class="row">
                <div class="col-12 p-0">
                  <div class="slider-nav">
                    <div>
                      <img src="{{asset('uploads/products/'.$product->id.'/'.$product->mainImage)}}" alt="" class="img-fluid blur-up lazyload">
                    </div>
                    @forelse ($product->productImages as $image)
                    <div>
                      <img src="{{ asset('uploads/products/'.$product->id.'/'.$image->additionalImages) }}" alt="" class="img-fluid blur-up lazyload">
                    </div>
                    @empty
                    <div>
                      <img src="{{ asset('frontend/assets/images/pro3/27.jpg') }}" alt="" class="img-fluid blur-up lazyload">
                    </div>
                    @endforelse
                  </div>
                </div>
              </div>

            </div>

            {{-- Right Side --}}
            <div class="col-lg-6 rtl-text">
              <div class="product-right">

                <h2>{{ $product['name_'.$lang] }}</h2>
                <div class="rating-section">
                  <div class="rating">
                    {{-- {{ $product->countReviews() }} --}}
                    @for($i = 0; $i < $product->countReviews(); $i++)
                      <i class="fa fa-star" style="color: gold;"></i>
                      @endfor
                  </div>
                </div>
                <h3 class="price-detail">
                  <b id="thePrice">{{ $product->checkDiscount($product->price, $product->quantity)}}</b> {{
                  ' '.getDefaultCurrencySypml() }}
                  @if($product->price != $product->checkDiscount($product->price, $product->quantity))
                  <del>{{ $product->price . ' '.getDefaultCurrencySypml() }}</del>
                  @endif
                </h3>

                <small class="text-secondary">{{trans('common.priceWithTax')}}</small>
                <div id="selectSize" class="addeffect-section product-description border-product">
                  {{-- <h6 class="product-title size-text">select size <span><a href="" data-bs-toggle="modal"
                        data-bs-target="#sizemodal">size
                        chart</a></span></h6> --}}
                  {{-- <div class="modal fade" id="sizemodal" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLabel">Sheer
                            Straight Kurta</h5>
                          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><span
                              aria-hidden="true">&times;</span></button>
                        </div>
                        <div class="modal-body"><img src="{{ asset('frontend/assets/images/size-chart.jpg') }}" alt=""
                  class="img-fluid blur-up lazyload">
                </div>
              </div>
            </div>
          </div> --}}
          {{-- <h6 class="error-message">please select size</h6>
                  <div class="size-box">
                    <ul>
                      <li><a href="javascript:void(0)">s</a></li>
                      <li><a href="javascript:void(0)">m</a></li>
                      <li><a href="javascript:void(0)">l</a></li>
                      <li><a href="javascript:void(0)">xl</a></li>
                    </ul>
                  </div> --}}
          {{-- show product options --}}

          <form method="POST" data-action="{{ route('cart.store') }}" action="{{ route('cart.store') }}" class="product-buttons d-inline-block cart-form" id="cart-form">
            @csrf
            @if($product->options->count() > 0)
              <h2>
                {{ trans('common.options') }}
              </h2>
              @foreach ($product->options as $option)
                @if ($option->originalOption != '')
                  <div class="row mb-1">
                    <div class="col-md-3">
                      <h4>
                        {{$option->originalOption['name_'.app()->getLocale()]}}
                        @if ($option->optionRequired == 1)
                        <span class="text-danger">*</span>
                        @endif
                      </h4>
                    </div>
                    <div class="col-md-5">
                      @if ($option->originalOption->option_type_id == '1')
                      <select name="option[{{$option->id}}]" option_id="{{$option->id}}"
                        class="product_options form-control productOptionList" data-optionid="{{$option->id}}"
                        onchange="changePriceByOption({{$product->id}})">
                        <option value="">
                          اختر --
                        </option>
                        @foreach ($option->options as $item)
                        <option value="{{$item->id}}">
                          {{$item->originalOptionValue['name_'.app()->getLocale()]}}
                          @if($item->price > 0) (+ {{$item->price}}) @endif
                        </option>
                        @endforeach
                      </select>
                      @endif
                      @if ($option->originalOption->option_type_id == '2')
                      @foreach ($option->options as $item)
                      <div class="form-check">
                        <input class="form-check-input" type="radio" name="option[{{$option->id}}]"
                          value="{{$item->id}}" id="optionRadio{{$item->id}}">
                        <label class="form-check-label" for="optionRadio{{$item->id}}">
                          {{$item->originalOptionValue['name_'.app()->getLocale()]}}
                        </label>
                      </div>
                      @endforeach
                      @endif
                      @if($option->originalOption->option_type_id == 6)
                        <input type="file" name="optionFile" class="form-control">
                      @endif
                    </div>
                  </div>
                @endif
              @endforeach
            @endif
            <input type="hidden" class="product_id" name="product_id" value="{{ $product->id }}">
            <input type="hidden" name="price" value="{{ $product->checkDiscount($product->price, $product->quantity)}}" id="inputPrice">
            <button href="javascript:void(0)" id="cartEffect" class="btn btn-solid">
              <i class="fa fa-shopping-cart me-1" aria-hidden="true"></i>
              {{ trans('common.addToCart') }}
            </button>
          </form>
          <div class="product-buttons mt-2 d-inline-block">

            @if (auth()->check())
              <button  class="add-button btn btn-solid" title="{{ trans('common.addToWishlist') }}"
                      data-product-id="{{ $product->id }}" type="button"
                      onclick="addToFav(this)">
                  <i class="fa fa-bookmark fz-16 me-2" aria-hidden="true"></i>
                  {{ trans('common.wishlist') }}
              </button>
            @else
              <form method="POST" action="{{ route('wishlist.add') }}">
                @csrf
                <input type="hidden" name="product_id" value="{{ $product->id }}">
                <button class="add-button btn btn-solid" type="submit" title="{{ trans('common.addToWishlist') }}">
                  <i class="fa fa-bookmark fz-16 me-2" aria-hidden="true"></i>
                  {{ trans('common.wishlist') }}
                </button>
              </form>
            @endif
          </div>

        </div>

      <div class="border-product">
        <h6 class="product-title">{{ trans('common.shareIt') }}</h6>
        <div class="product-icon">
          <ul class="product-social">
            <li>
              <a href="https://www.facebook.com/sharer/sharer.php?u={{url()->full()}}">
                <i class="fa fa-facebook-f"></i>
              </a>
            </li>
            <li>
              <a href="http://twitter.com/share?text={{$product['name_'.app()->getLocale()]}}&url={{url()->full()}}">
                <i class="fa-brands fa-x-twitter"></i>
              </a>
            </li>
            <li>
              <a href="https://www.instagram.com/?url={{url()->full()}}">
                <i class="fa fa-instagram"></i>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>

  </div>
  </div>

  <section class="tab-product m-0">
    <div class="row">
      <div class="col-sm-12 col-lg-12">
        <ul class="nav nav-tabs nav-material" id="top-tab" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" id="top-home-tab" data-bs-toggle="tab" href="#top-home" role="tab" aria-selected="true">
              <i class="icofont icofont-ui-home"></i>{{ trans('common.details') }}
            </a>
            <div class="material-border"></div>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="review-top-tab" data-bs-toggle="tab" href="#top-review" role="tab" aria-selected="false">
              <i class="icofont icofont-contacts"></i>{{ trans('common.writeReview') }}
            </a>
            <div class="material-border"></div>
          </li>
        </ul>
        <div class="tab-content nav-material" id="top-tabContent">
          <div class="tab-pane fade show active" id="top-home" role="tabpanel" aria-labelledby="top-home-tab">
            <div class="product-tab-discription">
              @if ($product['description_'.$lang] != '')
              <div class="part">
                <h5 class="inner-title">{{ trans('common.description') }}</h5>
                <p>
                  {{ $product['description_'.$lang] }}
                </p>
              </div>
              @endif

              @if ($product['type'] != '')
              <div class="part">
                <h5 class="inner-title">{{ trans('common.type') }}</h5>
                <p>
                  {{ $product['type'] }}
                </p>
              </div>
              @endif

              @if ($product->height != '' || $product->width != '' || $product->length != '' || $product->weight
              != '')
              <div class="part">
                <h5 class="inner-title">{{ trans('common.sizeFit') }}</h5>
                @if ($product->height != '')
                <p> {{ trans('common.height') . ' : ' .$product->height }}</p>
                @endif
                @if ($product->width != '')
                <p> {{ trans('common.width') . ' : ' .$product->width }}</p>
                @endif
                @if ($product->length != '')
                <p> {{ trans('common.length') . ' : ' .$product->length }}</p>
                @endif
                @if ($product->weight != '')
                <p> {{ trans('common.weight') . ' : ' .$product->weight }}</p>
                @endif
              </div>
              @endif

              @if ($product->specifications()->count() > 0)
              <div class="part">
                <h5 class="inner-title">{{ trans('common.specification') }}</h5>
                <ul>
                  @foreach ($product->specifications as $specification)
                  <li class="mb-1 d-flex">
                    <b class="btn btn-sm btn-warning mx-1 text-start" style="width:150px">{{ $specification['name_'.$lang] }}:</b>
                    {{ $specification->pivot['description_'.$lang] }}
                  </li>
                  @endforeach
                </ul>
              </div>
              @endif

            </div>
          </div>
          <div class="tab-pane fade" id="top-review" role="tabpanel" aria-labelledby="review-top-tab">
            @if ($errors->any())
            <div class="alert alert-danger">
              <ul>
                @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
              </ul>
            </div>
            @endif
            <form class="theme-form" method="POST" action="{{ route('product.productReview') }}">
              @csrf
              <input type="hidden" name="product_id" value="{{ $product->id }}">
              <div class="form-group row">
                <label for="rating" class="col-sm-2 col-form-label">{{ trans('common.rate') }}</label>
                <div class="col-sm-10">
                    @foreach (ratingList() as $key => $item)
                      <div class="form-check">
                        {!! Form::radio('rating', $key, false, ['id'=>'rating'.$key,'class'=>'form-check-input','style'=>'padding: 8px;
                        margin-left: 10px !important;']) !!}
                        <label class="form-check-label" for="'rating'{{$key}}">
                          {!!$item!!}
                        </label>
                      </div>
                    @endforeach
                  @error('rating')
                  <span class="text-danger">{{ $message }}</span>
                  @enderror
                </div>
              </div>
              <div class="form-group row">
                <label for="content" class="col-sm-2 col-form-label">{{ trans('common.comment') }}</label>
                <div class="col-sm-10">
                  <textarea class="form-control @error('content') is-invalid @enderror" placeholder="{{ trans('common.WrireYourTestimonialHere') }}" id="content" rows="6" name="content"></textarea>
                  @error('content')
                  <span class="text-danger">{{ $message }}</span>
                  @enderror
                </div>
              </div>
              <div class="form-group row">
                <div class="col-sm-10">
                  <button class="btn btn-solid" type="submit">
                    {{ trans('common.submit') }}
                  </button>
                </div>
              </div>
            </form>
            <hr>
              <h4 class="mb-3">{{trans('common.reviews')}}</h4>
              @forelse ($product->productReviews as $review)
                  <div class="row">
                    <div class="col-md-2">
                      @if ($review->user != '')
                        <img src="{{$review->user->photoLink()}}" alt="" width="90">
                      @else
                        <img src="{{asset('AdminAssets/app-assets/images/portrait/small/avatar.png')}}" alt="" width="90">
                      @endif
                      <h6>{{$review->user->name ?? ''}}</h6>
                      <small class="text-muted">{{date('Y-m-d',strtotime($review->created_at))}}</small>
                    </div>
                    <div class="col-md-10">
                      {!!ratingStars($review->rating)!!}
                      <br>
                      {{$review->content}}
                    </div>
                  </div>
              @empty
                  <div class="row">
                    <div class="col-12">
                      {{trans('common.nothingToView')}}
                    </div>
                  </div>
              @endforelse
          </div>
        </div>
      </div>
    </div>
  </section>
  </div>
  </div>
  </div>
  </div>
</section>
<!-- Section ends -->

  @if (count($relatedProducts) > 0)
    <!-- related products -->
    <section class="section-b-space pt-0 ratio_asos">
      <div class="container">
        <div class="row">
          <div class="col-12 product-related">
            <h2>{{ trans('common.relatedProducts') }}</h2>
          </div>
        </div>
        <div class="row search-product">
          @forelse ($relatedProducts as $related_product)
              @include('frontend.products.product-main-card',['product_data'=>$related_product])
          @empty
          <h2>{{ trans('common.nothingToView') }}</h2>
          @endforelse

        </div>
      </div>
    </section>
    <!-- related products -->
  @endif


@stop
