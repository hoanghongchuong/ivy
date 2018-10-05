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
				<h1 class="medium s30 text-center text-white text-uppercase banner-tit">{{ __('label.themanh') }}</h1>
			</div>
			<ul class="list-unstyled s14 bread">
				<li><a href="{{url('')}}" title="">{{ __('label.home') }}</a></li>
				<li><a href="#" title="">{{ __('label.gioithieu') }}</a></li>
				<li>{{ __('label.themanh') }}</li>
			</ul>
		</div>
	</section>
	<div class="tm">
		<div class="container">
			@foreach($data as $item)
			<div class="b2 tm-item">
				<div class="row no-gutters">
					<div class="col-sm-6">
						<div class="text-center tm-item-img">
							<img src="{{asset('upload/hinhanh/'.$item->photo)}}" title="" alt="">
						</div>
					</div>
					<div class="col-sm-6 d-flex align-items-center ">
						<div class="content tm-item-content">
							<h2 class="t1 s24 pb-4 tm-tit">@if($lang == 'vi'){{$item->name}} @elseif($lang =='jp') {{ $item->name_en }} @endif</h2>
							<p>@if($lang == 'vi'){{$item->name}} {!! $item->content !!} @elseif($lang =='jp') {!! $item->content_en !!}  @endif</p>
						</div>
					</div>
				</div>
			</div>
			@endforeach			
		</div>
	</div>
</main>
@endsection