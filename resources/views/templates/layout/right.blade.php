<div class="col-lg-3">
    <div class="vk-news__left">
        <div class="vk-sidebar">
            <div class="vk-sidebar__box">
                <img src="images/other/analystic.jpg" alt="" class="img-fluid">
            </div> <!--./box-->

            <div class="vk-sidebar__box">
                <h3 class="vk-sidebar__heading">@if($lang == 'vi'){{"Tin tức mới nhất"}} @elseif($lang =='en') {{"Latest News"}} @endif</h3>
					
                <div class="vk-news-item vk-news-item--sidebar">
                    <div class="vk-img vk-img--cover">
                        <a href="{{url('tin-tuc/'.$news[0]->alias.'.html')}}" title="@if($lang == 'vi') {{$news[0]->name}} @elseif($lang == 'en') {{$news[0]->name_en}} @endif" class="vk-img__link">
                            <img src="{{asset('upload/news/'.$news[0]->photo)}}" alt="@if($lang == 'vi') {{$news[0]->name}} @elseif($lang == 'en') {{$news[0]->name_en}} @endif" class="vk-img__img">
                        </a>
                    </div>

                    <div class="vk-news-item__brief">
                        <h2 class="vk-news-item__title"><a href="news-detail.html" title="@if($lang == 'vi') {{$news[0]->name}} @elseif($lang == 'en') {{$news[0]->name_en}} @endif">@if($lang == 'vi') {{$news[0]->name}} @elseif($lang == 'en') {{$news[0]->name_en}} @endif</a></h2>
                        <p class="vk-news-item__meta"><span><i class="fa fa-user"></i> Post by: JSC Thuận Đức</span> </p>
                        <p class="vk-news-item__text">@if($lang == 'vi') {{$news[0]->mota}} @elseif($lang == 'en') {{$news[0]->mota_en}} @endif</p>
                    </div>
                </div>

                <ul class="vk-list vk-list--style-1">
                	@for($i=1; $i < count($news); $i++)
                    <li class="vk-list__item"><a href="{{url('tin-tuc/'.$news[$i]->alias.'.html')}}" title="@if($lang == 'vi') {{ $news[$i]->name }} @elseif($lang == 'en') {{ $news[$i]->name_en }} @endif">@if($lang == 'vi') {{ $news[$i]->name }} @elseif($lang == 'en') {{ $news[$i]->name_en }} @endif</a></li>
                    @endfor
                </ul>
            </div> <!--./box-->

        </div>
    </div>
</div>