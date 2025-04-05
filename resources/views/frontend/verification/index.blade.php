@extends('frontend.layouts.master')
@section('content')
    {{-- صفحة المنتجات --}}
    <!-- section start -->
    <style>
        .grid-products {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            grid-gap: 20px;
        }
    </style>
    <section class="section-b-space ratio_asos">
        <div class="collection-wrapper">
            <div class="container">
              <div class="row justify-content-center align-items-center" >
                <div class="col-sm-3">
                  {{-- <form action="{{ route('verify.email.check') }}" method="POST">
                    @csrf
                    <div class="form-group">
                        <label for="verification_code">{{ trans('common.EnterVerificationCode') }}</label>
                        <input type="text" class="form-control" id="verification_code" name="verification_code" placeholder="{{ trans('common.EnterVerificationCode') }}" required>
                    </div>
                      <button type="submit" class="btn btn-solid mb-2 btn-block">{{ trans('common.Verify') }}</button>
                  </form> --}}
                  <div class="card">
                    <div class="card-header">
                        {{ trans('common.VerifyEmail') }}
                    </div>
                    <div class="card-body">
                        <form action="{{ route('verify.email.check') }}" method="POST">
                            @csrf
                            <div class="form-group">
                                <input type="text" class="form-control" id="verification_code" name="verification_code" placeholder="{{ trans('common.EnterVerificationCode') }}" required>
                            </div>
                            <!-- Prefill the email value if it exists in the session -->
                            {{-- @if(session('email')) --}}
                                <input type="hidden" name="email" value="{{ session('email') }}">
                            {{-- @endif --}}
                            <button type="submit" class="btn btn-solid mb-2 btn-block">{{ trans('common.Verify') }}</button>
                        </form>
                    </div>
                </div>

                </div>
              </div>

            </div>
        </div>
    </section>
    <!-- section End -->


@stop
