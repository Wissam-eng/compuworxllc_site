 <!-- Parallax banner -->
 <section class="section-b-space dark-overlay pt-4">

     <div class="ratio_square">
         <div class="container">
             <div class="row">
                 <div class="col-12">
                     <div class="title2">
                         <h2 class="title-inner2">
                             {{ getSettingValue('categoriesTitle_'.$lang) }}
                         </h2>
                     </div>
                 </div>
             </div>
             <div class="slide-5 row margin-default">
              @forelse ($categories as $category)
                  {{-- <div class="col-lg-2 col-md-4 col-sm-1"> --}}
                  <div class="p-1">
                    <a href="{{ route('e-commerce.products', ['category_id[]'=>$category->id]) }}">
                      <img src="{{$category->photoLink()}}" alt="" width="100%">
                      <span class="btn btn-solid text-center btn-block">{{$category['name_'.$lang]}}</span>
                    </a>
                  </div>
              @empty
              @endforelse
                 {{-- @forelse ($categories as $category)
                  <div class="col-lg-4">
                      <div class="theme-card card-border bg-white">
                          <h5 class="title-border">
                              {{ $category['name_'.$lang] }}
                          </h5>
                          <div class="offer-slider slide-1">
                            @for ($x=0;$x<4;$x++)

                                @php
                                  $products = $category->products->skip($x)->take(2);
                                @endphp
                                @if (count($products) > 0)
                                  <div>
                                      @forelse ($products as $product)
                                      <div class="media">
                                          <a href="{{ route('product.details', ['product'=>$product->id]) }}">
                                              <img alt="" class="img-fluid blur-up lazyload" src="{{asset('uploads/products/'.$product->id.'/'.$product->mainImage)}}">
                                          </a>
                                          <div class="media-body align-self-center">
                                              @for($i = 0; $i < $product->countReviews(); $i++)
                                                <i class="fa fa-star"></i>
                                              @endfor
                                              <a href="{{ route('product.details', ['product'=>$product->id]) }}">
                                                  <h6>
                                                      {{ $product['name_'.$lang] }}
                                                  </h6>
                                              </a>
                                              <h4 class="mb-2">
                                                  {{ $product->checkDiscount($product->price, $product->quantity) .' '. getDefaultCurrencySypml() }}
                                              </h4>
                                              <small class="text-secondary">{{trans('common.priceWithTax')}}</small>
                                          </div>
                                      </div>
                                      @empty
                                      <div class="col-12">
                                          <h3 class="text-center">
                                              {{ trans('common.nothingToView')}}
                                          </h3>
                                      </div>
                                      @endforelse
                                  </div>
                                @endif
                            @endfor
                          </div>
                      </div>
                  </div>
                  @empty
                 @endforelse --}}

             </div>
         </div>
     </div>
 </section>


 @if (getSettingImageLink('lastBannerImage') != '')
    <section class="p-0 container">
      <div class="full-banner text-end p-right py-3">
        <img src="{{ (getSettingImageLink('lastBannerImage') == '') ?
          asset('frontend/assets/images/parallax/28.jpg') : getSettingImageLink('lastBannerImage')}}" alt class="blur-up lazyload w-100" height="250px">
      </div>
    </section>
 @endif

  <!-- Parallax banner -->
  <section class="section-b-space dark-overlay pt-4">

    <div class="ratio_square">
        <div class="container">
          <div class="row">
              <div class="col-12">
                  <div class="title2">
                      <h2 class="title-inner2">
                          {{ trans('common.brands') }}
                      </h2>
                  </div>
              </div>
          </div>
            <div class="slide-5 row margin-default">
             @forelse ($Companies as $Company)
                 {{-- <div class="col-lg-2 col-md-4 col-sm-1"> --}}
                <div class="p-1">
                   <a href="{{ route('e-commerce.products', ['company_id[]'=>$Company->id]) }}">
                     <img src="{{$Company->photoLink()}}" alt="" width="100%">
                   </a>
                 </div>
             @empty

             @endforelse
            </div>
        </div>
    </div>
</section>

<style>
  .slick-next {
    display: none !important;
  }
</style>
