@extends('index')
@section('content')
<?php
$setting = Cache::get('setting');
$about = DB::table('about')->where('com', 'gioi-thieu')->first();
$banner = DB::table('banner_content')->where('position', 8)->first();
?>
<main class="">
	<section class="banner">
		<div class="container">
			<div class="banner-wrap">
				<img src="{{ asset('upload/banner/'.$banner->image)}}" alt="">
				<h1 class="medium s30 text-center text-white text-uppercase banner-tit">FAQ</h1>
			</div>
			<ul class="list-unstyled s14 bread">
				<li><a href="{{url('')}}" title="">{{ __('label.home') }}</a></li>
				<li>{{ __('label.faq') }}</li>
			</ul>
		</div>
	</section>
	<div class="video">
		<div class="container">
			<h2 class="s24 faq-tit">{{ __('label.cauhoithuonggap') }}</h2>
			<div class="accordion" id='faq'>
				@foreach($faq as $k=>$item)
			  	<div class="card">
				    <h3 class="medium card-header @if($k != 0)collapsed @endif" aria-expanded="true" data-toggle="collapse" data-target="#collapse{{$k}}">
				    	@if($lang =='vi')
				        {{$item->name}}
				        @elseif($lang =='jp')
						{{$item->name_en}}
				        @endif
				    </h3>
				    <div id="collapse{{$k}}" class="collapse @if($k == 0) show @endif"  data-parent="#faq">
				      <div class="t4 card-body">
				        @if($lang =='vi')
				        {!!$item->mota!!}
				        @elseif($lang =='jp')
						{!!$item->mota_en!!}
				        @endif
				      </div>
				    </div>
			  	</div>
			  	@endforeach
			</div>
		</div>
	</div>
</main>
@endsection