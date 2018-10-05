<?php
    $setting = Cache::get('setting');
    $lang = Cache::get('lang');
    $about = Cache::get('about');
    $cateProducts = Cache::get('cateProducts');
?>
<footer class="ft" style="background: url(./public/images/ftbg.png) no-repeat top center; background-size: cover;">
    <div class="container">
        <div class="ft-1">
            <div class="row justify-content-between">
                <div class="col-md-1 col-sm-3">
                    <h2 class="text-lg-left text-center"><a aria-label="IVY Hr" href="{{ url('') }}" title=""><img src="{{asset('upload/hinhanh/'.$setting->photo)}}" title="" alt="" class="logoft"></a></h2>
                </div>
                <div class="col-md-5 col-sm-9">
                    <ul class="list-unstyled ft-add">
                        <li class="s24 f1 t1">国際合資会社 IVY HR</li>
                        <li>
                            <span class="ft-icon"><i class="fas fa-map-marker-alt"></i></span>
                            @if(@$lang == 'vi')
                            <span>{{ $setting->address }}</span>
                            @elseif(@$lang == 'en')
                            <span>{{ $setting->address_en }}</span>
                            @endif
                        </li>
                        <li>
                            <span class="ft-icon"><i class="fas fa-phone"></i></span>
                            <span><a href="tel:{{$setting->phone}}" title="">{{$setting->phone}}</a></span>
                        </li>
                        <li>
                            <span class="ft-icon"><i class="fas fa-envelope"></i></span> 

                            <span><a href="mailto:{{$setting->email}}" title="">{{$setting->email}}</a></span>
                        </li>                        
                        <li>
                            <span class="ft-icon"><i class="fas fa-globe"></i></span>
                            <a href="{{$setting->website}}" title="">{{$setting->website}}</a>
                        </li>
                    </ul>
                </div>

                <div class="col-md-6 col-sm-12">
                    <h2 class="bold s16 t1 text-uppercase text-md-left text-center ft-tit">{{__('label.send_contact')}}</h2>                    
                    <form action="{{ route('postContact') }}" method="post" class="ft-frm">
                        {{ csrf_field() }}
                        <label class="sr-only" for="ft-phone">Số điện thoại</label>
                        <input id="ft-phone" type="tel" required="required" placeholder="Số điện thoại" name="phone" class="form-control">
                        <label class="sr-only" for="ft-content">Nội dung</label>
                        <textarea id="ft-content" rows="3" required="required" class="form-control" name="content" placeholder="Nội dung"></textarea>
                        <div class="text-lg-right text-center">
                            <button class="btn text-uppercase">Gửi</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="s14 t2 text-center ft-last">© GCO GROUP 2018. All rights reserved</div>
    </div>
</footer>