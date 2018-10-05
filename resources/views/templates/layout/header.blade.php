<?php
    $setting = Cache::get('setting');
    $categories_news = DB::table('news_categories')->where('com', 'tin-tuc')->get();
    $cate_daotao = DB::table('news_categories')->where('com', 'dao-tao')->get();
    $cate_requiment = DB::table('news_categories')->where('com', 'tuyen-dung')->get();
    $lang = Session::get('locale');
?>
@if($lang == 'vi')
<header class="fixed-top top">
    <div class="b1 top-first">
        <div class="container">
            <div class="d-flex align-items-center justify-content-between">
                <div class="s14 f1 t2 tfirst-call">
                    <a href="tel:{{$setting->phone}}" title=""><img src="{{ asset('public/images/phone.png')}}" title="" alt=""> <span class="ml-2">{{$setting->phone}}</span></a>
                </div>
                <div class="s12 t2 d-flex align-items-center tfirst-control">
                    <div class="tf-control-search">
                        <a href="#" title="" data-toggle="dropdown" class=""> Tìm kiếm <img class="ml-2" src="{{ asset('public/images/search.png')}}" alt="" title=""></a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <div class="dropdown-item d-flex align-items-center cart-top-item">
                                <form action="{{ route('search') }}" class="search-frm">
                                    <input type="text" required="required" name="txtSearch" class="form-control" placeholder="Tìm kiếm...">
                                    <button type="submit" class="btn">Tìm kiếm</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="tf-control-lan">
                        <a aria-label="Tiếng Việt" href="{{url('langs/vi')}}" title=""><img src="{{ asset('public/images/vn.png')}}" title="" alt=""></a>
                        <a aria-label="Tiếng Nhật" href="{{url('langs/jp')}}" title=""><img src="{{ asset('public/images/jp.png')}}" title="" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="w-100 d-flex align-items-center justify-content-between top-menu">
            <div class="d-lg-none d-flex align-items-center justify-content-between top-menu-btn">
                <!-- hamburger menu -->
                <a id="nav-icon" href="#menu" class="">
                    <span></span>
                    <span></span>
                    <span></span>
                </a>
                <!-- logo -->
                <a aria-label="IVY Hr" href="{{url('')}}" title=""><img src="{{asset('upload/hinhanh/'.$setting->photo)}}" alt="" title="" class="logo"></a>
            </div>            
            <!-- menu -->
            <nav id="menu" class="menu-wrap">   
                <ul class="menu medium text-uppercase">
                    <li class="@if(@$com == 'index')active @endif"><a href="{{url('')}}" title="">Trang chủ</a></li>
                    <li class="@if(@$com == 'gioi-thieu')active @endif"><a href="javascript:0;" title="">Giới thiệu</a>
                        <ul>
                            <li><a href="{{url('thu-ngo')}}" title="">Thư ngỏ</a></li>
                            <li><a href="{{url('thong-tin-cong-ty')}}" title="">Thông tin công ty</a></li>
                            <li><a href="{{url('the-manh')}}" title="">Thế mạnh</a></li>
                        </ul>
                    </li>
                    <li class="@if(@$com == 'xuat-khau')active @endif"><a href="{{url('xuat-khau-lao-dong')}}" title="">Xuất khẩu lao động</a></li>
                    <li><a href="javascript:0;" title="">Tuyển dụng</a>
                        @if(count($cate_requiment) > 0)
                        <ul class="">
                            @foreach($cate_requiment as $cate_re)
                            <li><a href="{{url('/'.$cate_re->alias)}}" title="{{ $cate_re->name }}">{{ $cate_re->name }}</a></li>
                            @endforeach
                        </ul>
                        @endif
                    </li>
                    <li class="d-lg-inline-block d-none logo"><a aria-label="IVY Hr" href="{{url('')}}" title=""><img src="{{asset('upload/hinhanh/'.$setting->photo)}}" alt="" title=""></a></li>
                    <li class="@if(@$com == 'dao-tao')active @endif"><a href="javascript:0;" title="">Đào tạo</a>
                        <ul class="">
                            @foreach($cate_daotao as $daotao)
                            <li><a href="{{url('/'.$daotao->alias)}}" title="">{{$daotao->name}}</a></li>
                            @endforeach
                        </ul>
                    </li>
                    <li class="@if(@$com == 'gallery')active @endif"><a href="javascript:0;" title="">Ảnh - Video</a>
                        <ul class="">
                            <li><a href="{{url('gallery')}}" title="">Album ảnh</a></li>
                            <li><a href="{{url('video')}}" title="">Video</a></li>
                        </ul>
                    </li>
                    <li class="@if(@$com == 'tin-tuc')active @endif"><a href="javascript:0;" title="">Tin tức</a>
                        @if(count($categories_news) > 0)
                        <ul class="">
                            @foreach($categories_news as $cate_news)
                            <li><a href="{{url('/'.$cate_news->alias)}}" title="{{$cate_news->name}}">{{$cate_news->name}}</a></li>
                            @endforeach
                        </ul>
                        @endif
                    </li>
                    <li class="@if(@$com == 'faq')active @endif"><a href="{{url('faq')}}" title="">{{ __('label.faq') }}</a></li>
                    <li class="@if(@$com == 'lien-he')active @endif"><a href="{{url('lien-he')}}" title="">{{ __('label.lienhe') }}</a></li>
                </ul>
            </nav>


        </div>
    </div>
</header>
@elseif($lang =='jp')
<header class="fixed-top japan">
    <div class="container">
        <div class="w-100 d-flex align-items-lg-baseline align-items-center justify-content-between top-menu">
            <div class="d-lg-none d-flex align-items-center justify-content-between top-menu-btn">
                <!-- hamburger menu -->
                <a id="nav-icon" href="#menu" class="">
                    <span></span>
                    <span></span>
                    <span></span>
                </a>
                <!-- logo -->
                <a href="{{url('')}}" title=""><img src="{{asset('upload/hinhanh/'.$setting->photo)}}" alt="" title="" class="logo"></a>
            </div>
            
            <!-- menu -->
            <nav id="menu" class="menu-wrap">   
                <ul class="menu medium text-uppercase">
                    <li class="active"><a href="{{url('')}}" title="">ホーム</a></li>
                    <li><a href="javascript:0;" title="">について</a>
                        <ul>
                            <li><a href="{{ url('thu-ngo') }}" title="">公開書簡</a></li>
                            <li><a href="{{url('thong-tin-cong-ty')}}" title="">会社情報</a></li>
                            <li><a href="{{url('the-manh')}}" title="">強さ</a></li>
                        </ul>
                    </li>
                    <li><a href="{{url('xuat-khau-lao-dong')}}" title="">外国人技能実習制度とは</a></li>
                    
                    <li><a href="javascript:0;" title="">実習生研修活動</a>
                        <ul class="">
                            @foreach($cate_daotao as $daotao)
                            <li><a href="{{url('/'.$daotao->alias)}}" title="">{{$daotao->name_en}}</a></li>
                            @endforeach
                        </ul>
                    </li>
                    <li><a href="javascript:0;" title="">画像 ・ 動画</a>
                        <ul class="">
                            <li><a href="{{url('gallery')}}" title="">フォトアルバム</a></li>
                            <li><a href="{{url('video')}}" title="">ビデオ</a></li>
                        </ul>
                    </li>
                    <li class="d-lg-block d-none logojapan"><a href="{{url('')}}" title=""><img src="{{asset('upload/hinhanh/'.$setting->photo)}}" alt="" title=""><h1>IVY HR 国際株式会社</h1></a></li>
                    
                    <li><a href="javascript:0;" title="">ニュース</a>
                        <ul class="">
                            @if(count($categories_news) > 0)
                            <ul class="">
                                @foreach($categories_news as $cate_news)
                                <li><a href="{{url('/'.$cate_news->alias)}}" title="{{$cate_news->name_en}}">{{$cate_news->name_en}}</a></li>
                                @endforeach
                            </ul>
                            @endif
                        </ul>
                    </li>
                    <li><a href="{{url('faq')}}" title="">よくある質問</a></li>
                    <li><a href="{{url('lien-he')}}" title="">お問い合わせ</a></li>
                </ul>
            </nav>
            
            <div class="top-right">
                <div class="s12 t2 d-flex align-items-center justify-content-end tfirst-control">
                    <div class="tf-control-search">
                        <a href="#" title="" data-toggle="dropdown" class=""> 検索 <img class="ml-2" src="{{ asset('public/images/search.png')}}" alt="" title=""></a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <div class="dropdown-item d-flex align-items-center cart-top-item">
                                <form action="" class="search-frm">
                                    <input type="text" required="required" class="form-control" placeholder="検索キーワード...">
                                    <button type="submit" class="btn">検索</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="tf-control-lan">                        
                        <a href="{{url('langs/vi')}}" title=""><img src="{{ asset('public/images/vn.png')}}" title="" alt=""></a>
                        <a href="{{url('langs/jp')}}" title=""><img src="{{ asset('public/images/jp.png')}}" title="" alt=""></a>
                    </div>
                </div>
                <div class="s14 f1 t2 tfirst-call">
                    <a href="tel:{{$setting->phone}}" title=""><img src="{{ asset('public/images/phone.png')}}" title="" alt=""> <span class="ml-1">{{$setting->phone}}</span></a>
                </div>
            </div>
            
        </div>
    </div>
</header>
@endif