@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $lang = Session::get('locale');
?>
<main class="">
    <section class="banner">
        <div class="container">
            <div class="banner-wrap">
                <img src="{{ asset('public/images/5.jpg')}}" alt="">
                <h2 class="medium s30 text-center text-white text-uppercase banner-tit">@if($lang =='vi') {{$news_detail->name}} @elseif($lang =='jp') {{$news_detail->name_en}} @endif</h2>
            </div>
            <ul class="list-unstyled s14 bread">
                <li><a href="{{url('')}}" title="">{{ __('label.home') }}</a></li>
                <li><a href="#" title="">@if($lang =='vi') {{$category->name}} @elseif($lang =='jp') {{$category->name_en}} @endif</a></li>
                <li>@if($lang =='vi') {{$news_detail->name}} @elseif($lang =='jp') {{$news_detail->name_en}} @endif</li>
            </ul>
        </div>
    </section>
    <div class="bdetail">
        <div class="container">
            <h1 class="medium s24 t3 bdetail-tit">@if($lang =='vi') {{$news_detail->name}} @elseif($lang =='jp') {{$news_detail->name_en}} @endif</h1>
            <div class="d-flex align-items-center justify-content-between flex-wrap">
                <h3 class="medium s14 t1 blog-item-time">{{date('d/m/Y', strtotime($news_detail->created_at))}}</h3>
                <div class="bdetail-like">
                    <p>
                      <!-- AddThis Button BEGIN -->
                      <div class="addthis_toolbox addthis_default_style" style="margin-top:10px;">
                      <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
                      <a class="addthis_button_tweet"></a>
                      <a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
                      <a class="addthis_counter addthis_pill_style"></a>
                      </div>
                      <script type="text/javascript">var addthis_config = {"data_track_addressbar":false};</script>
                      <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-52843d4e1ff0313a"></script>
                   </p>
                </div>
            </div>            
            <div class="content bdetail-content">                
                @if($lang =='vi') {!! $news_detail->content !!} @elseif($lang =='jp') {!! $news_detail->content !!} @endif
            </div>

            <h2 class="s18 medium bdetail-retit">{{ __('label.lienquan') }}</h2>
            @foreach($newsSamCate as $item)
            <div class="bdetail-re-item">
                <div class="row">
                    <div class="col-lg-3 col-md-4 col-sm-5">
                        <div class="bdetail-re-item-img">
                            <a href="{{ url('/'.$category->alias.'/'.$item->alias.'.html') }}" title="@if($lang =='vi'){{ $item->name }} @elseif($lang =='jp') {{ $item->name_en }}  @endif">
                                @if($lang =='vi')
                                <img src="{{ asset('upload/news/'.$item->photo)}}" alt="" title="">
                                @elseif($lang =='jp')
                                <img src="{{ asset('upload/news/'.$item->photo_en)}}" alt="" title="">
                                @endif
                            </a>
                        </div>
                    </div>
                    <div class="col-md-8 col-sm-7">
                        <div class="bdetail-re-item-content">
                            <h3 class="medium s18 pb-4 bdetail-re-item-tit">
                                <a href="{{ url('/'.$category->alias.'/'.$item->alias.'.html') }}" title="@if($lang =='vi'){{ $item->name }} @elseif($lang =='jp') {{ $item->name_en }}  @endif">@if($lang =='vi'){{ $item->name }} @elseif($lang =='jp') {{ $item->name_en }}  @endif</a>
                            </h3>

                            <p>@if($lang =='vi') {!! $item->mota !!} @elseif($lang =='jp') {!! $item->mota_en !!} @endif</p>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
            

        </div>
    </div>
</main>
@endsection
