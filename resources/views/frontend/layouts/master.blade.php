<!DOCTYPE html>
<html class="loading semi-dark-layout" lang="{{ app()->getLocale() }}" data-layout="semi-dark-layout" data-textdirection="ltr">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
  <meta name="description" content=".">
  <meta name="keywords" content=".">
  <meta name="author" content="TechnoMasr Co.">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <title>{{ $title ?? trans('common.e-commerce') }}</title>
  <link rel="apple-touch-icon" href="{{getSettingImageLink('logo')}}">
  <link rel="shortcut icon" type="image/x-icon" href="{{getSettingImageLink('logo')}}">
  <!--Google font-->
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Yellowtail&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Cormorant:wght@400;500;600;700&display=swap" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Recursive:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">

  <!-- Icons -->
  <link rel="stylesheet" type="text/css" href="{{ asset('frontend/assets/css/vendors/font-awesome.css') }}">

  <!--Slick slider css-->
  <link rel="stylesheet" type="text/css" href="{{ asset('frontend/assets/css/vendors/slick.css') }}">
  <link rel="stylesheet" type="text/css" href="{{ asset('frontend/assets/css/vendors/slick-theme.css') }}">

  <!-- Animate icon -->
  <link rel="stylesheet" type="text/css" href="{{ asset('frontend/assets/css/vendors/animate.css') }}">

  <!-- Themify icon -->
  <link rel="stylesheet" type="text/css" href="{{ asset('frontend/assets/css/vendors/themify-icons.css') }}">

  <!-- Bootstrap css -->
  <link rel="stylesheet" type="text/css" href="{{ asset('frontend/assets/css/vendors/bootstrap.css') }}">

  <!-- Theme css -->
  <link rel="stylesheet" type="text/css" href="{{ asset('frontend/assets/css/style.css') }}">

  <link rel="stylesheet" type="text/css" href="{{asset('AdminAssets/app-assets/fonts/flag-icon-css/css/flag-icon.css')}}">
  <style>
    @media (max-width: 767px) {
      .whatsappIcon {
        bottom: 100px;
      }
    }
     .whatsappIcon {
      background-color: #25d366 !important;
    }
  </style>
  @if(app()->getLocale() == 'ar')
    <link rel="stylesheet" type="text/css" href="{{ asset('frontend/assets/css/style-ar.css') }}">
  @endif
  @yield('new_style')
</head>
<?php $lang = app()->getLocale(); ?>
<body class="theme-color-10 {{ ($lang == 'ar') ? 'rtl' : '' }}">
  <!-- loader start -->
  <div class="loader_skeleton">
    @include('frontend.layouts.topbar.header')
    <!-- home section -->
    @yield('content')
    <!-- home section -->
    @include('frontend.layouts.footer.footer')

