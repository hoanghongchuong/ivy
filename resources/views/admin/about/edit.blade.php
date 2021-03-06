@extends('admin.master')
@section('content')
@section('controller', $trang)
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
        	<form method="post" action="backend/about/edit?type={{ @$_GET['type'] }}" enctype="multipart/form-data">
        		<input type="hidden" name="_token" value="{!! csrf_token() !!}" />
        		
      			<div class="nav-tabs-custom">
	                <ul class="nav nav-tabs">
	                  	<li class="active"><a href="#tab_1" data-toggle="tab" aria-expanded="false">Thông tin chung</a></li>
	                  	<li><a href="#tab_3" data-toggle="tab" aria-expanded="true">Tiếng nhật</a></li>
	                  	<li><a href="#tab_2" data-toggle="tab" aria-expanded="true">SEO</a></li>
	                  	
	                  	
	                </ul>
	                <div class="tab-content">
	                  	<div class="tab-pane active" id="tab_1">
	                  		<div class="row">
		                  		<div class="col-md-6 col-xs-12">
		                  			@if($_GET['type']=='the-manh')
		                  			<div class="form-group @if ($errors->first('fImages')!='') has-error @endif">
										<div class="form-group">
											<img src="{{ asset('upload/hinhanh/'.@$data->photo) }}" onerror="this.src='{{asset('public/admin_assets/images/no-image.jpg')}}'" width="200"  alt="NO PHOTO" />
											<input type="hidden" name="img_current" value="{!! @$data->photo !!}">
										</div>
										<label for="file">Chọn File ảnh</label>
								     	<input type="file" id="file" name="fImages" >
								    	<p class="help-block">Width:225px - Height: 162px</p>
								    	@if ($errors->first('fImages')!='')
								      	<label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> {!! $errors->first('fImages'); !!}</label>
								      	@endif
									</div>
									@endif
									
							    	<div class="form-group">
								      	<label for="ten">Tên</label>
								      	<input type="text" name="txtName" id="txtName" value="{{ @$data->name }}"  class="form-control" />
									</div>
									
									
									
							    	<div class="form-group">
								      	<label for="ten">Tên(tiếng nhật)</label>
								      	<input type="text" name="name_en" id="" value="{{ @$data->name_en }}"  class="form-control" />
									</div>
									@if($_GET['type']=='thuc-tap')
									<div class="form-group">
								      	<label for="alias">Link</label>
								      	<input type="text" name="txtAlias" id="" value="{{ @$data->alias }}"  class="form-control" />
								      	
									</div>
									@endif
								</div>
								<input type="hidden" name="txtCom" value="{{ old('txtCom', isset($data) ? @$data->com : null) }}">
								<div class="clearfix"></div>
								<!-- 
								<div class="col-md-12 col-xs-12">
									<div class="box box-info">
						                <div class="box-header">                                               
						                  	<h3 class="box-title">Mô tả</h3>
						                  	<div class="pull-right box-tools">
							                    <button class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
							                    <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
							                </div>
						                </div>
						                <div class="box-body pad">
						        			<textarea name="txtDesc" id="" class="form-control" cols="50" rows="5">{{ @$data->mota }}</textarea>
						        		</div>
						        	</div>
								</div> -->
								<!-- <div class="col-md-12 col-xs-12">
									<div class="box box-info">
						                <div class="box-header">                                               
						                  	<h3 class="box-title">Mô tả(tiếng nhật)</h3>
						                  	<div class="pull-right box-tools">
							                    <button class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
							                    <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
							                </div>
						                </div>
						                <div class="box-body pad">
						        			<textarea name="mota_en" id="" class="form-control" cols="50" rows="5">{{ @$data->mota_en }}</textarea>
						        		</div>
						        	</div>
								</div>
								 -->
								<div class="col-md-12 col-xs-12">
									<div class="box box-info">
						                <div class="box-header">                                               
						                  	<h3 class="box-title">Nội dung</h3>
						                  	<div class="pull-right box-tools">
							                    <button class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
							                    <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
							                </div>
						                </div>
						                <div class="box-body pad">
						        			<textarea name="txtContent" id="txtContent" cols="50" rows="5">{{ @$data->content }}</textarea>
						        		</div>
						        	</div>
								</div>
								
								
							</div>
							<div class="form-group">
							    <label>
						        	<input type="checkbox" name="status" {!! (!isset($data->status) || $data->status==1)?'checked="checked"':'' !!}> Hiển thị
						    	</label>
						    </div>
							<div class="clearfix"></div>
	                  	</div><!-- /.tab-pane -->
	                  	<div class="tab-pane" id="tab_3">
	                  		<div class="row">
		                  										
								<div class="col-md-12 col-xs-12">
									<div class="box box-info">
						                <div class="box-header">                                               
						                  	<h3 class="box-title">Nội dung(tiếng nhật)</h3>
						                  	<div class="pull-right box-tools">
							                    <button class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
							                    <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
							                </div>
						                </div>
						                <div class="box-body pad">
						        			<textarea name="content_en" id="txtContent" cols="50" rows="5">{{ @$data->content_en }}</textarea>
						        		</div>
						        	</div>
								</div>
								<div class="form-group">
						    <label>
						        	<input type="checkbox" name="status_en" {!! (!isset($data->status_en) || $data->status_en==1)?'checked="checked"':'' !!}> Hiển thị
						    	</label>
						    </div>
							</div>
							<div class="clearfix"></div>
	                  	</div><!-- /.tab-pane -->
	                	<div class="tab-pane" id="tab_2">
	                  		<div class="row">
		                    	<div class="col-md-6 col-xs-12">
		                    		<div class="form-group">
								      	<label for="title">Title</label>
								      	<input type="text" name="txtTitle" value="{{ $data->title }}"  class="form-control" />
									</div>
		                    		<div class="form-group">
								      	<label for="keyword">Keyword</label>
								      	<textarea name="txtKeyword" rows="5" class="form-control">{{ $data->keyword }}</textarea>
									</div>
									<div class="form-group">
								      	<label for="description">Description</label>
								      	<textarea name="txtDescription" rows="5" class="form-control">{{ $data->description }}</textarea>
									</div>
		                    	</div>
		                    	<div class="col-md-6 col-xs-12">
		                    		<div class="form-group">
								      	<label for="keyword">Title tiếng nhật</label>
								      	<input name="title_en" rows="5" class="form-control" value="{{ $data->title_en }}" />
									</div>
		                    		<div class="form-group">
								      	<label for="keyword">Keyword tiếng nhật</label>
								      	<textarea name="keyword_en" rows="5" class="form-control">{!! $data->keyword_en !!}</textarea>
									</div>
									<div class="form-group">
								      	<label for="description">Description tiếng nhật</label>
								      	<textarea name="description_en" rows="5" class="form-control">{!! $data->description_en !!}</textarea>
									</div>
		                    	</div>
	                    	</div>
	                    	<div class="clearfix"></div>
	                	</div>

	                	
	                </div><!-- /.tab-content -->
	            </div>
			    <div class="clearfix"></div>
			    <div class="box-footer">
			    	<div class="row">
						<div class="col-md-6">
					    	<button type="submit" class="btn btn-primary">Cập nhật</button>
					    	<button type="button" class="btn btn-danger" onclick="javascript:window.location='backend/about?type={{ @$_GET[type] }}'">Thoát</button>
				    	</div>
			    	</div>
			  	</div>
		    </form>
        </div><!-- /.box-body -->
    </div><!-- /.box -->
    
</section><!-- /.content -->
@endsection()
