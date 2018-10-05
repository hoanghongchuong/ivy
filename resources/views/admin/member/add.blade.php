@extends('admin.master')
@section('content')
@section('controller','Member')
@section('action','Add')
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
          
          <form name="frmAdd" method="post" action="{{ route('admin.member.postAdd') }}" enctype="multipart/form-data">
            <input type="hidden" name="_token" value="{!! csrf_token() !!}" />
            <div class="form-group col-md-12 @if ($errors->first('fImages')!='') has-error @endif">
                <label for="file">File ảnh</label>
                  <input type="file" id="file" name="fImages" >
                  <p class="help-block">Width:225px - Height: 162px</p>
                  @if ($errors->first('fImages')!='')
                    <label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> {!! $errors->first('fImages'); !!}</label>
                    @endif
            </div>
              
            <div class="clearfix"></div>
            <div class="col-md-6">
              <div class="form-group">
                <label for="">Tên</label>
                <input type="text" name="name" class="form-control" value="">
                @if ($errors->first('name')!='')
                  <label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> {!! $errors->first('name'); !!}</label>
                @endif
              </div>
             
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label for="">Position</label>
                <input type="text" name="position" class="form-control" value="">
              </div>
            </div>
            <div class="col-md-6">
              <label for="">Mô tả</label>
              <textarea name="des" class="form-control" style="min-height: 150px;"></textarea>
            </div>
            <div class="col-md-6">
              <label for="">Mô tả (tiếng anh)</label>
              <textarea name="des_en" class="form-control" style="min-height: 150px;"></textarea>
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
