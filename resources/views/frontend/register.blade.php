@extends('frontend.layouts.master')
@section('content')
  @include('frontend.layouts.topbar.breadcrumbs')
  <!--section start-->
  <section class="register-page section-b-space">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <h3>{{ trans('common.CreateAccountNow') }}</h3>
          <div class="theme-card">
            @if(session()->get('faild') != '')
            <div class="alert alert-danger py-2 text-center">
              {{session()->get('faild')}}
            </div>
            @endif
            <form class="theme-form"method="POST" action="{{ route('register') }}">
              @csrf
              <div class="form-row row">
                <div class="col-md-6 mb-4">
                  <label for="name">{{ trans('common.name') }}</label>
                  <span class="validity text-danger">*</span>
                  <input type="text" class="form-control @error('name') is-invalid @enderror" id="name" name="name" placeholder="{{ trans('common.EnterYourName') }}" value="{{ old('name') }}" required>
                  @error('name')
                    <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                    </span>
                  @enderror
                </div>
                <div class="col-md-6 mb-4">
                  <label for="birthdate">{{ trans('common.birthdate') }}</label>
                  <span class="validity text-danger">*</span>
                  <input type="date" class="form-control @error('birthdate') is-invalid @enderror" id="birthdate" name= "birthdate" value="{{ old('birthdate') }}" required>
                  @error('birthdate')
                    <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                    </span>
                  @enderror
                </div>
              </div>
              <div class="form-row row">
                <div class="col-md-6 mb-4">
                  <label for="email">{{ trans('common.email') }}</label>
                  <span class="validity text-danger">*</span>
                  <input type="email" class="form-control @error('email') is-invalid @enderror" id="email" name="email" placeholder="{{ trans('common.EnterYourEmail') }}" value="{{ old('email') }}">
                  @error('email')
                  <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                  </span>
                  @enderror
                </div>
                <div class="col-md-6 mb-4">
                  <label for="phone">{{ trans('common.phone') }}</label>
                  <span class="validity text-danger">*</span>
                  <input type="text" class="form-control @error('phone') is-invalid @enderror" id="phone" name="phone" placeholder="{{ trans('common.EnterYourAddress') }}" value="{{ old('phone') }}" required>
                  @error('phone')
                  <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                  </span>
                  @enderror
                </div>
                <div class="col-md-6 mb-4">
                  <label for="password">{{ trans('common.password') }}</label>
                  <span class="validity text-danger">*</span>
                  <input type="password" class="form-control @error('password') is-invalid @enderror" id="password" name="password" placeholder="{{ trans('common.EnterYourPassword') }}" required>
                  @error('password')
                  <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                  </span>
                  @enderror
                </div>
                <div class="col-md-6 mb-4">
                  <label for="password_confirmation">{{ trans('common.confirmationYourPassword') }}</label>
                  <span class="validity text-danger">*</span>
                  <input type="password" class="form-control @error('password_confirmation') is-invalid @enderror" id="password_confirmation"
                  name="password_confirmation" placeholder="{{ trans('common.confirmationYourPassword') }}" required>
                  @error('password_confirmation')
                  <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                  </span>
                  @enderror
                </div>
                <input type="submit" class="btn btn-solid w-auto" value="{{ trans('common.createAnAccount') }}">
                أو
                <a href="{{ url('auth/facebook') }}" style="margin-top: 0px !important;background: green;color: #ffffff;padding: 5px;border-radius:7px;" class="ml-2">
                  <strong>Facebook Login</strong>
                </a>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--Section ends-->

  <style>
    .register-page .theme-card .theme-form input {
      margin-bottom: 10px;
    }
  </style>
@stop
