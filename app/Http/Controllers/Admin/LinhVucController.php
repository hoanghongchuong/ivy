<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\LinhVuc;
class LinhVucController extends Controller
{
    public function index(){
    	$data = LinhVuc::all();
    	// dd($LinhVuc);
    	return view('admin.linhvuc.list',compact('data'));
    }
    public function getCreate(){

    	return view('admin.linhvuc.add');
    }
    public function postCreate(Request $request){
    	$data = new LinhVuc;
    	$data->name = $request->txtName;
    	$data->name_en = $request->name_en;
    	$data->save();
    	return redirect(route('admin.linhvuc.index'))->with('status','Thêm thành công');
    }

    public function getEdit($id){
    	$data = LinhVuc::where('id',$id)->first();
    	// dd($LinhVuc);
    	return view('admin.linhvuc.edit', compact('data'));
    }
    public function postEdit(Request $request, $id){
    	$data = LinhVuc::where('id',$id)->first();
    	$data->name = $request->txtName;
    	$data->name_en = $request->name_en;
    	$data->save();
    	return redirect()->back()->with('status','Sửa thành công');
    }

    public function delete($id){
    	$data = LinhVuc::find($id);
    	$data->delete();
    	return redirect(route('admin.linhvuc.index'))->with('mess','Xóa thành công');
    }
}
