@extends('admin.master')
@section('content')
@section('controller','Order Detail')
@section('action','Update')

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
        	<form method="post" action="{{asset('backend/orders/edit/'.$data->id)}}" >
        		<input type="hidden" name="_token" value="{!! csrf_token() !!}" />
      			<div class="nav-tabs-custom">
	                <ul class="nav nav-tabs">
	                  	<li class="active"><a href="#tab_1" data-toggle="tab" aria-expanded="false">Thông tin chung</a></li>
	                  	<!-- <li><a href="#tab_2" data-toggle="tab" aria-expanded="true">Chi tiết đơn hàng</a></li> -->
	                </ul>
	                <div class="tab-content">
	                  	<div class="tab-pane active" id="tab_1">
	                  		<div class="row">
		                  		<div class="col-md-6 col-xs-12">
							    	<div class="form-group">
								      	<label for="ten">Họ tên</label>
								      	<input type="text"  id="txtName" value="{!! old('txtName', isset($data) ? $data->full_name : null) !!}" name="full_name" class="form-control" />
									</div>
									
									<div class="form-group">
								      	<label for="txtPhone">Điện thoại</label>
								      	<input type="text" name="phone" value="{!! $data->phone !!}"  class="form-control" />
									</div>
									<div class="form-group">
								      	<label for="txtAddress">Số người lớn</label>
								      	<input type="text" name="audult"  value="{!! $data->audult !!}"  class="form-control" />
									</div>
									<div class="form-group">
								      	<label for="txtAddress">Số trẻ em</label>
								      	<input type="text" name="children"  value="{!! $data->children !!}"  class="form-control" />
									</div>
									<div class="form-group">
								      	<label for="txtAddress">Loại phòng</label>
								      	<select class="form-control" name="cate_room">
								      		@foreach($cateAll as $c)
								      		<option @if($c->id == $cate->id) {{"selected"}} @endif value="{{$c->id}}">{{ $c->name }}
								      		</option>
								      		@endforeach
								      	</select>
								      	
									</div>
									<div class="form-group">
								      	<label for="txtAddress">Số lượng phòng</label>
								      	<input type="number" name="number_room"  value="{!! $data->number_room !!}"  class="form-control" />
									</div>
									<div class="form-group">
								      	<label for="txtAddress">Ngày đến</label>
								      	<input type="date" name="check_in"  value="{!! $data->check_in !!}"  class="form-control" />
									</div>
									<div class="form-group">
								      	<label for="txtAddress">Ngày đi</label>
								      	<input type="date" name="check_out"  value="{!! $data->check_out !!}"  class="form-control" />
									</div>
								</div>
								<div class="col-md-6 col-xs-12">
									
								</div>
							</div>
							<div class="clearfix"></div>
	                  	</div><!-- /.tab-pane -->
	                  	
	                </div><!-- /.tab-content -->
	            </div>
			    <div class="clearfix"></div>
			    <div class="box-footer col-md-12 row">
					<div class="col-md-6">
				    	<button type="submit" class="btn btn-primary">Cập nhật</button>
				    	<button type="button" onclick="javascript:window.location='backend/orders'" class="btn btn-danger">Thoát</button>
			    	</div>
			  	</div>
		    </form>
        </div><!-- /.box-body -->
    </div><!-- /box -->
    
</section><!-- /.content -->
@endsection()
