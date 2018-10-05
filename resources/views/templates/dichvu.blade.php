@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $aboutService = DB::table('about')->where('com','dich-vu')->first();
    $lang = Cache::get('lang');
    $biendich = Cache::get('biendich');
    $banner = DB::table('banner_content')->where('position', 5)->first();
?>
<section class="banner">
    <img src="{{ asset('upload/banner/'.$banner->image)}}" alt="" title="">
</section>
<section class="service pd-60">
    <div class="container">
        <h1 class="title-page">@if($lang == 'vi') {{$biendich[8]->name_vi}} @elseif($lang == 'en') {{$biendich[8]->name_en}}  @endif</h1>
        <p class="text-center mgb-20">@if($lang == 'vi') {{ $aboutService->mota }} @elseif($lang == 'en') {{ $aboutService->mota_en }}  @endif</p>
    </div>
    <div class="container-fluid">
        @foreach($tintuc as $k=>$item)
        <div class="service-item">
            <div class="row no-gutters">
                <div class="col-md-6 @if($k%2 != 0)order-2 @endif">
                    <a href="{{ url('dich-vu/'.$item->alias.'.html') }}" title="@if($lang == 'vi') {{ $item->name }} @elseif($lang == 'en') {{ $item->name_en }}  @endif" class="zoom"><img src="{{ asset('upload/news/'.$item->photo)}}" alt="@if($lang == 'vi') {{ $item->name }} @elseif($lang == 'en') {{ $item->name_en }}  @endif" title="@if($lang == 'vi') {{ $item->name }} @elseif($lang == 'en') {{ $item->name_en }}  @endif"> </a>
                </div>
                <div class="col-md-6 @if($k%2 != 0) order-1 @endif flex-center">
                    <div class="service-text">
                        <h4><a href="{{ url('dich-vu/'.$item->alias.'.html') }}" title="@if($lang == 'vi') {{ $item->name }} @elseif($lang == 'en') {{ $item->name_en }}  @endif">@if($lang == 'vi') {{ $item->name }} @elseif($lang == 'en') {{ $item->name_en }}  @endif</a> </h4>
                        <p class="desc">@if($lang == 'vi') {{ $item->mota }} @elseif($lang == 'en') {{ $item->mota_en }}  @endif</p>
                        <a href="{{ url('dich-vu/'.$item->alias.'.html') }}" title="">@if($lang == 'vi') XEM CHI TIẾT  @elseif($lang == 'en') Detail @endif<i class="fa fa-angle-right"></i> </a>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
        
    </div>
</section>

@endsection