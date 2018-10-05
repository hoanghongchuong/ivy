<?php 
namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\App;
use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Products;
use App\ProductCate;
use App\NewsLetter;
use App\Recruitment;
use DB,Cache,Mail;
use Session;
use App\Campaign;
use App\Order;
use App\CampaignCard;
use App\District;
use App\ChiNhanh;
use App\Contact;
use App\Province;
class IndexController extends Controller {
	protected $setting = NULL;
	
	/*
	|--------------------------------------------------------------------------
	| Welcome Controller
	|--------------------------------------------------------------------------
	|
	| This controller renders the "marketing page" for the application and
	| is configured to only allow guests. Like most of the other sample
	| controllers, you are free to modify or remove it as you desire.
	|
	*/

	/**
	 * Create a new controller instance.
	 *
	 * @return void
	 */
	public function __construct()
	{
		
    	$setting = DB::table('setting')->select()->where('id',1)->get()->first();
    	
    	$dichvu = DB::table('news')->select()->where('status',1)->where('com','dich-vu')->orderBy('stt','asc')->get();
    	
    	$about = DB::table('about')->where('com','gioi-thieu')->get();
    	$biendich = DB::table('langs')->orderBy('stt','asc')->get();
    	Cache::forever('setting', $setting);
        
        Cache::forever('dichvu', $dichvu);
        
        Cache::forever('about', $about);
        Cache::forever('biendich', $biendich);
        session_start();
        // App::setLocale(Session::get('locale'));
		if(Session::has('locale')){
			App::setLocale(Session::get('locale'));
		}
		
	}

	/**
	 * Show the application welcome screen to the user.
	 *
	 * @return Response
	 */
	public function getLangs(Request $request)
	{
		 // App::setLocale($request->id);
		//Session::set('locale', $request->id);
		Session::put('locale', $request->id);
		return redirect()->back();
	}
	public function index()
	{
		$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','index')->get()->first();
		$banner_sidebar = DB::table('banner_content')->where('position',5)->get();
		$tintuc_moinhat = DB::table('news')->where('com', 'tin-tuc')->where('status',1)->orderBy('id','desc')->first();
		$com='index';
		$hot_news = DB::table('news')->where('status',1)->where('noibat',1)->where('com', 'tin-tuc')->orderBy('id','desc')->take(8)->get();
		$about = DB::table('about')->where('com', 'gioi-thieu')->first();		
		$partners = DB::table('partner')->where('status',1)->orderBy('id','desc')->get();
		$slogans = DB::table('slogan')->orderBy('id','asc')->get();
		
		// Cấu hình SEO
		$setting = Cache::get('setting');
		$slider = DB::table('slider')->get();
		$title = $setting->title;
		$keyword = $setting->keyword;
		$description = $setting->description;
		// End cấu hình SEO
		$img_share = asset('upload/hinhanh/'.$setting->photo);
		return view('templates.index_tpl', compact('banner_danhmuc','com','about','tintuc_moinhat','keyword','description','title','img_share','hot_news','slider','banner_sidebar','partners','slogans'));
	}
	
	public function getAbout()
	{
		$about = DB::table('about')->select()->where('com', 'gioi-thieu')->first();
		$members = DB::table('members')->orderBy('id', 'desc')->get();
		$com='gioi-thieu';
		$lang = Session::get('locale');
		$setting = Cache::get('setting');
		
		// Cấu hình SEO
		if($lang == 'vi'){
			if(!empty($about->title)){
				$title = $about->title;
			}else{
				$title = $about->name;
			}
			$keyword = $about->keyword;
			$description = $about->description;
		}
		if($lang == 'en'){
			if(!empty($about->title_en)){
				$title = $about->title_en;
			}else{
				$title = $about->name_en;
			}
			$keyword_en = $about->keyword_en;
			$description_en = $about->description_en;
		}
		// $img_share = asset('upload/hinhanh/'.$about->photo);
		 //Cấu hình SEO
		if(!empty($about->title)){
			$title = $about->title;
		}else{
			$title = $about->name;
		}
		$keyword = $about->keyword;
		$description = $about->description;
		// End cấu hình SEO

		return view('templates.about_tpl', compact('about','news','slider_about','members','keyword','description','title','img_share','com'));
	}
	public function search(Request $request)
	{
		$search = $request->txtSearch;
		
		$lang = Session::get('locale');
		// Cấu hình SEO
		$title = "Search: ".$search;
		
		$description = "Search: ".$search;
		$img_share = '';
		$com = 'search';

		$value = ['tin-tuc','tuyen-dung'];
		// End cấu hình SEO
		if($lang =='vi'){
			$data = DB::table('news')->whereIn('com', $value)->where('name', 'LIKE', '%' . $search . '%')->orderBy('id','DESC')->paginate(20);
		}
		if($lang =='jp'){
			$data = DB::table('news')->whereIn('com', $value)->where('name_en', 'LIKE', '%' . $search . '%')->orderBy('id','DESC')->paginate(20);
		}
		return view('templates.search_tpl', compact('data','description','title','img_share','search', 'com'));
	}

	public function getNews()
	{
		
		$cateNews = DB::table('news_categories')->where('com','tin-tuc')->get();
		$news = DB::table('news')->select()->where('status',1)->where('com','tin-tuc')->orderby('id','desc')->take(5)->get();
		$cate_pro = DB::table('product_categories')->where('status',1)->where('parent_id',0)->orderby('id','asc')->get();
		$tintuc = DB::table('news')->select()->where('status',1)->where('com','tin-tuc')->orderby('id','desc')->paginate(9);
		$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','tin-tuc')->get()->first();
		$tintuc_noibat = DB::table('news')->select()->where('status',1)->where('noibat',1)->where('com','tin-tuc')->take(5)->get();
		// $camnhan_khachhang = DB::table('lienket')->select()->where('status',1)->where('com','cam-nhan')->orderby('stt','asc')->get();
		$com='tin-tuc';
		// Cấu hình SEO
		$lang = Cache::get('lang');
        if($lang == 'vi'){
        	$title = "News";
			$keyword = "News";
			$description = "News";
        }
		if($lang == 'en'){
			$title = "News";
			$keyword = "News";
			$description = "News";
		}
		$img_share = '';
		// End cấu hình SEO
		return view('templates.news_tpl', compact('tintuc','news','banner_danhmuc','tintuc_noibat','camnhan_khachhang','keyword','description','title','img_share','com','cateNews','cate_pro'));
	}
	public function getListNews($alias)
	{		
		
		$lang = Session::get('locale');
		$tintuc_cate = DB::table('news_categories')->select()->where('status',1)->where('alias',$alias)->get()->first();
		
		if(!empty($tintuc_cate) && $tintuc_cate->com == 'tin-tuc'){
			$com = 'tin-tuc';
			$tintuc = DB::table('news')				
				->where('cate_id',$tintuc_cate->id)
				->orderBy('id','desc');
			if($lang == 'vi'){
				$tintuc = $tintuc->where('status',1)->paginate(9);
			}elseif($lang =='jp'){
				$tintuc = $tintuc->where('status_en',1)->paginate(9);
			}

			$now = Carbon::now();
			$now_current = $now->subMonths(0)->format('Y-m');
            $now_one = $now->subMonths(1)->format('M Y');
            $now_two = $now->subMonths(2)->format('M Y');
            $now_three = $now->subMonths(3)->format('M Y');

            $news = DB::table('news')				
				->where('cate_id',$tintuc_cate->id)
				->orderBy('id','desc');
			if($lang == 'vi'){
				$news = $news->where('status',1)->where('created_at', 'like',$now_current.'%')->get();
			}elseif($lang =='jp'){
				$news = $news->where('status_en',1)->where('created_at', 'like',$now_current.'%')->get();
			}
            // dd($news);
            // dd(Carbon::parse($item->created_at)->format('Y M'));
             
			$setting = Cache::get('setting');
			if($lang == 'vi'){
				if(!empty($tintuc_cate->title)){
					$title = $tintuc_cate->title;
				}else{
					$title = $tintuc_cate->name;
				}
				$keyword = $tintuc_cate->keyword;
				$description = $tintuc_cate->description;
				$img_share = asset('upload/news/'.$tintuc_cate->photo);
			}
			if($lang =='jp'){
				if(!empty($tintuc_cate->title_en)){
					$title = $tintuc_cate->title_en;
				}else{
					$title = $tintuc_cate->name_en;
				}				
				$keyword = $tintuc_cate->keyword_en;
				$description = $tintuc_cate->description_en;
				$img_share = asset('upload/news/'.$tintuc_cate->photo);
			}
			// End cấu hình SEO
			return view('templates.news_list', compact('tintuc','tintuc_cate','banner_danhmuc','keyword','description','title','img_share','hot_news','com','now_current','now_one','now_two', 'now_three'));
		}elseif($tintuc_cate->com == 'dao-tao'){
			$com = 'dao-tao';
			$data = DB::table('news')->where('cate_id', $tintuc_cate->id);
			if($lang =='vi'){
				$data = $data->where('status',1)->get();
			}elseif($lang =='jp'){
				$data = $data->where('status_en',1)->get();
			}
			
			if($lang == 'vi'){
				if(!empty($tintuc_cate->title)){
					$title = $tintuc_cate->title;
				}else{
					$title = $tintuc_cate->name;
				}
				
				$keyword = $tintuc_cate->keyword;
				$description = $tintuc_cate->description;
				$img_share = asset('upload/news/'.$tintuc_cate->photo);
			}
			if($lang =='jp'){
				if(!empty($tintuc_cate->title_en)){
					$title = $tintuc_cate->title_en;
				}else{
					$title = $tintuc_cate->name_en;
				}				
				$keyword = $tintuc_cate->keyword_en;
				$description = $tintuc_cate->description_en;
				$img_share = asset('upload/news/'.$tintuc_cate->photo);
			}
			return view('templates.daotao', compact('data','title', 'description', 'keyword', 'tintuc_cate','com'));
		}elseif($tintuc_cate->com == 'tuyen-dung'){
			$com = 'tuyen-dung';
			$data = DB::table('news')->where('cate_id', $tintuc_cate->id);
			if($lang =='vi'){
				$data = $data->where('status',1)->paginate(12);
			}elseif($lang =='jp'){
				$data = $data->where('status_en',1)->paginate(12);
			}
			
			if($lang == 'vi'){
				if(!empty($tintuc_cate->title)){
					$title = $tintuc_cate->title;
				}else{
					$title = $tintuc_cate->name;
				}
				
				$keyword = $tintuc_cate->keyword;
				$description = $tintuc_cate->description;
				$img_share = asset('upload/news/'.$tintuc_cate->photo);
			}
			if($lang =='jp'){
				if(!empty($tintuc_cate->title_en)){
					$title = $tintuc_cate->title_en;
				}else{
					$title = $tintuc_cate->name_en;
				}				
				$keyword = $tintuc_cate->keyword_en;
				$description = $tintuc_cate->description_en;
				$img_share = asset('upload/news/'.$tintuc_cate->photo);
			}
			return view('templates.tuyendung_tpl', compact('data','title', 'description', 'keyword', 'tintuc_cate','com'));
		}
		else{
			return redirect()->route('getErrorNotFount');
		}
	}
	public function getNewsDate($cate, $alias)
	{
		$lang = Session::get('locale');
		$cate = $cate;
		$tintuc_cate = DB::table('news_categories')->select()->where('status',1)->where('alias',$cate)->get()->first();
		$data = DB::table('news')               
            ->where('cate_id',$tintuc_cate->id)
            ->orderBy('id','desc');
        if($lang == 'vi'){
            $data = $data->where('status',1)->where('created_at', 'like',$alias.'%')->paginate(12);
        }elseif($lang =='jp'){
            $data = $data->where('status_en',1)->where('created_at', 'like',$alias.'%')->paginate(12);
        }

		return view('templates.news_date', compact('data','lang','tintuc_cate','cate'));
	}
	public function getDichvu()
	{
		$lang = Session::get('locale');
		$tintuc = DB::table('news')->select()->where('status',1)->where('com','dich-vu')->orderby('stt','asc')->get();
		$categories = DB::table('news_categories')->where('parent_id', 0)->where('com', 'dich-vu')->get();
		$quytrinh = DB::table('about')->where('com', 'dich-vu')->first();
		$com='dich-vu';
		// Cấu hình SEO
		if($lang == 'vi'){
			$title = "Dịch vụ";
			$keyword = "Dịch vụ";
			$description = "Dịch vụ";
		}
		if($lang == 'en'){
			$title = "Service";
			$keyword = "Service";
			$description = "Service";
		}
		$img_share = '';
		// End cấu hình SEO
		return view('templates.dichvu', compact('tintuc','com','categories','keyword','description','title','img_share', 'cate_service','product_news', 'quytrinh'));
	}

	public function getCateService(){
		$cate_service = DB::table('news_categories')->where('status',1)->where('com','dich-vu')->orderBy('id','asc')->get();
		return view('templates.cateservice_tpl', compact('cate_service'));
	}

	public function getHoivien()
	{
		$about_hoivien = DB::table('about')->select()->where('com','hoi-vien')->get()->first();
		$about_chiase = DB::table('about')->select()->where('com','chia-se')->get()->first();
		$camnhan_khachhang = DB::table('lienket')->select()->where('status',1)->where('com','cam-nhan')->orderby('stt','asc')->get();
		$tieuchi_hoivien = DB::table('lienket')->select()->where('status',1)->where('com','tieu-chi')->orderby('stt','asc')->get();
		$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','hoi-vien')->get()->first();
		$com='hoi-vien';
		// Cấu hình SEO
		$title = "Hội viên";
		$keyword = "Hội viên";
		$description = "Hội viên";
		$img_share = '';
		// End cấu hình SEO
		return view('templates.hoivien_tpl', compact('about_hoivien','com','about_chiase','banner_danhmuc','tieuchi_hoivien','camnhan_khachhang','keyword','description','title','img_share'));
	}
	public function gallery()
	{		
		$data = DB::table('lienket')->where('com', 'thu-vien')->where('status', 1)->paginate(30);
		$com='gallery';
		// Cấu hình SEO
		$title = "Gallery";
		$keyword = "Gallery";
		$description = "Gallery";
		$img_share = '';
		// End cấu hình SEO
		return view('templates.thuvienanh_tpl', compact('data','com','keyword','description','title','img_share'));
	}
	public function getDichVuList($id)
	{
		//Tìm article thông qua mã id tương ứng
		$tintuc_cate = DB::table('news_categories')->select()->where('status',1)->where('com','dich-vu')->where('alias',$id)->get()->first();
		if(!empty($tintuc_cate)){
			$tintuc = DB::table('news')->select()->where('status',1)->where('cate_id',$tintuc_cate->id)->orderBy('stt','asc')->paginate(12);
			$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','dich-vu')->get()->first();
			$tintuc_moinhat_detail = DB::table('news')->select()->where('status',1)->where('com','tin-tuc')->orderby('created_at','desc')->take(6)->get();
			$hot_news = DB::table('news')->where('status',1)->where('noibat',1)->orderBy('created_at','desc')->take(5)->get();
			$setting = Cache::get('setting');

			if(!empty($tintuc_cate->title)){
				$title = $tintuc_cate->title;
			}else{
				$title = $tintuc_cate->name;
			}
			
			$keyword = $tintuc_cate->keyword;
			$description = $tintuc_cate->description;
			$img_share = asset('upload/product/'.$tintuc_cate->photo);

			// End cấu hình SEO
			return view('templates.dichvulist_tpl', compact('tintuc','tintuc_cate','banner_danhmuc','keyword','description','title','img_share','tintuc_moinhat_detail','hot_news'));
		}else{
			return redirect()->route('getErrorNotFount');
		}
	}
	public function getDichVuDetail($id)
	{
		$service = DB::table('news')->where('com', 'dich-vu')->get();
		$news_detail = DB::table('news')->select()->where('status',1)->where('alias',$id)->where('com','dich-vu')->get()->first();

		if(!empty($news_detail)){

			//$cate_baiviet = DB::table('news_categories')->select()->where('status',1)->where('com','bai-viet')->where('id',$news_detail->cate_id)->get()->first();
			$baiviet_khac = DB::table('news')->select()->where('status',1)->where('alias','<>',$id)->where('com','dich-vu')->orderby('created_at','desc')->take(2)->get();
			$tintuc_moinhat_detail = DB::table('news')->select()->where('status',1)->where('com','tin-tuc')->orderby('created_at','desc')->take(6)->get();
			$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','dich-vu')->get()->first();
			$quangcao = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','quang-cao')->get();
			$hot_news = DB::table('news')->where('status',1)->where('noibat',1)->orderBy('created_at','desc')->take(5)->get();
			$albums = DB::table('images')->where('service_id', $news_detail->id)->get();
			// dd($albums);
			$com='dich-vu';
			$setting = Cache::get('setting');
			// Cấu hình SEO
			if(!empty($news_detail->title)){
				$title = $news_detail->title;
			}else{
				$title = $news_detail->name;
			}
			$keyword = $news_detail->keyword;
			$description = $news_detail->description;
			$img_share = asset('upload/news/'.$news_detail->photo);

			return view('templates.dichvu_detail_tpl', compact('news_detail','com','quangcao','service','albums','banner_danhmuc','baiviet_khac','keyword','description','title','img_share','hot_news'));
		}else{
			return redirect()->route('getErrorNotFount');
		}
		
	}
	public function getNewsDetail($cate, $alias)
	{

		
		$lang = Session::get('locale');
		$news_detail = DB::table('news')->where('alias',$alias)->first();
		// dd($news_detail);
		$category = DB::table('news_categories')->where('id', $news_detail->cate_id)->first();

		if(!empty($news_detail)){			
			$news = DB::table('news')->select()->where('status',1)->where('com','tin-tuc')->orderby('id','desc')->take(5)->get();
			$com='tin-tuc';
			$setting = Cache::get('setting');
			$newsSamCate = DB::table('news')
					->where('cate_id', $news_detail->cate_id)
					->where('status',1)
					->inRandomOrder()
					->take(2)->get();

			// Cấu hình SEO
			if($lang == 'vi'){
				if(!empty($news_detail->title)){
					$title = $news_detail->title;
				}else{
					$title = $news_detail->name;
				}
				$keyword = $news_detail->keyword;
				$description = $news_detail->description;
			}
			if($lang == 'jp'){
				if(!empty($news_detail->title_en)){
					$title = $news_detail->title_en;
				}else{
					$title = $news_detail->name_en;
				}
				$keyword = $news_detail->keyword_en;
				$description = $news_detail->description_en;
			}
			$img_share = asset('upload/news/'.$news_detail->photo);

			return view('templates.news_detail_tpl', compact('news_detail','com','keyword','description','title','img_share','news','category','newsSamCate'));
		}else{
			return redirect()->route('getErrorNotFount');
		}
		
	}
	public function getNewsTuyenDungDetail($id){
		$lang = Cache::get('lang');
		$news_detail = DB::table('news')->where('status',1)->where('com','tuyen-dung')->where('alias',$id)->first();
		$data = DB::table('news')
				->where('cate_id', $news_detail->cate_id)
				->where('id', '<>', $news_detail->id)
				->take(2)
				->inRandomOrder()
				->get();
		if(!empty($news_detail)){			
			$com='tuyen-dung';
			$setting = Cache::get('setting');			
			// Cấu hình SEO
			if($lang =='vi'){
				if(!empty($news_detail->title)){
				$title = $news_detail->title;
				}else{
					$title = $news_detail->name;
				}
				$keyword = $news_detail->keyword;
				$description = $news_detail->description;
			}
			if($lang =='en'){
				if(!empty($news_detail->title_en)){
				$title = $news_detail->title_en;
				}else{
					$title = $news_detail->name_en;
				}
				$keyword = $news_detail->keyword_en;
				$description = $news_detail->description_en;
			}
			
			$img_share = asset('upload/news/'.$news_detail->photo);

			return view('templates.tuyendung_detail', compact('news_detail','com','keyword','description','title','img_share', 'data'));
		}else{
			return redirect()->route('getErrorNotFount');
		}
	}
	
	public function faq()
	{
		$lang = Session::get('locale');

		$faq = DB::table('gioithieu')->get();		
        if($lang == 'vi'){
        	$title = "FAQ";
			$keyword = "FAQ";
			$description = "FAQ";
        }
		if($lang == 'jp'){
			$title = "FAQ";
			$keyword = "FAQ";
			$description = "FAQ";
		}
		$img_share = '';
		$com='faq';		
		return view('templates.faq', compact('title', 'keyword', 'description','faq','lang'));
	}
	public function thuNgo()
	{
		$lang = Session::get('locale');
		$data = DB::table('about')->where('com', 'thu-ngo')->first();
		$com = 'gioi-thieu';
		if($lang == 'vi'){
        	$title = "Thư Ngỏ";
			$keyword = "Thư Ngỏ";
			$description = "Thư Ngỏ";
        }
		if($lang == 'jp'){
			$title = "公開書簡";
			$keyword = "公開書簡";
			$description = "公開書簡";
		}
		return view('templates.thungo', compact('data', 'lang','com','title','description','keyword'));
	}
	public function themanh()
	{		
		$lang = Session::get('locale');
		$data = DB::table('lienket')->where('com','the-manh')->where('status', 1)->get();
		$com = 'gioi-thieu';
		if($lang == 'vi'){
        	$title = "Thế mạnh";
			$keyword = "Thế mạnh";
			$description = "Thế mạnh";
        }
		if($lang == 'jp'){
			$title = "強さ";
			$keyword = "強さ";
			$description = "強さ";
		}
		return view('templates.themanh', compact('data', 'title', 'description', 'keyword','com'));
	}
	public function thongTin()
	{
		$lang = Session::get('locale');
		$data = DB::table('lienket')->where('com', 'thong-tin')->get();
		$com = 'gioi-thieu';
		if($lang == 'vi'){
        	$title = "Thông tin công ty";
			$keyword = "Thông tin công ty";
			$description = "Thông tin công ty";
        }
		if($lang == 'jp'){
			$title = "会社情報";
			$keyword = "会社情報";
			$description = "会社情報";
		}
		return view('templates.thongtin', compact('data', 'lang','com','title','description','keyword'));
	}

	public function xuatKhau()
	{
		$lang = Session::get('locale');
		$data = DB::table('news')->where('com', 'xuat-khau')->get();
		$com = 'xuat-khau';
		if($lang == 'vi'){
        	$title = "Xuất khẩu lao động";
			$keyword = "Xuất khẩu lao động";
			$description = "Xuất khẩu lao động";
        }
		if($lang == 'jp'){
			$title = "外国人技能実習制度とは";
			$keyword = "外国人技能実習制度とは";
			$description = "外国人技能実習制度とは";
		}
		return view('templates.xuatkhau', compact('data', 'lang', 'title', 'keyword', 'description','com'));		
	}
	public function getContact()
    {
        $lang = Session::get('locale');
        if($lang == 'vi'){
        	$title = "Liên hệ";
			$keyword = "Liên hệ";
			$description = "Liên hệ";
        }
		if($lang == 'jp'){
			$title = "お問い合わせ";
			$keyword = "お問い合わせ";
			$description = "お問い合わせ";
		}
		$img_share = '';
		$com='lien-he';
		
		// End cấu hình SEO
        return view('templates.contact_tpl', compact('lien-he','keyword','description','title','com'));
    }

    /**
     * post contact action
     * @param  Request $request
     * @return redirect
     */
    public function postContact(Request $request)
	{
		
		$data = new Contact();
		$data->name = $request->name;
		$data->phone = $request->phone;
		// $data->address = $request->adress;
		$data->email = $request->email;
		$data->content = $request->content;
		$data->save();
		if($lang == 'vi'){
			echo "<script type='text/javascript'>
			alert('Cảm ơn bạn đã gửi liên hệ!');
			window.location = '".url('/')."' </script>";
		}
		if($lang == 'en'){
			echo "<script type='text/javascript'>
			alert('Thank you for contacting us!');
			window.location = '".url('/')."' </script>";
		}
		
	}
	
	public function postNewsLetter(Request $request)
	{
		$this->validate($request,
            ["txtEmail" => "required"],
            ["txtEmail.required" => "Bạn chưa nhập email"]
        );
        $kiemtra_mail = DB::table('newsletter')->select()->where('status',1)->where('com','newsletter')->where('email',$request->txtEmail)->get()->first();
        if(empty($kiemtra_mail)){
			$data = new NewsLetter();
			$data->name = $request->txtName;
			$data->email = $request->txtEmail;
			$data->phone = $request->txtPhone;
			$data->content = $request->txtContent;
			$data->status = 1;
			$data->com = 'newsletter';
			$data->save();

			echo "<script type='text/javascript'>
				alert('Bạn đã đăng kí nhận tin tức thành công !');
				window.location = '".url('/')."' </script>";
		}else{
			echo "<script type='text/javascript'>
				alert('Email này đã đăng ký !');
				window.location = '".url('/')."' </script>";
		}
	}
	public function getErrorNotFount(){
		$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','san-pham')->get()->first();
		return view('templates.404_tpl',compact('banner_danhmuc'));
	}

	public function getTuyenDung($alias){
		$com='tuyen-dung';
		$lang = Session::get('locale');
		$data = DB::table('news_categories')
				->where('status',1)
				->where('com','tuyen-dung')
				->where('alias', $alias)
				->orderby('id','desc')
				->first();

		$requirements = DB::table('news')->where('com','tuyen-dung')->where('cate_id', $data->id);
		if($lang == 'vi'){
			$requirements = $requirements->where('status', 1)->paginate(9);
		}elseif($lang =='jp'){
			$requirements = $requirements->where('status_en', 1)->paginate(9);
		}

		if($lang =='vi'){
			if(!empty($data->title)){
			$title = $data->title;
			}else{
				$title = $data->name;
			}
			$keyword = $data->keyword;
			$description = $data->description;
		}
		if($lang =='jp'){
			if(!empty($data->title_en)){
			$title = $data->title_en;
			}else{
				$title = $data->name_en;
			}
			$keyword = $data->keyword_en;
			$description = $data->description_en;
		}
		
		return view('templates.tuyendung_tpl', compact('com','data','title', 'requirements','description','keyword'));
	}
	
	public function video()
	{
		$videos = DB::table('video')->orderBy('id','desc')->paginate(10);		        
    	$title = "Video";
		$keyword = "Video";
		$description = "Video";
		$com='gallery';
		return view('templates.video', compact('videos', 'title', 'keyword', 'description','com'));
	}

    public function getDetailAjaxProduct(Request $request){
    	$id = $request->all();
    	$data = Products::where('id', $id)->first();
    	$data->images = $data->pimg->pluck('photo')->map(function($item) {
    		return asset('upload/hasp/'.$item);
    	})->toArray();
    	return response()->json($data);
    }
    
    
}
