 <section class="vegetables-category">
     <div class="container">
         <div class="row">
             <div class="col-12 pt-4 mt-4">
                 <div class="title1">
                     <h2 class="title-inner1">{{ getSettingValue('categoriesTitle_' . app()->getLocale()) }}</h2>
                 </div>
             </div>
             <div class="col-xl-12 m-auto">
                 <div class="categories-slider-center">
                     @if ($categories->count() > 3)
                         @foreach ($categories as $category)
                             <div class="p-3">
                                 <div class="category-card">
                                     <a href="{{ route('e-commerce.products', ['category_id[]' => $category->id]) }}"
                                         class="categoryLink">
                                         <img class="categoryImage" src="{{ $category->photoLink() }}"
                                             alt="Category Image">
                                         <h5 class="category-card-title"> {{ $category['name_' . $lang] }}</h5>
                                     </a>
                                 </div>
                             </div>
                         @endforeach
                         @foreach ($categories as $category)
                             <div class="p-3">
                                 <div class="category-card">
                                     <a href="{{ route('e-commerce.products', ['category_id[]' => $category->id]) }}"
                                         class="categoryLink">
                                         <img class="categoryImage" src="{{ $category->photoLink() }}"
                                             alt="Category Image">
                                         <h5 class="category-card-title"> {{ $category['name_' . $lang] }}</h5>
                                     </a>
                                 </div>
                             </div>
                         @endforeach
                     @else
                         @foreach ($categories as $category)
                             <div class="p-3">
                                 <div class="category-card">
                                     <a href="{{ route('e-commerce.products', ['category_id[]' => $category->id]) }}"
                                         class="categoryLink">
                                         <img class="categoryImage" src="{{ $category->photoLink() }}"
                                             alt="Category Image">
                                         <h5 class="category-card-title"> {{ $category['name_' . $lang] }}</h5>
                                     </a>
                                 </div>
                             </div>
                         @endforeach
                     @endif

                 </div>
             </div>
         </div>

         {{-- <div class="vector-slide-8 no-arrow slick-default-margin ratio_square">



             @foreach ($categories as $category)
                 <div class="">
                     <div class="category-boxes">
                         <div>
                             <a href="{{ route('e-commerce.products', ['category_id[]' => $category->id]) }}"
                                 tabindex="0">
                                 <div
                                     style="text-align:center;width: 100%;margin: 0px auto;background-color:rgb(248, 248, 248);padding:18px;border-radius:12px;box-sizing:border-box;">
                                     <div style="width: 52%;margin: 0px auto 12px;box-sizing:border-box;">
                                         <img src="{{ $category->photoLink() }}" alt=""
                                             style="width:70px;height: auto;vertical-align:middle;box-sizing:border-box;display:block;" />
                                     </div>
                                     <h4
                                         style="font-size:18px;margin-bottom:0px;color:rgb(34, 34, 34);text-transform:capitalize;font-weight:400;letter-spacing:0.54px;line-height:18px;margin-top:0px;box-sizing:border-box;">
                                         {{ $category['name_' . $lang] }}</h4>
                                 </div>
                             </a>
                         </div>
                     </div>
                 </div>
             @endforeach
             @foreach ($categories as $category)
                 <div class="">
                     <div class="category-boxes">
                         <div>
                             <a href="{{ route('e-commerce.products', ['category_id[]' => $category->id]) }}"
                                 tabindex="0">
                                 <div
                                     style="text-align:center;width: 100%;margin: 0px auto;background-color:rgb(248, 248, 248);padding:18px;border-radius:12px;box-sizing:border-box;">
                                     <div style="width: 52%;margin: 0px auto 12px;box-sizing:border-box;">
                                         <img src="{{ $category->photoLink() }}" alt=""
                                             style="width:70px;height: auto;vertical-align:middle;box-sizing:border-box;display:block;" />
                                     </div>
                                     <h4
                                         style="font-size:18px;margin-bottom:0px;color:rgb(34, 34, 34);text-transform:capitalize;font-weight:400;letter-spacing:0.54px;line-height:18px;margin-top:0px;box-sizing:border-box;">
                                         {{ $category['name_' . $lang] }}</h4>
                                 </div>
                             </a>
                         </div>
                     </div>
                 </div>
             @endforeach
         </div> --}}
     </div>
 </section>
