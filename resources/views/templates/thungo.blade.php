@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $lang = Session::get('locale');
    $banner = DB::table('banner_content')->where('position', 5)->first();
?>
	<main class="">
		<section class="banner">
			<div class="container">
				<div class="banner-wrap">
					<img src="{{ asset('upload/banner/'.$banner->image)}}" alt="">
					<h1 class="medium s30 text-center text-white text-uppercase banner-tit">@if($lang == 'vi') {{ $data->name }} @elseif($lang =='jp') {{$data->name_en}} @endif</h1>
				</div>

				<ul class="list-unstyled s14 bread">
					<li><a href="{{ url('') }}" title="">{{ __('label.home') }}</a></li>
					<li><a href="#" title="">{{ __('label.gioithieu') }}</a></li>
					<li>@if($lang == 'vi') {{ $data->name }} @elseif($lang =='jp') {{$data->name_en}} @endif</li>
				</ul>
			</div>
		</section>
		<div class="tt">
			<div class="container">
				<h2 class="t1 bold s24 text-uppercase text-center tt-tit">@if($lang == 'vi') {{ $data->name }} @elseif($lang =='jp') {{$data->name_en}} @endif</h2>
				<div class="content t2 tn-content">
					@if($lang == 'vi') {!! $data->content !!} @elseif($lang =='jp') {!! $data->content_en !!} @endif
				</div>
			</div>
		</div>
	</main>
@endsection