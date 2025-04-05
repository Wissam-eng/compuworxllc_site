<section class="p-0">
  <div class="slide-1 home-slider">
    @for($i = 1; $i <= 4; $i++)
      @if(getSettingValue('homeSliderImage' . $i) !='' )
        <div class="home text-center">
          <img src="{{ getSettingImageLink('homeSliderImage' . $i) }}" alt class="bg-img blur-up lazyload">
          <div class="container">
            <div class="row">
              <div class="col">
                <div class="slider-contain">
                  <div>
                    <h4>{{ getSettingValue('homeSliderTitle' . $i . '_'.app()->getLocale()) }}</h4>
                    <h1> {{ getSettingValue('homeSliderTitle' . $i . '_'.app()->getLocale()) }}</h1>
                    <a href="{{ getSettingValue('buttonLink' . $i) }}" class="btn btn-solid">
                      {{ getSettingValue('homeSliderButtonTitle' . $i . '_'.app()->getLocale()) }}
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      @endif
    @endfor
  </div>
</section>

<section class="banner-padding pb-0 ratio2_1 pt-0">
  <div class="container absolute-bg">
    <div class="row justify-content-center partition2">
      @for($i = 1; $i <= 4; $i++)
        @if(getSettingValue('advertisementCode_'.$lang.$i) !='' )
          <div class="col-md-3">
            {!! getSettingValue('advertisementCode_'.$lang.$i) !!}
          </div>
        @else
          @if (getSettingValue('advertisementLink'.$i) != '')
            <div class="col-md-3">
              <a href="{{ getSettingValue('advertisementLink'.$i) }}">
                <div class="collection-banner  text-end">
                  <div class="img-part ldr-bg">
                    <img src="{{ getSettingImageLink('advertisementImage' . $i) }}" class="img-fluid blur-up lazyload bg-img">
                  </div>
                </div>
              </a>
            </div>
          @endif
        @endif
      @endfor
    </div>
  </div>
</section>



<style>
  @media (min-width: 768px) {
    .home-slider .home, .center-slider .home {
      height: 475px;
    }
  }
</style>
