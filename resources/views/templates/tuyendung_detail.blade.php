@extends('index')
@section('content')

<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $lang = Cache::get('lang');
    $biendich = Cache::get('biendich');
?>
<main class="">
    <section class="banner">
        <div class="container">
            <div class="banner-wrap">
                <img src="{{ asset('public/images/5.jpg')}}" alt="">
                <h2 class="medium s30 text-center text-white text-uppercase banner-tit">{{ $news_detail->name }}</h2>
            </div>

            <ul class="list-unstyled s14 bread">
                <li><a href="{{url('')}}" title="">Trang chủ</a></li>
                <li><a href="blog.html" title="">Tuyển dụng</a></li>
                <li>{{ $news_detail->name }}</li>
            </ul>
        </div>
    </section>
    <div class="bdetail">
        <div class="container">
            <h1 class="medium s24 t3 bdetail-tit">{{ $news_detail->name }}</h1>
            <div class="d-flex align-items-center justify-content-between flex-wrap">
                <h3 class="medium s14 t1 blog-item-time">{{date('d/m/Y', strtotime($news_detail->created_at))}}</h3>
                <div class="bdetail-like">
                    <span>Chia sẻ:</span> <a href="#" title=""><i class="fab fa-facebook-f"></i> <a href="#" title=""><i class="fab fa-google-plus-g"></i></a>
                </div>
            </div>
            <div class="content bdetail-content">                
                {!! $news_detail->content !!}                
            </div>

            <h2 class="s18 medium bdetail-retit">Bài viết liên quan</h2>
            @foreach($data as $item)
            <div class="bdetail-re-item">
                <div class="row">
                    <div class="col-lg-3 col-md-4 col-sm-5">
                        <div class="bdetail-re-item-img">
                            <a href="{{ url('tuyen-dung/'.$item->alias.'.html') }}" title="{{$item->name}}"><img src="{{asset('upload/news/'.$item->photo)}}" alt="{{$item->name}}" title="{{$item->name}}"></a>
                        </div>
                    </div>
                    <div class="col-md-8 col-sm-7">
                        <div class="bdetail-re-item-content">
                            <h3 class="medium s18 pb-4 bdetail-re-item-tit"><a href="{{ url('tuyen-dung/'.$item->alias.'.html') }}" title="{{$item->name}}">{{$item->name}}</a></h3>
                            <p>{!! $item->mota !!}</p>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</main>
@endsection
