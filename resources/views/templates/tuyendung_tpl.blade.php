@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
   $lang = Session::get('locale');
   $banner = DB::table('banner_content')->where('position', 6)->first();
?>
<main class="">
    <section class="banner">
        <div class="container">
            <div class="banner-wrap">
                <img src="{{ asset('upload/banner/'.$banner->image)}}" alt="">
                <h1 class="medium s30 text-center text-white text-uppercase banner-tit">@if(@$lang == 'vi') {{ @$tintuc_cate->name }}
                    @elseif(@$lang == 'jp')
                       {{ @$tintuc_cate->name_en }}
                    @endif</h1>
            </div>
            <ul class="list-unstyled s14 bread">
                <li><a href="{{url('')}}" title="">{{ __('label.home') }}</a></li>
                <li>{{ __('label.tuyendung') }}</li>
                <li>@if(@$lang == 'vi') {{ @$tintuc_cate->name }} @elseif(@$lang == 'jp') {{ @$tintuc_cate->name_en }}
                    @endif </li>
            </ul>
        </div>
    </section>
    <div class="video">
        <div class="container">
            <div class="video-row">
                <div class="row">
                    @if(isset($data))
                        @foreach($data as $item)
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <article class="video-item">
                                <figure class="text-center video-img">
                                    <a href="{{ url('/'.$tintuc_cate->alias.'/'.$item->alias.'.html') }}" title="">
                                        @if(@$lang =='vi')
                                        <img src="{{asset('upload/news/'.$item->photo)}}" title="{{@$item->name}} " alt="">
                                        @elseif(@$lang =='jp')
                                         <img src="{{asset('upload/news/'.$item->photo_en)}}" title="{{@$item->name_en}} " alt="">   
                                        @endif
                                    </a>
                                </figure>
                                <figcaption class="video-info">
                                    <h2 class="medium s16 video-info-tit"><a href="{{ url('/'.$tintuc_cate->alias.'/'.$item->alias.'.html') }}" title="{{$item->name}}">@if(@$lang =='vi'){{@$item->name}} @elseif(@$lang =='jp'){{@$item->name_en}} @endif</a></h2>
                                    <h3 class="medium s14 t1 blog-item-time">{{date('d/m/Y', strtotime($item->created_at))}}</h3>
                                    <p>@if(@$lang =='vi') {!! $item->mota !!} @elseif(@$lang =='jp') {!! $item->mota_en !!} @endif</p>
                                </figcaption>
                            </article>
                        </div>
                        @endforeach
                    @endif
                </div>
            </div>            
            <div class="list-unstyled text-lg-right text-center f1 pagi">
                {!! $data->links() !!}
            </div>
        </div>
    </div>
</main>
@endsection
