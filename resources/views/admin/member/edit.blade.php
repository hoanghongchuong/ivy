@extends('admin.master')
@section('content')
@section('controller','Member')
@section('action','Edit')
<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>
    @yield('controller')
    <small>@yield('action')</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="admin"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="javascript:">@yield('controller')</a></li>
    <li class="active">@yield('action')</li>
  </ol>
</section>
<!-- Main content -->
<section class="content">
  
    <div class="box">
      @include('admin.messages_error')
        <div class="box-body">
          
          <form name="frmAdd" method="post" action="backend/member/edit/{{$data->id}}" enctype="multipart/form-data">
            <input type="hidden" name="_token" value="{!! csrf_token() !!}" />
            <div class="form-group @if ($errors->first('fImages')!='') has-error @endif">
              <div class="form-group">
                <img src="{{ asset('upload/banner/'.$data->photo) }}" onerror="this.src='{{asset('public/admin_assets/images/no-image.jpg')}}'" class="img-responsive"  alt="NO PHOTO" />
                <input type="hidden" name="img_current" value="{!! @$data->photo !!}">
              </div>
              <label for="file">Chọn File ảnh</label>
                <input type="file" id="file" name="fImages" >
                <p class="help-block">Width:800px - Height: 326px</p>
                @if ($errors->first('fImages')!='')
                  <label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> {!! $errors->first('fImages'); !!}</label>
                  @endif
            </div>
              
            <div class="clearfix"></div>
            <div class="col-md-6">
              <div class="form-group">
                <label for="">Tên</label>
                <input type="text" name="name" class="form-control" value="{{$data->name}}">
               
              </div>
              
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label for="">Position</label>
                <input type="text" name="position" class="form-control" value="{{$data->position}}">
              </div>
            </div>
            <div class="col-md-6">
              <label for="">Mô tả</label>
              <textarea name="des" class="form-control" style="min-height: 150px;">{{$data->des}}</textarea>
            </div>
            <div class="col-md-6">
              <label for="">Mô tả (tiếng anh)</label>
              <textarea name="des_en" class="form-control" style="min-height: 150px;">{{$data->des_en}}</textarea>
            </div>
          <div class="clearfix"></div>
          <div class="box-footer">
            <div class="row">
            <div class="col-md-6">
                
                <button type="submit" class="btn btn-primary">Lưu</button>
                <button type="button" onclick="javascript:window.location='backend/member'" class="btn btn-danger">Thoát</button>
              </div>
            </div>
          </div>
        </form>
        </div><!-- /.box-body -->
    </div><!-- /.box -->
    
</section><!-- /.content -->

@endsection()
