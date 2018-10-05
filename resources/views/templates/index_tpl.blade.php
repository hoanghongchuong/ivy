@extends('index')
@section('content')

<?php
$setting = Cache::get('setting');
$lang = Session::get('locale');
$cateProducts = Cache::get('cateProducts');
$sliders = DB::table('slider')->where('com','gioi-thieu')->where('status',1)->get();
?>
<style>
	.td {
		background-color: #f3f4f5;background-image: url(./images/circle.png);background-size: 32%;background-repeat: no-repeat;background-position: center;background-attachment: fixed;
	}
	.qt {
		background: url(./images/circlered.png);background-size: 32%;background-repeat: no-repeat;background-position: center;background-attachment: fixed;
	}
	@media(max-width: 767px) {
		.td, .qt {
			background-size: 80%;
		}
	}
	.vqt .qt-item {
		max-width: 100%;
		width: 100%;
		margin-bottom: 15px;
	}
	.vqt .qt-items, .vqt .qt-item {
	    height: auto;
	}
	.vqt .qt-items {
		display: block;
	}
	.vqt .qt-item-tit {
		position: relative;
	}
	.vqt .qt-item-tit:after {
	    content: "\f30b";
	    display: inline-block;
	    font-family: "Font Awesome 5 Free";
	    font-weight: 700;
	    position: absolute;
	    top: 50%;
	    right: -18px;
	    transform: translate(0, -50%);
	}
	.qt-swrap {margin-bottom: 30px;}
	.qt-items:after {
		border-width: 1px 0 1px 1px;
		width: 24px;
		height: 100%;
	}
	.qt-swrap {position: relative;
	}
	.vqt .qt-item:before {
		content: "\f0d7";
		top: 100%;
		right: 50%;
	}
	.vqt .qt-items:before, .vqt .qt-swrap:last-child .qt-item:last-child:before {
		display: none;
	}
	.qt-swrap:first-child .qt-items .qt-item:first-child,
	.qt-swrap:first-child .qt-items .qt-item:nth-child(3), 
	.qt-swrap:last-child .qt-items .qt-item:first-child, 
	.qt-swrap:last-child .qt-items .qt-item:last-child {
		background: rgba(194, 10, 1, .77);
	    opacity: .77;
	    color: #fff;
	    border-color: transparent;
	}
	@media (max-width: 767px) {
		.vqt .s16 .qt-item {
		    font-size: 14px;
		    padding: 10px;
		}
		.vqt .qt-wrap > .row > div[class*='col']:not(:last-child) .qt-item-tit:after {
			content: "\f309";
			transform: none;
		}
		.vqt .qt-item-tit {
			padding: 5px;
			height: auto;
		}
	}
</style>
<main class="">
	<section class="slider">
		<div class="container">
			<div class="slider-wrap">
				<div id="slider">
					@foreach($sliders as $k=>$slider)
					<a href="#" title=""><img class="slider-img" src="{{asset('upload/hinhanh/'.$slider->photo)}}" alt="slider-img" title="#caption{{$k}}" /></a>
					@endforeach
				</div>
			</div>	
		</div>
	</section>
	<!-- Tại sao chọn chúng tôi -->
	<section class="why">
		<div class="container">
			<h2 class="s30 t1 text-center why-tit wow fadeInUp" data-wow-offset="150">
				@if($lang =='vi')
				{{$loiich->name}}
				@elseif($lang =='jp')
				{{$loiich->name_en}}
				@endif
			</h2>
			<div class="w-lg-80 t2 s16 text-center m-auto why-sum wow fadeInUp" data-wow-offset="150">
				<h3 class="">@if($lang =='vi') {!! $loiich->content !!} @elseif($lang =='jp') {!!$loiich->content_en!!} @endif</h3>
			</div>
			<div class="why-wrap" style="background:url({{ asset('public/images/map.png')  }}) no-repeat center center; background-size: contain;">
				<div class="row">
					@foreach($post_loiich as $k=>$post)
					<div class="col-sm-6 wow fadeInUp" data-wow-offset="150">
						<section class="why-item">
							<h3 class="s18 why-item-tit">
								<span class="why-counter">{{$k+1}}</span>
								<span class="t1">@if($lang =='vi'){{$post->name}} @elseif($lang =='jp') {{$post->name_en}} @endif</span>
							</h3>
							<div class="s16 why-item-content">
								<p>@if($lang =='vi') {!! $post->content !!}  @elseif($lang =='jp') {!! $post->content_en !!} @endif</p>
							</div>
						</section>
					</div>
					@endforeach
				</div>
			</div>
		</div>
	</section>
	<!-- td Thực tập sinh -->
	<section class="td">
		<div class="container">
			<h2 class="s30 t1 text-center td-tit wow fadeInUp" data-wow-offset="150">チーフチンフシン</h2>
			<div class="td-content wow fadeInUp" data-wow-offset="150">
				<p>レイアウトを見ると、読者がページの読みやすいコンテンツに注意をそらすのは、長い間確立された事実です。 の使用のポイントは、「ここのコンテンツ、ここのコンテンツ」を使用するのではなく、読みやすい英語のように見える、文字の正規分布が多少あるということです。</p>
				<p>レイアウトを見ると、読者がページの読みやすいコンテンツに注意をそらすのは、長い間確立された事実です。 の使用のポイントは、「ここのコンテンツ、ここのコンテンツ」を使用するのではなく、読みやすい英語のように見える、文字の正規分布が多少あるということです。多くのデスクトップパブリッシングパッケージやWebページエディタでは、デフォルトのモデルテキストとして</p>
				<p>レイアウトを見ると、読者がページの読みやすいコンテンツに注意をそらすのは、長い間確立された事実です。 の使用のポイントは、「ここのコンテンツ、ここのコンテンツ」を使用するのではなく、</p>
			</div>
			<div class="text-center"><a href="#" title="" class="btn jbtn">もっと読む</a></div>
		</div>
	</section>
	<!-- quy trình -->
	<section class="qt vqt">
		<div class="container">
			<h2 class="s30 t1 text-center td-tit wow fadeInUp wow fadeInUp" data-wow-offset="150">間違っている</h2>
			<div class="w-lg-80 t2 s16 text-center m-auto qt-sum wow fadeInUp wow fadeInUp" data-wow-offset="150">
				<h3 class="">Hệ thống đào tạo thực hành kỹ năng ngoại giao là một hệ thống hợp tác quốc tế và đóng góp quốc tế cho các công ty Nhật Bản chấp nhận học viên thực tập kỹ thuật, chuyển giao kỹ năng cho thực tập sinh kỹ thuật và phát triển nguồn nhân lực chịu trách nhiệm phát triển kinh tế của quốc gia đó</h3>
			</div>
			<div class="s16 qt-wrap">
				<div class="qt-swrap">
					<div class="row justify-content-center">
						<div class="col-sm-2 col-3 d-flex align-items-center">
							<h3 class="text-center qt-item-tit wow fadeInUp" data-wow-offset="150">
								1 tháng
							</h3>
						</div>
						<div class="col-sm-10 col-9">
							<div class="qt-items">
								<h4 class="qt-item wow fadeInUp wow fadeInUp" data-wow-offset="150">Tư vấn chấp nhận thực tập kỹ thuật</h4>
								<h4 class="qt-item wow fadeInUp wow fadeInUp" data-wow-offset="150">Nộp đơn xin chấp nhận</h4>
								<h4 class="qt-item wow fadeInUp wow fadeInUp" data-wow-offset="150">Phỏng vấn</h4>
								<h4 class="qt-item wow fadeInUp wow fadeInUp" data-wow-offset="150">Hợp đồng lao động</h4>
							</div>
						</div>
					</div>
				</div>
				
				<div class="qt-swrap">
					<div class="row">
						<div class="col-sm-2 col-3 d-flex align-items-center">
							<h3 class="text-center qt-item-tit wow fadeInUp" data-wow-offset="150">
								4 tháng
							</h3>
						</div>
						<div class="col-sm-10 col-9">
							<div class="qt-items">
								<h4 class="qt-item wow fadeInUp" data-wow-offset="150">Hợp đồng lao động</h4>
								<h4 class="qt-item wow fadeInUp" data-wow-offset="150">Đơn xin chứng nhận kế hoạch đào tạo thực tập kỹ thuật</h4>
								<h4 class="qt-item wow fadeInUp" data-wow-offset="150">Áp dụng cho Giấy chứng nhận đủ điều kiện</h4>
								<h4 class="qt-item wow fadeInUp" data-wow-offset="150">Mua lại giấy chứng nhận đủ điều kiện</h4>
							</div>
						</div>
					</div>
				</div>
					
				<div class="qt-swrap">
					<div class="row">
						<div class="col-sm-2 col-3 d-flex align-items-center">
							<h3 class="text-center qt-item-tit wow fadeInUp" data-wow-offset="150">
								3 tháng
							</h3>
						</div>
						<div class="col-sm-10 col-9">
							<div class="qt-items">
								<h4 class="qt-item wow fadeInUp" data-wow-offset="150">Thực tập sinh kỹ thuật</h4>
								<h4 class="qt-item wow fadeInUp" data-wow-offset="150">Đánh giá hiệu suất kỹ năng thực tế</h4>
								<h4 class="qt-item wow fadeInUp" data-wow-offset="150">Chuyển sang đánh giá thực tế · kỹ năng cư trú</h4>
								<h4 class="qt-item wow fadeInUp" data-wow-offset="150">Học viên thực tập kỹ thuật trở về nhà</h4>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- hợp tác -->
	<section class="ht" style="background: url(./images/bgj.png) no-repeat center center; background-attachment: fixed;background-size: cover;">
		<div class="container">
			<h2 class="s30 t1 text-center ht-tit wow fadeInUp" data-wow-offset="150">@if($lang == 'vi'){{ $themanh->name }} @elseif($lang =='jp') {{$themanh->name_en}} @endif</h2>
			<div class="w-lg-80 t2 s16 text-center m-auto qt-sum wow fadeInUp" data-wow-offset="150">
				<h3 class="">@if($lang == 'vi'){!! $themanh->content !!} @elseif($lang =='jp') {!!$themanh->content_en!!} @endif</h3>
			</div>

			<div class="ht-wrap">
				<div class="row justify-content-around">
					@foreach($post_themanh as $item)
					<div class="col-lg-3 col-md-6 col-sm-6 wow fadeInUp" data-wow-offset="150">
						<div class="ht-item">
							@if($lang =='vi') {!! $item->content !!} @elseif($lang =='jp') {!! $item->content_en !!} @endif
						</div>
					</div>
					@endforeach
				</div>
			</div>
		</div>
	</section>
	<!-- ảnh - video -->
	<section class="gallery" style="background: url({{asset('public/images/videobgj.jpg')}}) top center;">
		<div class="container">
			<h2 class="s30 t1 text-center td-tit wow fadeInUp" data-wow-offset="150">@if($lang =='vi') {{ $about_video->name }} @elseif($lang =='jp') {{ $about_video->name_en }} @endif</h2>
			<div class="w-lg-80 t2 s16 text-center m-auto qt-sum wow fadeInUp" data-wow-offset="150">
				<h3 class="">@if($lang =='vi') {!! $about_video->content !!} @elseif($lang =='jp') {!! $about_video->content_en !!} @endif</h3>
			</div>
			<div class="d-flex flex-wrap justify-content-center gal-wrap">
				@foreach($gallery_home as $g)
				<div class="pic-item wow fadeInUp" data-wow-offset="150"><a href="{{ asset('upload/hinhanh/'.$g->photo) }}" data-fancybox="pic1" data-caption="Xuất khẩu lao động" class=""><img src="{{ asset('upload/hinhanh/'.$g->photo) }}" alt=""></a></div>
				@endforeach
			</div>
			<div class="text-center wow fadeInUp" data-wow-offset="150"><a href="{{url('gallery')}}" title="" class="btn jbtn">もっと読む</a></div>
		</div>
	</section>
</main>
@endsection
