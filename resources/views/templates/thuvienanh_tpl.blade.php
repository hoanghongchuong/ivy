@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = DB::table('about')->where('com', 'lien-he')->first();
   	$banner = DB::table('banner_content')->where('position', 10)->first();
?>
<main class="">
	<section class="banner">
		<div class="container">
			<div class="banner-wrap">
				<img src="{{ asset('upload/banner/'.$banner->image)}}" alt="">
				<h1 class="medium s30 text-center text-white text-uppercase banner-tit">{{ __('label.anh') }}</h1>
			</div>
			<ul class="list-unstyled s14 bread">
				<li><a href="{{url('')}}" title="">{{ __('label.home') }}</a></li>
				<li>{{ __('label.anh') }}</li>
			</ul>
		</div>
	</section>
	<div class="gal">
		<div class="container">
			<div class="pic">
				<div class="blog-size"></div>	
				@foreach($data as $item)
				<article class="pic-item">
					<figure class="text-center pic-item-img">
						<a href="{{asset('upload/hinhanh/'.$item->photo)}}" data-fancybox="pic1" data-caption="{{$item->name}}" class=""><img src="{{asset('upload/hinhanh/'.$item->photo)}}" alt=""></a>
					</figure>
					<figcaption class="pic-item-info">
						<h2 class="s18 text-white">{{$item->name}}</h2>
					</figcaption>
				</article>
				@endforeach
			</div>
			<div class="list-unstyled f1 pagi">{!! $data->links() !!}</div>
			<!-- <ul class="list-unstyled f1 pagi">
				<li class="active"><a href="#" title="">1</a></li>
				<li><a href="#" title="">2</a></li>
			</ul> -->
		</div>
	</div>
</main>

@endsection