<div class="mobile-fix-option"></div>
<div class="top-header">
  <div class="container">
    <div class="row">
      <div class="col-lg-6">
        <div class="header-contact">
          <ul>
            <li>{{ getSettingValue('siteDescription_'.app()->getLocale()) }}</li>
            <li>
              <i class="fa fa-phone" aria-hidden="true"></i>
              {{ trans('common.callUs') . ' : ' .getSettingValue('phone') }}
            </li>
          </ul>
        </div>
      </div>
      <div class="col-lg-6 text-end">
        <ul class="header-dropdown">
          @if(auth()->user())
            <li class="mobile-wishlist">
              <a href="{{ route('e-commerce.wishlist') }}">
                {{ trans('common.My Account') }}
                <i class="fa fa-heart" aria-hidden="true"></i>
              </a>
            </li>
          @endif

          {{-- <li class="mobile-wishlist"><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a> --}}
          </li>
          <li class="onhover-dropdown mobile-account">
            @if (auth()->user())
              <i class="fa fa-user" aria-hidden="true"></i>
              {{-- {{ auth()->user()->userName ?? auth()->user()->name }} --}}
              <ul class="onhover-show-div">
                <li>
                  <a href="{{ route('user.profile') }}">
                    {{ trans('common.profile') }}
                  </a>
                </li>
                <li>
                  <a href="{{ route('logout') }}" onclick="event.preventDefault();
                      document.getElementById('logout-form').submit();">
                    {{trans('common.Logout')}}
                  </a>
                  <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                    @csrf
                  </form>
                </li>
              </ul>
            @else
              <i class="fa fa-user" aria-hidden="true"></i>
              {{-- {{ trans('common.My Account') }} --}}
              <ul class="onhover-show-div">
                <li>
                  <a href="{{ route('user.login') }}">
                    {{ trans('common.login') }}
                  </a>
                </li>
                <li>
                  <a href="{{ route('user.register') }}">
                    {{ trans('common.newRegister') }}
                  </a>
                </li>
              </ul>
            @endif
          </li>
        </ul>

      </div>
    </div>
  </div>
</div>
