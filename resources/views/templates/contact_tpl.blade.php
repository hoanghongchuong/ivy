@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = DB::table('about')->where('com', 'lien-he')->first();
   
?>
<main class="">
    <section class="banner">
        <div class="container">
            <div class="banner-wrap">
                <img src="{{ asset('public/images/5.jpg')}}" alt="">
                <h1 class="medium s30 text-center text-white text-uppercase banner-tit">{{ __('label.lienhe') }}</h1>
            </div>

            <ul class="list-unstyled s14 bread">
                <li><a href="{{url('')}}" title="">{{ __('label.home') }}</a></li>
                <li>{{ __('label.lienhe') }}</li>
            </ul>
        </div>
    </section>
    <div class="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <h2 class="t1 medium s26 text-uppercase contact-tit">{{$setting->company}}</h2>
                    <h3 class="t1 medium s16 pt-4 pb-2">{{ __('label.diachi') }}</h3>
                    <p>{{ __('label.diachi') }}: {{$setting->address}}</p>
                    <h3 class="t1 medium s16 pt-4 pb-2">{{ __('label.phone') }}</h3>
                    <p><a href="tel:{{$setting->phone}}" title="">{{$setting->phone}}</a></p>
                    <h3 class="t1 medium s16 pt-4 pb-2">{{ __('label.email') }}</h3>
                    <p><a href="mailto:{{$setting->email}}" title="">{{$setting->email}}</a></p>
                </div>
                <div class="col-lg-5 offset-lg-1 col-md-6 col-sm-6">
                    <h2 class="medium s18 text-uppercase text-center pb-5 contact-frm-tit">{{ __('label.send_contact') }}</h2>
                    <form action="{{ route('postContact') }}" method="post" class="contact-frm">
                        {{csrf_field()}}
                        <input class="form-control" type="text" name="name" placeholder="{{ __('label.hoten') }}" required="required">
                        <input class="form-control" type="email" name="email" placeholder="{{ __('label.email') }}" required="required">
                        <input class="form-control" type="text" name="phone" required="required" placeholder="{{ __('label.phone') }}">
                        <textarea class="form-control" rows="5" required="required" name="content" placeholder="{{ __('label.content') }}"></textarea>
                        <div class="text-center"><button type="submit" class="btn">{{ __('label.send') }}</button></div>
                    </form>
                </div>
                <div class="col-12">
                    <div class="maps">
                        {!! $setting->iframemap !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
@endsection
