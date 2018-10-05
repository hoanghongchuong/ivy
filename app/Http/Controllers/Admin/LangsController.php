<?php
namespace App\Http\Controllers\Admin;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Requests\LangRequest;

use Illuminate\Http\Request;
use App\Lang;
use Input, File;
use Validator;



class LangsController extends Controller {

    public function getDanhSach()
    {
        if($_GET['type']=='lang') $trang='ngôn ngữ';
        else if($_GET['type']=='dich-vu') $trang='dich vụ';
        else if($_GET['type']=='bai-viet') $trang='dịch vụ & hỗ trợ';
        else $trang = "bài viết";
        $data = Lang::all();
        if(!empty($_GET['type'])){
            $com=$_GET['type'];
        }else{
            $com='';
        }
        $data = Lang::select()->where('com' , $com)->orderBy('id','desc')->get();
        return view('admin.lang.list', compact('data','trang'));
    }
    public function getAdd()
    {
        if($_GET['type']=='lang') $trang='ngôn ngữ';
        else if($_GET['type']=='dich-vu') $trang='dich vụ';
        else if($_GET['type']=='bai-viet') $trang='dịch vụ & hỗ trợ';
        else $trang = "bài viết";

        if(!empty($_GET['type'])){
            $com=$_GET['type'];
        }else{
            $com='';
        }
        $parent = Lang::select()->where('com' , $com)->get()->toArray();
        return view('admin.lang.add', compact('parent','trang'));
    }
    public function postAdd(LangRequest $request)
    {

        $com= $request->txtCom;
        $cate = new lang;
        $cate->name_vi = $request->txtName_vi;
        $cate->name_en = $request->txtName_en;
        $cate->alias = $request->txtAlias;
        $cate->stt = (int)$request->stt;
        $cate->com = $com;

        if($request->status=='on'){
            $cate->status = 1;
        }else{
            $cate->status = 0;
        }
        if($cate->save()){
            // Insert file tieng viet
            $txtVi ='<?php
            return [';
            $myfile = fopen("resources/lang/vi/label.php", "w") or die("Unable to open file!");
            $lang = Lang::select()->get();
            foreach ($lang as $key => $value) {
                $txtVi .= "'".$value->alias."'".' => '.'"'.$value->name_vi.'",
                ';
            }
            $txtVi .='];';
            fwrite($myfile, $txtVi);
            fclose($myfile);

            // Insert file tieng nhat
            $txtEn ='<?php
            return [';
            $myfile2 = fopen("resources/lang/jp/label.php", "w") or die("Unable to open file!");
            foreach ($lang as $key => $value) {
                $txtEn .= "'".$value->alias."'".' => '.'"'.$value->name_en.'",
                ';
            }
            $txtEn .='];';
            fwrite($myfile2, $txtEn);
            fclose($myfile2);

            
        }
        return redirect('backend/langs?type='.$com)->with('status','Thêm mới thành công !');
    }
    public function getEdit(Request $request)
    {
        if($_GET['type']=='lang') $trang='ngôn ngữ';
        else if($_GET['type']=='dich-vu') $trang='dich vụ';
        else if($_GET['type']=='bai-viet') $trang='dịch vụ & hỗ trợ';
        else $trang = "bài viết";

        if(!empty($_GET['type'])){
            $com=$_GET['type'];
        }else{
            $com='';
        }
        $id= $request->get('id');
        //Tìm article thông qua mã id tương ứng
        $data = Lang::find($id);
        if(!empty($data)){
            if($request->get('hienthi')>0){
                if($data->status == 1){
                    $data->status = 0;
                }else{
                    $data->status = 1;
                }
                $data->update();
                return redirect('backend/lang?type='.$com)->with('status','Cập nhật thành công !');
            }

           // Gọi view edit.blade.php hiển thị bải viết
            return view('admin.lang.edit',compact('data','id','trang'));
        }else{
            $data = Lang::all();
            //return redirect()->route('admin.lang.index')->with('status','Dữ liệu không có thực');
            return redirect('backend/lang?type='.$com)->with('status','Dữ liệu không có thực !');
        }
    }

    public function update(Request $request)
    {
        $this->validate($request,
            ["txtName_vi" => "required"],
            ["txtName_vi.required" => "Bạn chưa nhập tên danh mục"]
        );
        if(!empty($_GET['type'])){
            $com=$_GET['type'];
        }else{
            $com='';
        }
        $id=$request->get('id');
        $news_cate = Lang::find($id);
        if(!empty($news_cate)){

            $news_cate->name_vi = $request->txtName_vi;
            $news_cate->name_en = $request->txtName_en;
            $news_cate->alias = $request->txtAlias;
            $news_cate->stt = (int)$request->stt;
            $news_cate->com = $request->txtCom;
            if($request->status=='on'){
                $news_cate->status = 1;
            }else{
                $news_cate->status = 0;
            }
            if($news_cate->save()){
                // Insert file tieng viet
                $txtVi ='<?php 
                return [
                    ';
                $myfile = fopen("resources/lang/vi/label.php", "w") or die("Unable to open file!");
                $lang = Lang::select()->get();
                foreach ($lang as $key => $value) {
                    $txtVi .= "'".$value->alias."'".' => '.'"'.$value->name_vi.'",
                    ';
                    
                }
                
                $txtVi .='];';
                fwrite($myfile, $txtVi);
                fclose($myfile);

                // Insert file tieng nhat
                $txtEn ='<?php 
                return [';
                $myfile2 = fopen("resources/lang/jp/label.php", "w") or die("Unable to open file!");
                foreach ($lang as $key => $value) {
                    $txtEn .= "'".$value->alias."'".' => '.'"'.$value->name_en.'",
                    ';
                }
               
                $txtEn .='];';
                fwrite($myfile2, $txtEn);
                fclose($myfile2);

               
            }
            return redirect()->back()->with('status','Cập nhật thành công !');
        }else{
            return redirect()->back()->with('status','Dữ liệu không có thực');
        }
    }
    public function getDelete($id)
    {
        if(!empty($_GET['type'])){
            $com=$_GET['type'];
        }else{
            $com='';
        }
        $lang = Lang::findOrFail($id);
        if($lang->delete()){
            // Insert file tieng viet
            $txtVi ='<?php 
            return [
                ';
            $myfile = fopen("resources/lang/vi/label.php", "w") or die("Unable to open file!");
            $lang = Lang::select()->get();
            foreach ($lang as $key => $value) {
                $txtVi .= "'".$value->alias."'".' => '.'"'.$value->name.'",
                ';
            }
            $txtVi .='];';
            fwrite($myfile, $txtVi);
            fclose($myfile);

            // Insert file tieng anh
            $txtEn ='<?php 
            return [';
            $myfile2 = fopen("resources/lang/jp/label.php", "w") or die("Unable to open file!");
            foreach ($lang as $key => $value) {
                $txtEn .= "'".$value->alias."'".' => '.'"'.$value->name_en.'",
                ';
            }
            $txtEn .='];';
            fwrite($myfile2, $txtEn);
            fclose($myfile2);

            
        }
        return redirect()->back()->with('status','Xóa thành công');
    }
    public function getDeleteList($id){
        if($_GET['type']=='lang') $trang='ngôn ngữ';
        else if($_GET['type']=='dich-vu') $trang='dich vụ';
        else if($_GET['type']=='bai-viet') $trang='dịch vụ & hỗ trợ';
        else $trang = "bài viết";

        if(!empty($_GET['type'])){
            $com=$_GET['type'];
        }else{
            $com='';
        }
        $listid = explode(",",$id);
        foreach($listid as $listid_item){
            $lang = Lang::findOrFail($listid_item);
            $lang->delete();
        }
        return redirect()->back()->with('status','Xóa thành công');
    }
}
