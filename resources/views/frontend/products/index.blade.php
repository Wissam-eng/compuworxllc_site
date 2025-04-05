@extends('frontend.layouts.master')
@section('content')
{{-- صفحة المنتجات --}}
<!-- section start -->
<section class="section-b-space ratio_asos">
  <div class="collection-wrapper">
    <div class="container">
      <div class="row">
        <div class="col-sm-3 collection-filter">
            @include('frontend.products.side-filters')
          <!-- side-bar single product slider start -->
        {{-- <div class="theme-card">
          <h5 class="title-border">{{ trans('common.newProducts') }}</h5>
          <div class="offer-slider slide-1">
            <?php $row = 0 ?>
            @for($i = 0; $i < 3; $i++)
              <div>
                @php
                $newProducts1 = $newProducts->skip($row)->take(3);
                @endphp
                @foreach ($newProducts1 as $product)
                <div class="media">
                  <a href="{{ route('product.details', ['product'=>$product->id]) }}">
                    <img class="img-fluid blur-up lazyload" src="{{asset('uploads/products/'.$product->id.'/'.$product->mainImage)}}" alt="">
                  </a>
                  <div class="media-body align-self-center">
                    <div class="rating"><i class="fa fa-star"></i> <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                    </div><a href="product-page(no-sidebar).html">
                      <h6>
                        {{ $product['name_'.$lang] }}
                      </h6>
                    </a>
                    <h4>
                      {{ $product->price.' '.getDefaultCurrencySypml() }}
                    </h4>
                  </div>
                </div>
                @endforeach
              </div>
            <?php $row += 3 ?>
            @endfor
          </div>
        </div> --}}
        </div>
        <div class="collection-content col-sm-9">
          <div class="page-main-content">
            <div class="row">
              <div class="col-sm-12">
                @if (isset($active))
                  @if(getSettingImageLink('giftsBannerImg'))
                    <div class="top-banner-wrapper">
                      <a href="#">
                        <img src="{{ getSettingImageLink('giftsBannerImg') }}" class="img-fluid blur-up lazyload" alt="">
                      </a>
                    </div>
                  @endif
                @else
                  @if(getSettingImageLink('productsMainImage'))
                    <div class="top-banner-wrapper">
                      <a href="#">
                        <img src="{{ getSettingImageLink('productsMainImage') }}" class="img-fluid blur-up lazyload" alt="">
                      </a>
                    </div>
                  @endif
                @endif
                <div class="collection-product-wrapper">
                  <div class="product-top-filter">
                    <div class="row">
                      <div class="col-xl-12">
                        <div class="filter-main-btn">
                          <span class="filter-btn btn btn-theme">
                            <i class="fa fa-filter" aria-hidden="true"></i>
                            {{trans('common.Filter')}}
                          </span>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="product-wrapper-grid">
                    <div class="row game-product grid-products justify-content-center">
                      @foreach ($products as $product)
                          @include('frontend.products.product-main-card',['product_data'=>$product])
                      @endforeach
                    </div>

                    <div class="product-pagination">
                      <div class="theme-paggination-block">
                        <div class="row">
                          <div class="col-xl-6 col-md-6 col-sm-12">
                            <nav aria-label="Page navigation">
                              <ul class="pagination">

                                <li class="page-item">
                                  <a class="page-link" href="{{$products->previousPageUrl()}}" aria-label="Previous">
                                    <span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>
                                    <span class="sr-only">{{ trans('common.Previous') }}</span>
                                  </a>
                                </li>
                                  @for($i = 1; $i <= $products->lastPage(); $i++)
                                    <li class="page-item {{ $products->currentPage() == $i ? 'active' : '' }}">
                                      <a class="page-link" href="{{ $products->url($i) }}">{{ $i }}</a>
                                    </li>
                                  @endfor
                                  <li class="page-item">
                                    <a class="page-link" href="{{ $products->nextPageUrl() }}" aria-label="Next">
                                      <span aria-hidden="true">
                                        <i class="fa fa-chevron-left" aria-hidden="true"></i>
                                      </span>
                                      <span class="sr-only">{{ trans('common.Next') }}</span>
                                    </a>
                                  </li>
                              </ul>
                            </nav>
                          </div>
                          <div class="col-xl-6 col-md-6 col-sm-12">
                            <div class="product-search-count-bottom">
                              <h5>{{ trans('common.ShowingProducts') }}</h5>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- section End -->


@stop
