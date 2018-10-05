@extends('index')
@section('content')
<?php $lang = Cache::get('lang');
    $biendich = Cache::get('biendich');
 ?>
<section class="vk-content">
    <div class="vk-breadcrumb">
        <nav class="container">
            <div class="vk-breadcrumb__wrapper">
                <ul class="vk-list vk-list--inline vk-breadcrumb__list">
                    <li class="vk-list__item"><a href="{{url('')}}"><i class="vk-icon fa fa-home"></i> Trang chủ</a></li>
                    <!-- <li class="vk-list__item"><a href="#">Tìm kiếm</a></li> -->

                    <li class="vk-list__item active">404</li>
                </ul>
            </div>

        </nav>
    </div>
    <!--./vk-breadcrumb-->    
    <div class="vk-page vk-page--404">

        <div class="container">

            <div class="vk-404__content">
                <img src="images/other/404.png" alt="" class="img-fluid">
            </div>

        </div>

    </div><!--./page-->

</section>
@endsection
