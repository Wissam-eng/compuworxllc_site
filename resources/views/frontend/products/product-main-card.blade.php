<div class="col-12 col-sm-6 col-md-4 col-lg-2">
  <div class="product-box">
    <div class="img-wrapper">
      <div class="front">
        <a href="{{ route('product.details',['product'=>$product->id]) }}">
          <img src="{{ $product_data->photoLink() }}"
            class="img-fluid blur-up lazyload bg-img" alt="" style="width: 100%; height: 250px;
            object-fit: cover;
            object-position: center center;">
        </a>
      </div>
      {{-- <div class="cart-info cart-wrap" style="z-index: 999999">
        <form method="POST" action="{{ route('wishlist.add') }}">
          @csrf
          <input type="hidden" name="product_id" value="{{ $product->id }}">
          <button type="submit" title="{{ trans('common.addToWishlist') }}">
            <i class="ti-heart" aria-hidden="true"></i>
          </button>
        </form>
      </div> --}}
      <div class="cart-info cart-wrap" style="z-index: 999999">
        @if (auth()->check())
          <button title="{{ trans('common.addToWishlist') }}"
                  data-product-id="{{ $product_data->id }}" type="button"
                  onclick="addToFav(this)">
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
      <button class="btn add-button addCart" onclick="addToCart(this)" data-product-id="{{ $product->id }}" data-quantity="1" type="button"
        style="z-index: 1000" value="{{ $product->id }}">
        <i class="ti-shopping-cart"></i>
        {{ trans('common.addToCart') }}
        <input type="hidden" name="price"
          value="{{ $product->checkDiscount($product->price, $product->quantity)}}" id="inputPrice">
      </button>
    </div>
    <div class="product-detail">
      <div class="rating">
        {{-- {{ $product->countReviews() }} --}}
        @for($i = 0; $i < $product->countReviews(); $i++)
          <i class="fa fa-star" style="color: gold;"></i>
          @endfor
      </div>
      <a href="{{ route('product.details',['product'=>$product->id]) }}">
        <h6>{{ $product['name_'.$lang] }}</h6>
      </a>
      <h4>
        <b id="thePrice">{{ $product_data->checkDiscount($product_data->price, $product_data->quantity)}} {{getDefaultCurrencySypml()}}</b>
        @if($product_data->price != $product_data->checkDiscount($product_data->price, $product_data->quantity))
          <del>{{ $product_data->price.' '.getDefaultCurrencySypml() }}</del>
        @endif
      </h4>
    </div>
  </div>
</div>
