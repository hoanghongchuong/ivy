@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');    
    $banner = DB::table('banner_content')->where('position', 5)->first();
?>
<section class="about-us">
    <div class="container">
        <h1><span>@if($lang == 'vi') {{$biendich[5]->name_vi}} @elseif($lang == 'en') {{$biendich[5]->name_en}}  @endif</span></h1>
        <div class="row">
            <div class="col-md-10">
                <p>@if($lang == 'vi') {!! $about->mota !!} @elseif($lang =='en') {!! $about->mota_en !!} @endif</p>
            </div>
        </div>
    </div>
</section>
<section class="team">
    <div class="container">
        <ul id="og-grid" class="og-grid">
            @foreach($members as $item)
            <li>
                <a href="" data-largesrc="{{ asset('upload/banner/'.$item->photo)}}" data-title="{{$item->name}}" data-description="{{$item->des}}">
                    <img src="{{ asset('upload/banner/'.$item->photo)}}" alt="img01"/>
                    <h4 class="text-center">{{$item->name}}</h4>
                    <p class="text-center>"{{$item->position}}</p>
                </a>
            </li>
            @endforeach
        </ul>
    </div>
</section>

@endsection
