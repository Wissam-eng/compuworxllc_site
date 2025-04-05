@extends('frontend.layouts.master')
@section('content')


  <!-- Parallax banner -->
  {{-- <section class="section-b-space dark-overlay pt-4">

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
             @forelse ($companies as $Company)
                 {{-- <div class="col-lg-2 col-md-4 col-sm-1"> --}}
                {{-- <div class="p-1">
                   <a href="{{ route('e-commerce.products', ['company_id[]'=>$Company->id]) }}">
                     <img src="{{$Company->photoLink()}}" alt="" width="100%">
                   </a>
                 </div>
             @empty

             @endforelse
            </div>
        </div>
    </div>
</section> --}} --}}


<!-- Product section -->
<section class="pt-0 section-b-space ratio_asos">
  <div class="container">
    <div class="row game-product grid-products">

      @forelse ($companies as $Company)
        <div class="product-box col-12 col-sm-6 col-md-4 col-lg-3">
          <div class="img-wrapper">
            <div class="front">
                <a href="{{ route('e-commerce.products', ['company_id[]'=>$Company->id]) }}">
                <img src="{{$Company->photoLink()}}"class="img-fluid blur-up lazyload bg-img"  width="100%" alt="">
              </a>
            </div>
          </div>
        </div>
      @empty
        <div class="col-12">
          <h2 class="text-center"> {{trans('common.nothingToView')}} </h2>
        </div>
      @endforelse
    </div>
  </div>
</section>

@stop
