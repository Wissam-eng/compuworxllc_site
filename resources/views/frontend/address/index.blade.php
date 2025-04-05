@extends('frontend.layouts.master')
@section('content')
    <!-- breadcrumb start -->
    @include('frontend.layouts.topbar.breadcrumbs')

    <section class="section-b-space">
        <div class="container">
            <div class="checkout-page">
                <div class="checkout-form">
                    <form method="post" action="{{ route('checkout.storeAddress') }}">
                        @csrf
                        <div class="row">
                            <div class="col-lg-12 col-sm-12 col-xs-12">
                                <div class="checkout-title">
                                    <h3>{{ trans('common.BillingDetails') }}</h3>
                                </div>
                                @if ($errors->any())
                                    <div class="alert alert-danger">
                                        <ul>
                                            @foreach ($errors->all() as $error)
                                                <li>{{ $error }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                @endif
                                <div class="row check-out">
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <label class="field-label" for="first_name">{{ trans('common.firstName') }}</label>
                                        <span class="validity text-danger">*</span>    
                                        {!! Form::text('first_name', auth()->user()->name , [
                                            'id' => 'first_name',
                                            'required',
                                        ]) !!}
                                        @error('first_name')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <label class="field-label" for="last_name">{{ trans('common.lastName') }}</label>
                                        <span class="validity text-danger">*</span>
                                        {!! Form::text('last_name', $order->address != '' ? $order->address->last_name : '', [
                                            'id' => 'last_name',
                                            'required',
                                        ]) !!}
                                        @error('last_name')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <label class="field-label" for="phone">{{ trans('common.phone') }}</label>
                                        <span class="validity text-danger">*</span>
                                        <div class="input-group mb-2">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text">+966</div>
                                            </div>
                                            <input type="text" class="form-control m-0 w-auto @error('phone') is-invalid @enderror"
                                                name="phone" id="phone"
                                                placeholder="{{ trans('common.EnterYourPhone') }}" value="{{ auth()->user()->phone }}"
                                                required>
                                                @error('phone')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    
                                        @error('phone')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <label class="field-label" for="email">{{ trans('common.email') }}</label>
                                        <span class="validity text-danger">*</span>
                                        {!! Form::email('email', auth()->user()->email, ['id' => 'email', 'required', 'readonly' => 'readonly']) !!}
                                        @error('email')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <label class="field-label" for="country">{{ trans('common.country') }}</label>
                                        <span class="validity text-danger">*</span>
                                        @php
                                            $countries = ['' => 'اختر بلدك'] + $countries;
                                        @endphp

                                        <select name="country"disabled>
                                            @foreach ($countries as $code => $name)
                                                <option value="{{ $code }}" selected>{{ $name }}</option>
                                            @endforeach
                                        </select>
                                        @error('country')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <label class="field-label" for="region">{{ trans('common.region') }}</label>
                                        <span class="validity text-danger">*</span>

                                        <select id="region" name="region">
                                            <option value="" readonly>------------</option>

                                            @foreach ($regions as $region)
                                                <option value="{{ $region['region_id'] }}">
                                                    @if (app()->getLocale() == 'ar')
                                                        {{ $region['region_name_ar'] }}
                                                    @else
                                                        {{ $region['region_name'] }}
                                                    @endif
                                                </option>
                                            @endforeach
                                        </select>
                                        @error('region')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <label class="field-label" for="city">{{ trans('common.city') }}</label>
                                        <span class="validity text-danger">*</span>

                                        <select id="city" name="city" disabled>
                                            <option value="" readonly>------------</option>


                                        </select>
                                        @error('city')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>


                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <label class="field-label" for="address">{{ trans('common.address') }}</label>
                                        <span class="validity text-danger">*</span>
                                        {!! Form::text('address', $order->address != '' ? $order->address->address : '', [
                                            'id' => 'address',
                                            'required',
                                        ]) !!}
                                        @error('address')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                        <label class="field-label"
                                            for="postalCode">{{ trans('common.postalCode') }}</label>
                                        <span class="validity text-danger">*</span>

                                        {!! Form::number('postalCode', $order->address != '' ? $order->address->postalCode : '', [
                                            'id' => 'postalCode',
                                            'required',
                                            'style' => 'margin-top:1.5%',
                                        ]) !!}
                                        @error('postalCode')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>

                                </div>
                            </div>
                            <div class="text-end">
                                <button class="btn-solid btn" type="submit">
                                    {{ trans('common.PayOut') }}
                                </button>
                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
@stop
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
{{-- <script>
  $(document).ready(function () {
    $('#region').change(function () {
        var baseUrl = window.location.origin;
        var url = baseUrl + '/api/shipping';
        var regionId = $(this).val();

        if (regionId) {
            $.ajax({
                url: url + '/get-all/cities/' + regionId,
                type: 'GET',
                headers: {
                  'lang': '{{ $lang }}',
                },
                success: function (response) {
                    console.log(response);
                    $('#city').empty().prop('disabled', false);
                    $.each(response.data, function (key, value) {
                        $('#city').append('<option value="' + value.city_id + '">' + value.city_name + '</option>');
                    });
                },
                error: function (xhr, status, error) {
                    console.error(xhr.responseText);
                }
            });
        } else {
            $('#city').prop('disabled', true).empty();
        }
    });
});

</script> --}}

<script>
 $(document).ready(function() {
      $('#region').change(function() {
          var selectedOption = $(this).val();

          var baseUrl = window.location.origin;
          console.log(baseUrl);
          if (selectedOption !== '') {
              $.ajax({
                  url: baseUrl + '/api/shipping/getCities',
                  type: 'POST',
                  headers: {
                      'lang': '{{ $lang }}',
                      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                  },
                  data: {
                      region: selectedOption,
                      apiURL: "{{ $torodAPI }}",
                      token: "{{ $torodAPIToken }}"

                  },
                  success: function(response) {
                      console.log(response);

                      var options = '';
                      $.each(response, function(index, item) {
                          options += '<option value="' + item.cities_id + '">' +
                              @if (app()->getLocale() == 'ar')
                                  item.city_name_ar
                              @else
                                  item.city_name
                              @endif +
                              '</option>';
                      });
                      $('#city').html(options).prop('disabled', false);
                  },
                  error: function(xhr, status, error) {
                      console.error(error);
                  }
              });
          } else {
              $('#city').prop('disabled', true).html('<option value="">------------</option>');
          }
      });
  });
</script>

