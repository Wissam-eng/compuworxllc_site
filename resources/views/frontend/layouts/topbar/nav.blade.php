<?php
$header_menu = App\Models\Menu::where('place', 'header')->first();
?>
<nav id="main-nav" class="text-start">
  <div class="toggle-nav m-3">
    <i class="fa fa-bars sidebar-bar text-dark"></i>
  </div>
  <ul id="main-menu" class="sm pixelstrap sm-horizontal">
    <li>
      <div class="mobile-back text-end">
        <img style="margin-inline-end: auto;" height="40" src="{{ getSettingImageLink('logo') }}" alt="">
        <i class="fa-solid fa-xmark ps-2" aria-hidden="true"></i>
      </div>
    </li>
    <li><a href="{{ route('e-commerce.index') }}">{{ trans('common.home') }}</a></li>
    <li><a href="{{ route('e-commerce.brands') }}">{{ trans('common.brands') }}</a></li>
    <li><a href="{{ route('e-commerce.categories') }}">{{ trans('common.categories') }}</a></li>
    <li><a href="{{ route('e-commerce.products') }}">{{ trans('common.products') }}</a></li>
    {{-- <li><a href="{{ route('e-commerce.faqs') }}">{{ trans('common.FAQs') }}</a></li> --}}
    {{-- <li><a href="{{ route('e-commerce.contact') }}">{{ trans('common.contactUs') }}</a></li>
    <li><a href="{{ route('e-commerce.about') }}">{{ trans('common.aboutUs') }}</a></li> --}}
    <li><a href="{{ route('e-commerce.gifts') }}">{{ trans('common.Gifts') }}</a></li>

    @foreach ($header_menu->items as $item)
      @if ($item->mainElement == 0)
        <li>
          @if ($item->subItems()->count() == 0)
          <a href="{{ $item->itemRoute() }}">{{ $item['title_'.$lang] }}</a>
          @else
          <a href="#">{{ $item['title_'.$lang] }}</a>
          <ul>
            @foreach ($item->subItems as $subItem)
            <li>
              <a href="{{ $subItem->itemRoute() }}">{{ $subItem['title_'.$lang] }}</a>
            </li>
            @endforeach
          </ul>
          @endif
        </li>
      @endif
    @endforeach

    @foreach(panelLangMenu()['list'] as $singleLang)
      <li class="d-block d-sm-none">
        <a class="dropdown-item" href="{{url('/SwitchLang/'.$singleLang['lang'])}}" data-language="{{$singleLang['lang']}}">
          <i class="flag-icon flag-icon-{{$singleLang['flag']}}"></i> {{trans('common.'.$singleLang['text'])}}
        </a>
      </li>
    @endforeach

  </ul>
</nav>
