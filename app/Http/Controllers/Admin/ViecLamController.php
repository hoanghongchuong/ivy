<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\ViecLam;
use App\Province;
use App\LinhVuc;
class ViecLamController extends Controller
{
    public function getList(){
    	$data = ViecLam::orderBy('id','desc')->get();

    	return view('admin.vieclam.index', compact('data'));
    }
    public function getAdd(){
    	$province = Province::all();
    	$linhvuc = LinhVuc::all();
    	return view('admin.vieclam.create', compact('province','linhvuc'));
    }
    public function postAdd(Request $request){
    	$data = new ViecLam;
    	$data->name = $request->txtName;
    	$data->name_en = $request->name_en;
    	$data->alias = $request->txtAlias;
    	$data->province_id = $request->province;
    	$data->linhvuc_id = $request->linhvuc_id;
    	$data->expiration_date = date('Y/m/d', strtotime($request->expiration_date));
    	$data->mota = $request->mota;
    	$data->mota_en = $request->mota_en;
    	$data->content = $request->content;
    	$data->content_en = $request->content_en;
    	$data->title = $request->txtTitle;
    	$data->title_en = $request->title_en;
    	$data->keyword = $request->txtKeyword;
    	$data->keyword_en = $request->keyword_en;
    	$data->description = $request->txtDescription;
    	$data->description_en = $request->description_en;
    	// dd($data);
    	$data->save();
    	return redirect()->route('admin.vieclam.index')->with('status','Thêm mới thành công');
    }
    public function getEdit($id){
    	$data = ViecLam::findOrFail($id);
        $linhvuc = LinhVuc::all();
    	$province = Province::all();
    	return view('admin.vieclam.edit', compact('province','data','linhvuc'));
    }
    public function update(Request $request, $id = null){
    	$data = ViecLam::find($id);
    	$data->name = $request->txtName;
    	$data->name_en = $request->name_en;
    	$data->alias = $request->txtAlias;
    	$data->province_id = $request->province;
    	$data->linhvuc_id = $request->linhvuc_id;
    	$data->expiration_date = date('Y/m/d', strtotime($request->expiration_date));
    	$data->mota = $request->mota;
    	$data->mota_en = $request->mota_en;
    	$data->content = $request->content;
    	$data->content_en = $request->content_en;
    	$data->title = $request->txtTitle;
    	$data->title_en = $request->title_en;
    	$data->keyword = $request->txtKeyword;
    	$data->keyword_en = $request->keyword_en;
    	$data->description = $request->txtDescription;
    	$data->description_en = $request->description_en;
    	// dd($data);
    	$data->save();
    	return redirect()->back()->with('status','Sửa thành công');
    }
    public function deleteById($id){
    	$data = ViecLam::find($id);
    	$data->delete();
    	return redirect()->back()->with('status','Xóa thành công');
    }
}
