@extends('frontend.layouts.master')
@section('content')

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
          <div class="row margin-default">
           @forelse ($categories as $category)
               <div class="col-lg-2 col-md-4 col-sm-1">
                 <a href="{{ route('e-commerce.products', ['category_id[]'=>$category->id]) }}">
                   <img src="{{$category->photoLink()}}" alt="" width="100%">
                   <span class="btn btn-solid text-center btn-block">{{$category['name_'.$lang]}}</span>
                 </a>
               </div>
           @empty

           @endforelse

          </div>
      </div>
  </div>
</section>


@stop
