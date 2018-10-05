<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Order;
use DB;
class BillController extends Controller
{
    public function getList(){
    	$data = Order::all();
    	return view('admin.bill.list', compact('data'));
    }    
    public function getEdit($id){
        $data = Order::where('id',$id)->first();
        // dd($data);
        $cateAll = DB::table('product_categories')->get();
        $cate = DB::table('product_categories')->where('id', $data->cate_room)->first();
    	return view('admin.bill.edit',compact('data','cate', 'cateAll'));
    }
    public function update(Request $req, $id){
        $data = Order::where('id',$id)->first();     
        $data->full_name = $req->full_name;
        $data->phone = $req->phone;
        $data->audult = $req->audult;   
        $data->children = $req->children;   
        $data->cate_room = $req->cate_room;   
        $data->number_room = $req->number_room;   
        $data->check_in = $req->check_in;   
        $data->check_out = $req->check_out;   
        // dd($data);
        $data->save();
        return redirect(route('admin.bill.index'));
    }
    public function getDelete($id){
    	$order = Order::find($id);
    	$order->delete();
    	return redirect()->back();
    }
}
