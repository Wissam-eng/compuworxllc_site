<!-- side-bar colleps block stat -->
<div class="collection-filter-block">
    <!-- brand filter start -->
    <div class="collection-mobile-back">
        <span class="filter-back">
            <i class="fa fa-angle-left" aria-hidden="true"></i>
            {{ trans('common.close') }}
        </span>
    </div>
    <form method="GET" action="{{ route('e-commerce.products') }}">
        <div class="collection-collapse-block open">
            <h3 class="collapse-block-title">{{ trans('common.brands') }}</h3>
            <div class="collection-collapse-block-content">
                <div class="collection-brand-filter">
                    @foreach ($companies as $key => $company)
                        <div class="form-check collection-filter-checkbox">
                            <input type="checkbox" class="form-check-input" id="company_{{ $company }}"
                                name="company_id[]" value="{{ $key }}" onchange="this.form.submit()"
                                {{ isset($_GET['company_id']) == $key && in_array($key, $_GET['company_id']) ? 'checked' : '' }}>
                            <label class="form-check-label" for="company_{{ $company }}">
                                {{ $company }}
                            </label>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
        {{-- <div class="collection-collapse-block open">
        <h3 class="collapse-block-title">{{ trans('common.gender') }}</h3>
        <div class="collection-collapse-block-content">
          <div class="collection-brand-filter">
            <div class="form-check collection-filter-radio">
              <input type="radio" class="form-check-input" id="gender_boy" name="gender" value="boy" onchange="this.form.submit()" {{ (isset($_GET['gender']) &&
                    $_GET['gender'] == 'boy') ? 'checked' : '' }}>
              <label class="form-check-label" for="gender_boy">
                ولد
              </label>
            </div>
            <div class="form-check collection-filter-radio">
              <input type="radio" class="form-check-input" id="gender_girl" name="gender" value="girl" onchange="this.form.submit()" {{ (isset($_GET['gender']) &&
                    $_GET['gender'] == 'girl') ? 'checked' : '' }}>
              <label class="form-check-label" for="gender_girl">
                بنت
              </label>
            </div>
            <div class="form-check collection-filter-radio">
              <input type="radio" class="form-check-input" id="gender_both" name="gender" value="both" onchange="this.form.submit()" {{ (isset($_GET['gender']) &&
                    $_GET['gender'] == 'both') ? 'checked' : '' }}>
              <label class="form-check-label" for="gender_both">
                الجميع
              </label>
            </div>
          </div>
        </div>
      </div> --}}
        <div class="collection-collapse-block open">
            <h3 class="collapse-block-title">{{ trans('common.categories') }}</h3>
            <div class="collection-collapse-block-content">
                <div class="collection-brand-filter">

                    @foreach ($categories as $key => $category)
                        <div class="form-check collection-filter-checkbox">
                            <input type="checkbox" class="form-check-input" id="cat_{{ $category }}"
                                name="category_id[]" value="{{ $key }}" onchange="this.form.submit()"
                                {{ isset($_GET['category_id']) == $key && in_array($key, $_GET['category_id']) ? 'checked' : '' }}>
                            <label class="form-check-label" for="cat_{{ $category }}">
                                {{ $category }}
                            </label>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>


        {{-- <!-- color filter start here -->
      <div class="collection-collapse-block open">
        <h3 class="collapse-block-title">colors</h3>
        <div class="collection-collapse-block-content">
          <div class="color-selector">
            <ul>
              <li class="color-1 active"></li>
              <li class="color-2"></li>
              <li class="color-3"></li>
              <li class="color-4"></li>
              <li class="color-5"></li>
              <li class="color-6"></li>
              <li class="color-7"></li>
            </ul>
          </div>
        </div>
      </div>
      <!-- size filter start here -->
      <div class="collection-collapse-block border-0 open">
        <h3 class="collapse-block-title">size</h3>
        <div class="collection-collapse-block-content">
          <div class="collection-brand-filter">
            <div class="form-check collection-filter-checkbox">
              <input type="checkbox" class="form-check-input" id="hundred">
              <label class="form-check-label" for="hundred">s</label>
            </div>
            <div class="form-check collection-filter-checkbox">
              <input type="checkbox" class="form-check-input" id="twohundred">
              <label class="form-check-label" for="twohundred">m</label>
            </div>
            <div class="form-check collection-filter-checkbox">
              <input type="checkbox" class="form-check-input" id="threehundred">
              <label class="form-check-label" for="threehundred">l</label>
            </div>
            <div class="form-check collection-filter-checkbox">
              <input type="checkbox" class="form-check-input" id="fourhundred">
              <label class="form-check-label" for="fourhundred">xl</label>
            </div>
          </div>
        </div>
      </div> --}}

    </form>
    <form method="GET" action="{{ route('e-commerce.products') }}">
        <!-- price filter start here -->
        <div class="collection-collapse-block border-0 open">
            <h3 class="collapse-block-title">{{ trans('common.price') }}</h3>
            <div class="collection-collapse-block-content">
                <div class="wrapper mt-3">
                    <div class="range-slider">
                        <label for="">من</label>
                        <input type="text" name="price_from" class="js-range-slider"
                            value="{{ isset($_GET['price_from']) ? $_GET['price_from'] : '' }}" />
                    </div>
                    <div class="range-slider">
                        <label for="">إلى</label>
                        <input type="text" name="price_to" class="js-range-slider"
                            value="{{ isset($_GET['price_to']) ? $_GET['price_to'] : '' }}" />
                    </div>
                </div>
                <button class="btn-solid btn" type="submit">
                    <i class="fa fa-search" aria-hidden="true"></i>
                </button>
            </div>
        </div>

    </form>

    <form method="GET" action="{{ route('e-commerce.products') }}">
        <!-- Age filter start here -->
        <div class="collection-collapse-block border-0 open">
            <h3 class="collapse-block-title">{{ trans('common.minAge') }}</h3>
            <div class="collection-collapse-block-content">
                <div class="wrapper mt-3">
                    <div class="range-slider">
                        <label for="">من</label>
                        <input type="text" name="minAge_from" class="js-range-slider"
                            value="{{ isset($_GET['minAge_from']) ? $_GET['minAge_from'] : '' }}" />
                    </div>
                    <div class="range-slider">
                        <label for="">إلى</label>
                        <input type="text" name="minAge_to" class="js-range-slider"
                            value="{{ isset($_GET['minAge_to']) ? $_GET['minAge_to'] : '' }}" />
                    </div>
                </div>
                <button class="btn-solid btn" type="submit">
                    <i class="fa fa-search" aria-hidden="true"></i>
                </button>
            </div>
        </div>

    </form>
</div>
<!-- silde-bar colleps block end here -->


@section('scripts')

    <link rel="stylesheet" type="text/css" href="{{ asset('frontend/assets/css/vendors/price-range.css') }}">
@stop
