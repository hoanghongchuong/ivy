@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $lang = Session::get('locale');
    $categories_news = DB::table('news_categories')->where('com', 'tin-tuc')->get();
    $banner = DB::table('banner_content')->where('position', 7)->first();
    use Carbon\Carbon;  
    
?>
 <main class="">
    <section class="banner">
        <div class="container">
            <div class="banner-wrap">
                <img src="{{ asset('upload/banner/'.@$banner->image)}}" alt="">
                <h1 class="medium s30 text-center text-white text-uppercase banner-tit"> 
                    @if(@$lang == 'vi') {{ @$tintuc_cate->name }}
                    @elseif(@$lang == 'jp')
                       {{ @$tintuc_cate->name_en }}
                    @endif
                </h1>
            </div>
            <ul class="list-unstyled s14 bread">
                <li><a href="{{url('')}}" title="">{{ __('label.home') }}</a></li>
                @if(@$lang == 'vi')
                <li>{{@$tintuc_cate->name}}</li>
                @elseif(@$lang == 'jp')
                <li>{{@$tintuc_cate->name_en}}</li>
                @endif
            </ul>
        </div>
    </section>
    <div class="blog">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    @foreach($data as $item)
                    
                    <article class="blog-item">
                        <figure class="text-center blog-item-img">
                            <a href="{{ url('/'.$tintuc_cate->alias.'/'.$item->alias.'.html') }}" title=""><img src="{{asset('upload/news/'.$item->photo)}}" alt="" title=""></a>
                        </figure>
                        <figcaption class="blog-item-info">
                            <h2 class="medium s18 blog-item-tit"><a href="{{ url('/'.$tintuc_cate->alias.'/'.$item->alias.'.html') }}" title="">@if($lang == 'vi'){{$item->name}} @elseif($lang =='jp') {{$item->name_en}} @endif</a></h2>
                            <h3 class="medium s14 t1 blog-item-time">{{date('d/m/Y', strtotime($item->created_at))}}</h3>
                            <div class="blog-item-content">
                                <p>@if($lang == 'vi') {!! $item->mota !!} @elseif($lang =='jp') {!! $item->mota_en !!} @endif</p>
                            </div>
                        </figcaption>
                    </article>
                    @endforeach
                    <div class="list-unstyled f1 pagi">
                        {!! $data->links() !!}
                    </div>
                </div>
                <div class="col-lg-4">
                    <aside class="baside">
                        <h2 class="t1 s15 text-uppercase baside-tit">{{ __('label.tintucsukien') }}</h2>
                        <ul class="list-unstyled s16 baside-list">
                            @foreach($categories_news as $cate)
                            <li><a href="{{url('/'.$cate->alias)}}" title="">@if($lang == 'vi'){{$cate->name}} @elseif($lang =='jp') {{ $cate->name_en }} @endif</a></li>
                            @endforeach
                        </ul>
                        <h2 class="t1 s15 text-uppercase baside-tit">{{ __('label.luutru') }}</h2>
                        <ul class="list-unstyled s16 baside-list">
                            @for($i = 0; $i < 4; $i++)
                            <?php
                                $now_current = Carbon::now()->subMonths($i)->format('Y-m');                                
                                $news = DB::table('news')               
                                    ->where('cate_id',$tintuc_cate->id)
                                    ->orderBy('id','desc');
                                if($lang == 'vi'){
                                    $news = count($news->where('status',1)->where('created_at', 'like',$now_current.'%')->get());
                                }elseif($lang =='jp'){
                                    $news = count($news->where('status_en',1)->where('created_at', 'like',$now_current.'%')->get());
                                }
                            ?>
                            <li><a href="{{url('/'.$tintuc_cate->alias.'/'.Carbon::now()->subMonths($i)->format('Y-m'))}}" title="">{{Carbon::now()->subMonths($i)->format('Y-m') . ' ('. $news.')'}}</a></li>
                            @endfor
                        </ul>
                        <h2 class="t1 s15 text-uppercase baside-tit">{{ __('label.ketnoi') }}</h2>
                        <ul class="list-unstyled baside-social">
                            <li><a href="{{$setting->facebook}}" title=""><i class="fab fa-facebook-f"></i></a></li>
                            <li><a href="{{$setting->twitter}}" title=""><i class="fab fa-twitter"></i></a></li>
                            <li><a href="{{$setting->google}}" title=""><i class="fab fa-google-plus-g"></i></a></li>
                        </ul>
                    </aside>
                </div>
            </div>
        </div>
    </div>
</main>
@endsection