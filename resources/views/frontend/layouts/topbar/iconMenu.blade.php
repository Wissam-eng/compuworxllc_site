

        <li class="user-dropdown onhover-dropdown mobile-account color-brown" style="font-size: 22px" >
          <a href="{{ route('user.profile') }}"><i class="fa fa-user" aria-hidden="true"></i></a>
          @if (auth()->user())
          <ul class="user-dropdown-content">
            <li class="onhover-dropdown mobile-account color-brown li-login-logout" style="font-size: 15px">
              @if (auth()->user())
                <a href="{{ route('user.profile') }}"><i class="fa fa-user" aria-hidden="true"></i> Profile</a>
              @else
                <a href="{{ route('user.login') }}"><i class="fa fa-user" aria-hidden="true"></i> Login</a>
              @endif
            </li>

            <li class="onhover-dropdown mobile-account color-brown li-login-logout" style="font-size: 15px">
                {{-- <a  href="{{ route('logout') }}"> <i class="fa fa-sign-out" aria-hidden="true"></i> Log Out</a> --}}
                <a class="dropdown-item"
                href="{{ route('logout') }}"
                onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                <i class="me-50" data-feather="power"></i> {{trans('common.Logout')}}
            </a>
            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                @csrf
            </form>
            </li>

          </ul>
          @endif
        </li>

        @if (auth()->user())
            <li class="mobile-wishlist  color-brown " style="font-size: 22px">
                <a href="{{ route('e-commerce.wishlist') }}" style="color:unset">

                    <i class="fa fa-heart" aria-hidden="true"></i>
                </a>
            </li>
        @endif

        </li>

        {{-- <li class="onhover-dropdown mobile-account color-brown" style="font-size: 22px">
            @if (auth()->user())
                <a href="{{ route('user.profile') }}"><i class="fa fa-user" aria-hidden="true"></i></a>
            @else
                <a href="{{ route('user.login') }}"> <i class="fa fa-user" aria-hidden="true"></i></a>
            @endif
        </li> --}}
        {{-- <li class="onhover-dropdown mobile-account color-brown" style="font-size: 22px">

          <a href="">
            <i class="fa fa-sign-out" aria-hidden="true"></i>
          </a>
        </li> --}}





