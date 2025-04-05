  <div class="product-box">
      <div class="img-wrapper">
          <div class="front">
              <a href="{{ route('product.details', ['product' => $product_data->id]) }}">
                  <img src="{{ $product_data->photoLink() }}" class="img-fluid blur-up lazyload bg-img" alt=""
                      style="width: 100%; height: 200px;object-fit: contain;
            object-fit: cover;
            object-position: center center;">
              </a>
          </div>

          <di class="d-flex" style="justify-content: center;margin-bottom:15px;margin-top:15px;">
              <div class="product-detail">
                  <a href="{{ route('product.details', ['product' => $product->id]) }}">
                      <h4>{{ $product['name_' . $lang] }}</h4>
                  </a>
                  <div class="rating" style="display: flex;align-items: center;justify-content: center;">

                      @for ($i = 0; $i < $product_data->countReviews(); $i++)
                          <svg viewBox="0 0 576 512" height="1em" xmlns="http://www.w3.org/2000/svg"
                              class="star-solid golden" style="fill:#e58e09">
                              <path
                                  d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z">
                              </path>
                          </svg>
                      @endfor
                  </div>


              </div>
          </di>
          <div class="d-flex">
              <div class="favItem">
                  @if (auth()->check())
                      <button title="{{ trans('common.addToWishlist') }}" data-product-id="{{ $product_data->id }}"
                          type="button" onclick="addToFav(this)">
                          <i class="ti-heart" aria-hidden="true"></i>
                      </button>
                  @else
                      <form method="POST" action="{{ route('wishlist.add') }}">
                          @csrf
                          <input type="hidden" name="product_id" value="{{ $product_data->id }}">
                          <button type="submit" title="{{ trans('common.addToWishlist') }}">
                              <i class="ti-heart" aria-hidden="true"></i>
                          </button>
                      </form>
                  @endif
              </div>
              <div class="addCartBtn">
                  <button class="btn add-button addCart w-100" onclick="addToCart(this)"
                      data-product-id="{{ $product->id }}" data-quantity="1" type="button"
                      value="{{ $product->id }}">
                      <i class="ti-shopping-cart"></i>
                      {{ trans('common.addToCart') }}
                      ( <span style="color: #f2c686"><b
                              id="thePrice">{{ $product_data->checkDiscount($product_data->price, $product_data->quantity) }}
                              {{ getDefaultCurrencySypml() }}</b>
                          @if ($product_data->price != $product_data->checkDiscount($product_data->price, $product_data->quantity))
                              <del>{{ $product_data->price . ' ' . getDefaultCurrencySypml() }}</del>
                          @endif
                      </span> )
                      <input type="hidden" name="price"
                          value="{{ $product->checkDiscount($product->price, $product->quantity) }}" id="inputPrice">
                  </button>
              </div>

          </div>

      </div>


  </div>
