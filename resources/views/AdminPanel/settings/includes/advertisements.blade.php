<div class="row">
  <div class="divider">
    <div class="divider-text">
      <b>{{trans('common.topBanner')}}</b>
    </div>
  </div>
  @for ($i = 1; $i <= 4; $i++)
  <h2 class="text-bold mt-2">{{trans('common.advertisement'). ' #' . $i}}</h2>
  <div class="col-12 col-md-12">
    <label class="form-label" for="advertisementLink{{ $i }}">{{trans('common.advertisementLink')}}</label>
    {{Form::text('advertisementLink'.$i,getSettingValue('advertisementLink'.$i),['id'=>'advertisementLink'.$i,'class'=>'form-control'])}}
  </div>
  <div class="col-12 col-md-12">
    <label class="form-label" for="advertisementImage{{ $i }}">{{trans('common.image')}}</label>
    {!! getSettingImageValue("advertisementImage$i ") !!}
    <div class="file-loading">
      <input class="files" name="advertisementImage{{ $i }}" type="file" id="advertisementImage{{ $i }}">
    </div>
  </div>
  <div class="col-12 col-md-12">
    <label class="form-label" for="advertisementCode_ar">{{ trans('common.advertisementCode_ar') }}</label>
    {{Form::textarea('advertisementCode_ar'. $i ,getSettingValue('advertisementCode_ar'. $i),['id'=>'advertisementCode_ar','class'=>'form-control
    editor_ar','rows'=>3])}}
  </div>
  <div class="col-12 col-md-12">
    <label class="form-label" for="advertisementCode_en">{{ trans('common.advertisementCode_en') }}</label>
    {{Form::textarea('advertisementCode_en'.$i,getSettingValue('advertisementCode_en'.$i),['id'=>'advertisementCode_en','class'=>'form-control
    editor_en','rows'=>3])}}
  </div>
  @endfor

  <div class="divider">
    <div class="divider-text">
      <b>بانر صفحة الهدايا</b>
    </div>
  </div>
  <div class="col-12 col-md-12">
    <label class="form-label" for="giftsBannerImg">{{trans('common.image')}}</label>
    {!! getSettingImageValue("giftsBannerImg") !!}
    <div class="file-loading">
      <input class="files" name="giftsBannerImg" type="file" id="giftsBannerImg">
    </div>
  </div>
  <div class="col-12 col-md-12">
    <label class="form-label" for="giftsBannerHeader_ar">عنوان على الصورة بالعربية</label>
    {{Form::text('giftsBannerHeader_ar' ,getSettingValue('giftsBannerHeader_ar'),['id'=>'giftsBannerHeader_ar','class'=>'form-control','rows'=>3])}}
  </div>
  <div class="col-12 col-md-12">
    <label class="form-label" for="giftsBannerHeader_en">عنوان على الصورة بالإنجليزية</label>
    {{Form::text('giftsBannerHeader_en',getSettingValue('giftsBannerHeader_en'),['id'=>'giftsBannerHeader_en','class'=>'form-control','rows'=>3])}}
  </div>
  <div class="col-12 col-md-12">
    <label class="form-label" for="giftsBannerText_ar">عنوان على الصورة بالعربية</label>
    {{Form::text('giftsBannerText_ar' ,getSettingValue('giftsBannerText_ar'),['id'=>'giftsBannerText_ar','class'=>'form-control','rows'=>3])}}
  </div>
  <div class="col-12 col-md-12">
    <label class="form-label" for="giftsBannerText_en">عنوان على الصورة بالإنجليزية</label>
    {{Form::text('giftsBannerText_en',getSettingValue('giftsBannerText_en'),['id'=>'giftsBannerText_en','class'=>'form-control','rows'=>3])}}
  </div>
  <div class="divider">
    <div class="divider-text">
      <b>{{trans('common.middleBanner')}} </b>
    </div>
  </div>
  <div class="col-12 col-md-12">
    <label class="form-label" for="middleBannerImage">{{trans('common.image')}}</label>
    {!! getSettingImageValue("middleBannerImage") !!}
    <div class="file-loading">
      <input class="files" name="middleBannerImage" type="file" id="middleBannerImage">
    </div>
  </div>
  <div class="divider">
    <div class="divider-text">
      <b>بانر أسفل المنتجات الخاصة</b>
    </div>
  </div>
  <div class="col-12 col-md-12">
    <label class="form-label" for="lastBannerImage">{{trans('common.image')}}</label>
    {!! getSettingImageValue("lastBannerImage") !!}
    <div class="file-loading">
      <input class="files" name="lastBannerImage" type="file" id="lastBannerImage">
    </div>
  </div>
  <div class="divider">
    <div class="divider-text">
      <b>{{trans('common.popupModal')}} </b>
    </div>
  </div>
  <div class="col-12 col-md-12">
    <label class="form-label" for="popupModal">{{trans('common.image')}}</label>
    {!! getSettingImageValue("popupModal") !!}
    <div class="file-loading">
      <input class="files" name="popupModal" type="file" id="popupModal">
    </div>
  </div>



  <div class="divider">
    <div class="divider-text">
      <b>سلايدر التطبيقات</b>
    </div>
  </div>
  @for ($i = 1; $i <= 4; $i++)
    <div class="col-12 col-md-12">
      <label class="form-label" for="appAdvertisementImage{{ $i }}">{{trans('common.image'). ' #' . $i}}</label>
      {!! getSettingImageValue("appAdvertisementImage$i ") !!}
      <div class="file-loading">
        <input class="files" name="appAdvertisementImage{{ $i }}" type="file" id="appAdvertisementImage{{ $i }}">
      </div>
    </div>
  @endfor
  <div class="divider">
    <div class="divider-text">
      <b>البانر الإعلاني في التطبيقات </b>
    </div>
  </div>
  <div class="col-12 col-md-12">
    <label class="form-label" for="appHomeBanner">{{trans('common.image')}}</label>
    {!! getSettingImageValue("appHomeBanner") !!}
    <div class="file-loading">
      <input class="files" name="appHomeBanner" type="file" id="appHomeBanner">
    </div>
  </div>


</div>
