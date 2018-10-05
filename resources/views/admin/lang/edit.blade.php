@extends('admin.master')
@section('content')
@section('controller','Sửa '.$trang)
@section('action','Update')

<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>
   	@yield('controller')
    <small>@yield('action')</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="gco_admin"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="javascript:">@yield('controller')</a></li>
    <li class="active">@yield('action')</li>
  </ol>
</section>
<!-- Main content -->
<section class="content">
  
    <div class="box">
    	@include('admin.messages_error')
        <div class="box-body">
        	<form method="post" action="backend/langs/edit?id={{$id}}&type={{ @$_GET['type'] }}" enctype="multipart/form-data">
        		<input type="hidden" name="_token" value="{!! csrf_token() !!}" />
      			<div class="row">
              		<div class="col-md-6 col-xs-12">
                    	
				    	<div class="form-group @if ($errors->first('txtName_vi')!='') has-error @endif">
					      	<label for="ten">Tên tiếng việt</label>
					      	<input type="text" name="txtName_vi" id="txtName_vi" value="{!! old('txtName_vi', isset($data) ? $data->name_vi : null) !!}"  class="form-control" />
					      	@if ($errors->first('txtName_vi')!='')
					      	<label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> {!! $errors->first('txtName_vi'); !!}</label>
					      	@endif
						</div>
						<div class="form-group">
					      	<label for="ten">Tên tiếng nhật</label>
					      	<input type="text" name="txtName_en" id="txtName_en" value="{!! old('txtName_en', isset($data) ? $data->name_en : null) !!}"  class="form-control" />
						</div>
						<div class="form-group @if ($errors->first('txtAlias')!='') has-error @endif">
					      	<label for="alias">Đường dẫn tĩnh</label>
					      	<input type="text" name="txtAlias" id="txtAlias" value="{{ $data->alias }}"  class="form-control" />
					      	@if ($errors->first('txtAlias')!='')
					      	<label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> {!! $errors->first('txtAlias'); !!}</label>
					      	@endif
						</div>
						<input type="hidden" name="txtCom" value="{{ @$_GET['type'] }}"/>
					</div>
				</div>
	            <div class="clearfix"></div>
			    <div class="col-md-6">
			    	<div class="form-group">
					      <label for="ten">Số thứ tự</label>
					      <input type="number" min="1" name="stt" value="{!! isset($data->status) ? $data->stt : (count($parent)+1) !!}" class="form-control" style="width: 100px;">
				    </div>
				    
				    <div class="form-group">
					    <label>
				        	<input type="checkbox" name="status" {!! (!isset($data->status) || $data->status==1)?'checked="checked"':'' !!}> Hiển thị
				    	</label>
				    </div>
			    	
			    </div>
			    <div class="clearfix"></div>
			    <div class="box-footer col-md-12 row">
					<div class="col-md-6">
				    	<button type="submit" class="btn btn-primary">Cập nhật</button>
				    	<button type="button" onclick="javascript:window.location='backend/langs?type={{ @$_GET[type] }}'" class="btn btn-danger">Thoát</button>
			    	</div>
			  	</div>
		    </form>
        </div><!-- /.box-body -->
    </div><!-- /box -->
    
</section><!-- /.content -->
@endsection()
