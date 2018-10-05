<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use File;
use App\Member;
class MemberController extends Controller
{
    public function getList(){
    	$data = Member::get();
    	return view('admin.member.list', compact('data'));
    }
    public function getAdd(){
    	return view('admin.member.add');
    }
    public function postAdd(Request $req){
    	$img = $req->file('fImages');
        $path_img='upload/banner';
        $img_name='';
        if(!empty($img)){
            $img_name=time().'_'.$img->getClientOriginalName();
            $img->move($path_img,$img_name);
        }
    	$data = new Member();
        $data->name = $req->name;
    	$data->photo = $img_name;
        $data->position = $req ->position;
    	$data->des = $req ->des;
    	$data->des_en = $req ->des_en;
    	$data->save();
    	return redirect()->route('admin.member.index');
    }
    public function getEdit($id){
    	$data = Member::findOrFail($id);
    	return view('admin.member.edit', compact('data'));
    }
    public function update(Request $req, $id){
    	$data = Member::find($id);
        $img = $req->file('fImages');
        $img_current = 'upload/banner/'.$req->img_current;
        // dd($img_current);
        if(!empty($img)){
            $path_img='upload/banner';
            $img_name=time().'_'.$img->getClientOriginalName();
            $img->move($path_img,$img_name);
            $data->photo = $img_name;
            if (File::exists($img_current)) {
                File::delete($img_current);
            }
        }
    	$data->name = $req->name;
        $data->position = $req ->position;
        $data->des = $req ->des;
    	$data->des_en = $req ->des_en;
    	$data->save();
    	return redirect()->route('admin.member.index');
    }
    public function getDelete($id){
    	$data = Member::find($id);
    	$data->delete();
    	return redirect()->back();
    }
}
