<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <ul class="sidebar-menu">        
        <!-- <li class="treeview ">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Quản lý phòng</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="backend/productcate"><i class="fa fa-circle-o"></i> <span>Loại phòng</span></a></li>
            <li><a href="backend/product"><i class="fa fa-circle-o"></i> <span>Quản lý phòng</span></a></li>
            <li><a href="backend/about/edit?type=phong"><i class="fa fa-th"></i> <span>Slogan</span></a></li>
          </ul>
        </li> -->
        <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Quản lý tin tức</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">            
            <li><a href="backend/newscate?type=tin-tuc"><i class="fa fa-circle-o"></i> <span>Danh mục</span></a></li>
            <li><a href="backend/news?type=tin-tuc"><i class="fa fa-circle-o"></i> <span>Tin tức</span></a></li>           
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Quản lý tuyển dụng</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">            
            <li><a href="backend/newscate?type=tuyen-dung"><i class="fa fa-circle-o"></i> <span>Danh mục</span></a></li>
            <li><a href="backend/news?type=tuyen-dung"><i class="fa fa-circle-o"></i> <span>Tuyển dụng</span></a></li>           
          </ul>
        </li>
        <li><a href="{{ asset('backend/langs?type=langs') }}"><i class="fa fa-circle-o"></i> <span>Ngôn ngữ website</span></a></li>
        
        <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Quản lý giới thiệu</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">            
            <li><a href="backend/about/edit?type=thu-ngo"><i class="fa fa-circle-o"></i> <span>Thư ngỏ</span></a></li>          
            <li><a href="backend/lienket?type=the-manh"><i class="fa fa-circle-o"></i> <span>Thế mạnh</span></a></li>          
            <li><a href="backend/lienket?type=thong-tin"><i class="fa fa-circle-o"></i> <span>Thông tin công ty</span></a></li>          
          </ul>
        </li>

        <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Quản lý đào tạo</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">            
            <li><a href="backend/newscate?type=dao-tao"><i class="fa fa-circle-o"></i> <span>Danh mục</span></a></li>
            <li><a href="backend/news?type=dao-tao"><i class="fa fa-circle-o"></i> <span>Danh sách</span></a></li>            
          </ul>
        </li>
        <li><a href="backend/news?type=xuat-khau"><i class="fa fa-circle-o"></i> <span>Xuất khẩu lao động</span></a></li>
        <li><a href="backend/faq"><i class="fa fa-circle-o"></i> <span>FAQ</span></a></li>
        <li><a href="backend/video"><i class="fa fa-circle-o"></i> <span>Video</span></a></li>
                
        <li><a href="backend/partner"><i class="fa fa-circle-o"></i> <span>Đối tác</span></a></li>       
        <li><a href="backend/contact"><i class="fa fa-envelope"></i> <span>Quản lý liên hệ</span></a></li>
        <!-- <li><a href="backend/newsletter?type=newsletter"><i class="fa fa-circle-o"></i> <span>Đăng ký nhận tin</span></a></li> -->
        <li><a href="backend/lienket?type=thu-vien"><i class="fa fa-circle-o"></i> <span>Thư viện ảnh</span></a></li>
        
        <li class="treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span>Hình ảnh slider-banner</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <!-- <li><a href="backend/lienket?type=slider"><i class="fa fa-circle-o"></i>Quản lý slider</a></li> -->
            <li><a href="backend/slider?type=gioi-thieu"><i class="fa fa-circle-o"></i> <span>Quản lý slider</span></a></li>

           <!-- <li><a href="backend/lienket?type=tieu-chi"><i class="fa fa-circle-o"></i> <span>Ảnh quảng cáo sidebar</span></a></li> -->
            <li><a href="backend/banner"><i class="fa fa-gear" aria-hidden="true"></i> <span>Quản lý banner</span></a></li>
          </ul>
        </li>       
        
        <!-- <li><a href="backend/position"><i class="fa fa-gear" aria-hidden="true"></i> <span>Vị trí quảng cáo</span></a></li> -->
        <li><a href="{{ asset('backend/setting') }}"><i class="fa fa-gear" aria-hidden="true"></i> <span>Quản lý thiết lập</span></a></li>
       
       
        <!-- <li><a href="backend/province"><i class="fa fa-gear" aria-hidden="true"></i> <span>Quản lý tỉnh/ thành phố</span></a></li> -->
         <!-- <li><a href="backend/district"><i class="fa fa-gear" aria-hidden="true"></i> <span>Quản lý quận/ huyện</span></a></li> -->
      </ul>
    </section>
</aside>