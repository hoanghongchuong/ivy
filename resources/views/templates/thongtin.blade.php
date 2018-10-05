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
				<h1 class="medium s30 text-center text-white text-uppercase banner-tit">{{ __('label.about_company') }}</h1>
			</div>

			<ul class="list-unstyled s14 bread">
				<li><a href="{{url('')}}" title="">{{ __('label.home') }}</a></li>
				<li><a href="#" title="">{{ __('label.gioithieu') }}</a></li>
				<li>{{ __('label.about_company') }}</li>
			</ul>
		</div>
	</section>
	<div class="tt">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-10">
					<h2 class="t1 bold s24 text-uppercase text-center tt-tit">{{ __('label.about_company') }}</h2>
					@if(count($data) > 0)
					<div class="t2 tt-wrap">
						@foreach($data as $item)
						<div class="tt-item">
							<div class="row">
								<div class="col-lg-3 col-md-4 col-sm-4">
									<h3 class="t1 medium tt-item-tit">@if($lang =='vi'){{$item->name}} @elseif($lang =='jp') {{ $item->name_en }} @endif</h3>
								</div>
								<div class="col-lg-9 col-md-8 col-sm-8">
									@if($lang =='vi'){{$item->name}} {!! $item->content !!} @elseif($lang =='jp') {!! $item->content !!} @endif
								</div>
							</div>
						</div>
						@endforeach
					</div>
					@endif
				</div>
			</div>
			
		</div>
	</div>
</main>
@endsection