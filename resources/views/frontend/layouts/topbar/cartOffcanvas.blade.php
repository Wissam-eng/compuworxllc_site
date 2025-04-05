<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasCart" aria-labelledby="offcanvasCartLabel">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasCartLabel">{{ trans('common.cart') }}</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <div>
            <ul class="show-div shopping-cart shopping-cart-items headerShoppingCart" id="cartItemsUL">
                @if (count(getCart()['items']) > 0)
                    @foreach (getCart()['items'] as $item)
                        <?php $product = App\Models\Product::find($item['product_id']); ?>
                        <li class="deleteDiv{{ $item['id'] }} headerCartItem" id="{{ $item['id'] }}">
                            <div class="media">
                                <a href="{{ route('product.details', ['product' => $item['product_id']]) }}">
                                    <img alt="" class="me-3" style="max-width: 80px"
                                        src="{{ asset($product->photoLink()) }}">
                                </a>
                            </div>
                            <div class="media-body">
                                <a href="{{ route('product.details', ['product' => $item['product_id']]) }}"
                                    style="text-decoration: unset">
                                    <h6 class="cartItemName">{{ $product['name_' . $lang] }}</h6>
                                </a>
                                <h6>
                                    <span>
                                        {{ $item['total'] . getDefaultCurrencySypml() }} {{ ' * ' . $item['quantity'] }}
                                    </span>
                                </h6>
                                @if ($item['optionsTotal'] > 0)
                                    <small class="mt-1">+ {{ $item['optionsTotal'] }} اختيارات إضافية</small>
                                @endif
                                @if ($product->taxTotal() > 0)
                                    <small class="mt-1 d-block">+ {{ $product->taxTotal() }} ضريبة المنتج</small>
                                @endif
                            </div>
                            <div class="close-circle">
                                <button type="button" onclick="deleteFromCart('{{ $item['id'] }}')"
                                    class="btn btn-sm btn-danger">
                                    <i class="fa fa-times" aria-hidden="true">
                                    </i>
                                </button>
                            </div>
                        </li>
                    @endforeach
                @else
                    <h6 style="text-align: center">{{ trans('common.nothingToView') }}</h6>
                @endif

            </ul>
        </div>
        <div class="total" style="display: flex;justify-content: space-between;margin-bottom: 15px;" id="cartTotalIdOfDiv">
            <h5>{{ trans('common.total') }}</h5>
            <h5><span class="cartTotal">
                    <div class="CartTotalAmount" style="display: inline">{{ getCart()['total'] }}</div>
                    {{ getDefaultCurrencySypml() }}
                </span>
            </h5>
        </div>
        <div class="buttons">
            <a href="{{ route('e-commerce.cart') }}" class="btn view-cart">
                {{ trans('common.viewCart') }}
            </a>
            <a href="{{ route('e-commerce.checkout') }}" class=" btn checkout">
                {{ trans('common.checkOut') }}
            </a>
        </div>
    </div>
</div>
