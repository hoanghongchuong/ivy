@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = DB::table('about')->where('com', 'lien-he')->first();
    $lang = Session::get('locale');
?>

<main class="main-japan">
	<section class="banner">
		<div class="container">
			<div class="banner-wrap">
				<img src="{{ asset('public/images/5.jpg')}}" alt="">
				<h1 class="medium s30 text-center text-white text-uppercase banner-tit">外国人技能実</br>習制度とは</h1>
			</div>
			<ul class="list-unstyled s14 bread">
				<li><a href="{{url('')}}" title="">{{ __('label.home')}}</a></li>
				<li>@if($lang =='vi'){{ $tintuc_cate->name }} @elseif($lang =='jp') {{ $tintuc_cate->name_en }}  @endif</li>
			</ul>
		</div>
	</section>
	<section class="cdtt">
		<div class="container">
			<ul class="nav nav-pills mb-3 cdtt-tab" id="pills-tab" role="tablist">
			  @foreach($data as $k=>$item)
			  <li class="nav-item">
			    <a class="nav-link @if($k == 0)active @endif" data-toggle="pill" href="#tab{{$k}}" role="tab">@if($lang =='vi'){{ $item->name }} @elseif($lang =='jp') {{ $item->name_en }}  @endif</a>
			  </li>
			  @endforeach
			  <!-- <li class="nav-item">
			    <a class="nav-link" data-toggle="pill" href="#tab2" role="tab">ベトナム人の生活の特徴</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="pill" href="#tab3" role="tab">ベトナム人の生活の特徴</a>
			  </li> -->
			</ul>
			<div class="tab-content cdtt-tabs">
				@foreach($data as $k=>$item)
				<div id="tab{{$k}}" class="tab-pane fade @if($k == 0) show active @endif" role="tabpanel">
				  	<div class="d-flex align-items-center justify-content-between flex-wrap cdtt-tab-header">
				  		<h2 class="s24 t1 cdtt-tit">@if($lang =='vi'){{ $item->name }} @elseif($lang =='jp') {{ $item->name_en }}  @endif</h2>
				  		<!-- <img src="images/likej.png" title="" alt=""> -->
				  	</div>
				  	<div class="s18 cdtt-tab-content">
						@if($lang =='vi') {!! $item->content !!} @elseif($lang =='jp') {!! $item->content_en !!} @endif
					</div>
				</div>
			  	@endforeach
			</div>
		</div>
	</section>
</main>
@endsection