@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $lang = Session::get('locale');
    $banner = DB::table('banner_content')->where('position', 10)->first();
?>
<main class="">
	<section class="banner">
		<div class="container">
			<div class="banner-wrap">
				<img src="{{ asset('upload/banner/'.$banner->image)}}" alt="">
				<h1 class="medium s30 text-center text-white text-uppercase banner-tit">video</h1>
			</div>
			<ul class="list-unstyled s14 bread">
				<li><a href="{{url('')}}" title="">{{ __('label.home') }}</a></li>
				<li>{{ __('label.video') }}</li>
			</ul>
		</div>
	</section>
	<div class="video">
		<div class="container">
			<div class="video-row">
				<div class="row">
					@foreach($videos as $item)
					<div class="col-sm-6">
						<article class="video-item">
							<figure class="text-center video-img"><a data-fancybox="vid1" data-type="iframe" href="https://www.youtube.com/embed/{{$item->link}}" title=""><img src="https://i.ytimg.com/vi/{!! $item->link !!}/hqdefault.jpg" title="@if($lang =='vi'){{$item->name}} @elseif($lang=='jp') {{ $item->name_en }} @endif" alt=""></a></figure>
							<figcaption class="video-info">
								<h3 class="medium s16 video-info-tit"><a data-fancybox="vid1" data-type="iframe" href="https://www.youtube.com/embed/{{$item->link}}" title="@if($lang =='vi'){{$item->name}} @elseif($lang=='jp') {{ $item->name_en }} @endif">@if($lang =='vi'){{$item->name}} @elseif($lang=='jp') {{ $item->name_en }} @endif</a></h3>
							</figcaption>
						</article>
					</div>
					@endforeach
				</div>
			</div>			
			<div class="list-unstyled text-lg-right text-center f1 pagi">
				{!! $videos->links() !!}
			</div>
		</div>
	</div>
</main>

@endsection