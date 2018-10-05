@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    
?>
<main class="">
    <section class="banner">
        <div class="container">
            <div class="banner-wrap">
                <img src="{{ asset('public/images/5.jpg')}}" alt="">
                <h1 class="medium s30 text-center text-white text-uppercase banner-tit">Search</h1>
            </div>
            <ul class="list-unstyled s14 bread">
                <li><a href="{{url('')}}" title="">{{ __('label.home') }}</a></li>
                <li>Search</li>                
            </ul>
        </div>
    </section>
    <div class="video">
        <div class="container">
            <div class="video-row">
                <div class="row">
                    @if(isset($data))
                        @foreach($data as $item)
                        <?php $tintuc_cate = DB::table('news_categories')->where('id', $item->cate_id)->first(); ?>
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
