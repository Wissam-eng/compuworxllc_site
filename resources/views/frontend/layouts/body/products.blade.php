 <div class="container">
   <div class="row">
    <div class="col-12 pt-4 mt-4">
      <div class="title1">
        <h2 class="title-inner1">{{ getSettingValue('productsTitle_'.app()->getLocale()) }}</h2>
      </div>
    </div>
     <div class="col-xl-6 m-auto">
       <div class="product-para">
         <p class="text-center"> {{ getSettingValue('productsDescription_'.app()->getLocale()) }}</p>
       </div>
     </div>
   </div>
 </div>

 <section class=" pt-0 ratio_asos">
   <div class="container">
     <div class="row py-4">
       <div class="col">
         <div class="row game-product grid-products justify-content-center">
           @forelse ($products as $product)

            @include('frontend.products.product-main-card',['product_data'=>$product])

           @empty

           @endforelse


         </div>
         <div class="row m-4">
          <div class="col pt-3 text-center">
            <a class="btn btn-solid" href="{{ route('e-commerce.products') }}">
              {{ trans('common.more') }}
            </a>
          </div>
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- start paragraph -->
