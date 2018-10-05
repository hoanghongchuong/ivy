@extends('admin.master')
@section('content')
@section('controller','Product')
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
        	<form method="post" name="frmEditProduct" action="backend/product/edit?id={{$id}}" enctype="multipart/form-data">
        		{{ csrf_field() }}
        		
      			<div class="nav-tabs-custom">
	                <ul class="nav nav-tabs">
	                  	<li class="active"><a href="#tab_1" data-toggle="tab" aria-expanded="false">Thông tin chung</a></li>
	                  	<li><a href="#tab_2" data-toggle="tab" aria-expanded="true">Tiếng anh</a></li>
	                  	<li><a href="#tab_3" data-toggle="tab" aria-expanded="true">Album hình</a></li>
	                  	<li><a href="#tab_4" data-toggle="tab" aria-expanded="true">SEO</a></li>
	                </ul>
	                <div class="tab-content">
	                  	<div class="tab-pane active" id="tab_1">
	                  		<div class="row">
		                  		<div class="col-md-6 col-xs-12">
									<div class="form-group @if ($errors->first('fImages')!='') has-error @endif">
										<div class="form-group">
											<img src="{{ asset('upload/product/'.$data->photo) }}" onerror="this.src='{{asset('public/admin_assets/images/no-image.jpg')}}'" width="200"  alt="NO PHOTO" />
											<input type="hidden" name="img_current" value="{!! @$data->photo !!}">
											<!-- <a href="{!! asset('backend/product/edit?id='.$id.'&type='.@$_GET['type'].'&delete_bg='.@$data->photo) !!}" class="img_bg"><img src="{!! asset('public/admin_assets/images/del.png') !!}" alt="Xóa hình"></a> -->
										</div>
										<label for="file">Chọn File ảnh</label>
								     	<input type="file" id="file" name="fImages" >
								    	<p class="help-block">Width:225px - Height: 162px</p>
								    	@if ($errors->first('fImages')!='')
								      	<label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> {!! $errors->first('fImages'); !!}</label>
								      	@endif
									</div>
									
									<div class="clearfix"></div>
									<!-- <div class="form-group">
								      	<label for="ten">Danh mục cha</label>
								      	<select name="txtProductCate" class="form-control">

								      		<option value="0">Chọn danh mục</option>
								      		<?php cate_parent($parent,0,"--",$data->cate_id) ?>
								      	</select>
									</div> -->
							    	<div class="form-group @if ($errors->first('txtName')!='') has-error @endif">
								      	<label for="ten">Tên</label>
								      	<input type="text" name="txtName" id="txtName" value="{{ $data->name }}"  class="form-control" />
								      	@if ($errors->first('txtName')!='')
								      	<label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> {!! $errors->first('txtName'); !!}</label>
								      	@endif
									</div>
									<div class="form-group @if ($errors->first('txtAlias')!='') has-error @endif">
								      	<label for="alias">Đường dẫn tĩnh</label>
								      	<input type="text" name="txtAlias" id="txtAlias" value="{{ $data->alias }}"  class="form-control" />
								      	@if ($errors->first('txtAlias')!='')
								      	<label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> {!! $errors->first('txtAlias'); !!}</label>
								      	@endif
									</div>
																		
								</div>
								<div class="col-md-12 col-xs-12">
									
									<div class="form-group">
								      	<label for="desc">Mô tả</label>
								      	<textarea name="mota" rows="5" id="" class="form-control">{{ $data->mota }}</textarea>
									</div>
									<div class="form-group">
								      	<label for="desc">Nội dung</label>
								      	<textarea name="txtContent" rows="5" id="txtContent" class="form-control">{{ $data->content }}</textarea>
									</div>
									<div class="form-group">
								      	<label for="desc">Bảng giá</label>
								      	<textarea name="banggia" rows="5" id="txtContent" class="form-control">{{ $data->banggia }}</textarea>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
	                  	</div><!-- /.tab-pane -->

	                  	<div class="tab-pane" id="tab_2">
	                  		
	                  		<div class="row">
		                  		<div class="col-md-6 col-xs-12">
		                    		<div class="form-group">
								      	<label for="txtTitle">Tên</label>
								      	<input type="text" name="name_en" id="name_en" value="{{ isset($data->name_en) ? $data->name_en : '' }}"  class="form-control" />
									</div>
		                    	</div>
								
							</div>
							<div class="row">
								<div class="col-md-12 col-xs-12">
									<div class="form-group">
										<label for="">Mô tả</label>
										<textarea name="mota_en" rows="5" id="" class="form-control">{!! isset($data) ? $data->mota_en : '' !!}</textarea>
									</div>
									<div class="box box-info">
						                <div class="box-header">
						                  	<h3 class="box-title">Nội dung</h3>
						                  	<div class="pull-right box-tools">
							                    <button class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
							                    <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
							                </div>
						                </div>
						                <div class="box-body pad">
						        			<textarea name="content_en" id="txtContent" cols="50" rows="5">{!! isset($data) ? $data->content_en : '' !!}</textarea>
						        		</div>
						        	</div>
						        	<div class="form-group">
								      	<label for="desc">Bảng giá</label>
								      	<textarea name="banggia_en" rows="5" id="txtContent" class="form-control">{{ $data->banggia_en }}</textarea>
									</div>
								</div>
							</div>
	                    	<div class="clearfix"></div>
	                	</div><!-- /.tab-pane -->
	                  	<div class="tab-pane" id="tab_3">
	                  		<div class="form-group">
		                      @foreach($product_img as $key => $item)
		                        <div class="form-group" id="{!! $key !!}">
		                            <img src="{!! asset('upload/hasp/'.$item['photo']) !!}" style="max-width: 150px; margin: 20px;" idImg="{!! $item['id'] !!}" id="{!! $key !!}">

		                            <a href="javascript:" type="button" id="del_img" class="btn btn-danger btn-circle icon_del"><i class="fa fa-times"></i></a>
		                        </div>
		                      @endforeach


		                      <label class="control-label">Chọn ảnh</label>
		                      <input id="input-2" name="detailImg[]" type="file" class="file" multiple data-show-upload="false" data-show-caption="true" data-allowed-file-extensions='["jpeg", "jpg", "png", "gif"]'>
		                    </div>
	                  		
	                    	<div class="clearfix"></div>
	                	</div><!-- /.tab-pane -->
	                	<div class="tab-pane" id="tab_4">
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
								      	<label for="keyword">Title english</label>
								      	<input name="title_en" rows="5" class="form-control" value="{{ @$data->title_en }}"></input>
									</div>
		                    		<div class="form-group">
								      	<label for="keyword">Keyword english</label>
								      	<textarea name="keyword_en" rows="5" class="form-control">{!! @$data->keyword_en !!}</textarea>
									</div>
									<div class="form-group">
								      	<label for="description">Description english</label>
								      	<textarea name="description_en" rows="5" class="form-control">{!! @$data->description_en !!}</textarea>
									</div>
		                    	</div>
	                    	</div>
	                    	<div class="clearfix"></div>
	                	</div><!-- /.tab-pane -->
	                </div><!-- /.tab-content -->
	            </div>
	            <div class="clearfix"></div>
			    <div class="col-md-6">
			    	<div class="form-group">
					      <label for="ten">Số thứ tự</label>
					      <input type="number" min="1" name="stt" value="{!! isset($data->status) ? $data->stt : (count($product)+1) !!}" class="form-control" style="width: 100px;">
				    </div>
				    
				    <div class="form-group">
					    <label>
				        	<input type="checkbox" name="status" {!! (!isset($data->status) || $data->status==1)?'checked="checked"':'' !!}> Hiển thị
				    	</label>
				    </div>
				    <!-- <div class="form-group">
					    <label>
				        	<input type="checkbox" name="tinhtrang" {!! (!isset($data->tinhtrang) || $data->tinhtrang==1)?'checked="checked"':'' !!}> Tình trạng
				    	</label>
				    </div> -->
			    	<div class="form-group">
					    <label>
				        	<input type="checkbox" name="noibat" {!! (!isset($data->noibat) || $data->noibat==1)?'checked="checked"':'' !!}> Nổi bật
				    	</label>
				    </div>
				    <!-- <div class="form-group">
					    <label>
				        	<input type="checkbox" name="spbc" {!! (!isset($data->spbc) || $data->spbc==1)?'checked="checked"':'' !!}> Sale off
				    	</label>
				    </div> -->
			    </div>
			    <div class="clearfix"></div>
			    <div class="box-footer">
			    	<div class="row">
						<div class="col-md-6">
					    	<button type="submit" class="btn btn-primary">Cập nhật</button>
					    	<button type="button" class="btn btn-danger" onclick="javascript:window.location='backend/product'">Thoát</button>
				    	</div>
			    	</div>
			  	</div>
		    </form>
        </div><!-- /.box-body -->
    </div><!-- /.box -->
    
</section><!-- /.content -->
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
	    <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        <h4 class="modal-title">Thêm hình ảnh liên quan</h4>
	    </div>
      	<div class="modal-body">
      		<!-- <div class="container">
			    <div class="row">
			        <div class="col-md-12">
			            <h1>Upload Multiple Images using dropzone.js and Laravel</h1>
			            {!! Form::open([ 'route' => [ 'dropzone.store' ], 'files' => true, 'enctype' => 'multipart/form-data', 'class' => 'dropzone', 'id' => 'image-upload' ]) !!}
			            <div>
			                <h3>Upload Multiple Image By Click On Box</h3>
			            </div>
			            {!! Form::close() !!}
			        </div>
			    </div>
			</div>

			<script type="text/javascript">
			        Dropzone.options.imageUpload = {
			            maxFilesize         :       1,
			            acceptedFiles: ".jpeg,.jpg,.png,.gif"
			        };
			</script> -->
      		<div class="row">
		        <div class="col-md-12">
		        
			        <form method="post" id="upload" action="{{ route('admin.uploadImg') }}" enctype="multipart/form-data">
			        	<input type="hidden" name="_token" value="{!! csrf_token() !!}" />
			            <div class="row">
			                <div class="col-md-4">
			                    <div id="drop">
			                        Kéo thả hình vào đây

			                        <a>Chọn</a>
			                        <input type="file" name="upl" multiple />
			                    </div>
			                </div>
			                <div class="col-md-8">
			                    <ul id="list_uploaded">
			                    </ul>
			                </div>
			            </div>
			        </form>
		        </div>
		    </div>
      	</div>
      	<div class="modal-footer">
        	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      	</div>
    </div>

  </div>
</div>
@endsection()
