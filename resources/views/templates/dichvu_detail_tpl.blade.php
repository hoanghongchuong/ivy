@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $lang = Cache::get('lang');
    $biendich = Cache::get('biendich');
    $about = DB::table('about')->where('com', 'gioi-thieu')->first();
?>
<section class="banner">
    <img src="{{asset('public/images/picture/banner-10.jpg')}}" alt="" title="">
</section>
<section class="room-nav">
    <div class="container">
        <ul class="nav nav-tabs flex-center-center" role="tablist">
            @foreach($service as $k=>$s)
            <li class="nav-item">
                <a class="nav-link @if($s->id == $news_detail->id)active @endif" href="#bar-{{$k+1}}" role="tab" data-toggle="tab">@if($lang == 'vi') {{$s->name}} @elseif($lang == 'en') {{$s->name_en}} @endif</a>
            </li>
            @endforeach
        </ul>
    </div>
</section>
<section class="bar-sec pd-30">
    <div class="container">
        <div class="tab-content">
            @foreach($service as $k=>$s)
            <div role="tabpanel" class="tab-pane fade in show @if($s->id == $news_detail->id)active @endif" id="bar-{{$k+1}}">
                <h1 class="title-page">@if($lang == 'vi') {{$s->name}} @elseif($lang == 'en') {{$s->name_en}} @endif</h1>
                <div class="detail">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="bar-slider owl-carousel slider-general">
                                <?php $albums = DB::table('images')->where('service_id', $s->id)->get(); ?>
                                @if(count($albums) > 0)
                                @foreach($albums as $album)
                                <p><img src="{{asset('upload/service/'.$album->photo)}}" alt="" title=""> </p>
                                @endforeach
                                @else
                                <p><img src="{{asset('upload/news/'.$s->photo)}}" alt="" title=""> </p>
                                @endif                                
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="bar-text">
                                @if($lang == 'vi') {!!$s->content!!} @elseif($lang == 'en') {!!$s->content_en!!} @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
@endsection