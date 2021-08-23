<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="ie=edge" http-equiv="X-UA-Compatible"><!-- bootstrap -->
  <link href="css/bootstrap.min.css" rel="stylesheet"><!-- icon -->
  <link href="css/icofont.css" rel="stylesheet">
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/owl.carousel.min.css" rel="stylesheet">
  <link href="css/owl.theme.min.css" rel="stylesheet">
  <link href="css/slick.css" rel="stylesheet">
  <link href="css/bttn.min.css" rel="stylesheet" type="text/css">
  <link href="css/jquery.simplyscroll.css" rel="stylesheet" type="text/css">
  <link href="css/lightbox.min.css" rel="stylesheet" type="text/css">
  <link href="css/animate.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
  <title>Danh sách cán bộ ĐHTL</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="wrapper">

  <section class="header__main">
    <div class="container">
      <div class="row">
        <div class="col-xl-2 d-none d-xl-block">
         <div class="logo_area">
           <a href="" title=""><img src="images/logo.png" alt=""></a>
         </div>
       </div>
       
       <div class="col-12 col-xl-7">
         <div class="company_area text-center">
          <div class="company_name chu-noi">Trường Đại học <span style="color:#fff200">Thủy Lợi</span></div>
          <div class="company_add">Địa chỉ:175 Tây Sơn , Đống Đa , Hà Nội</div>
          <div class="company_alt">Danh sách cán bộ</div>
        </div>
      </div>

      <div class="col-xl-3 d-none d-xl-block">
        <div class="company_phone d-flex">
          <div class="icon_phone"><img src="images/ico-phone.png" alt=""></div>
          <div class="text_phone">
            <p class="m-0">Hotline:</p>
            <p class="m-0 chu-noi phones">(024) 38522201</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="menu_area">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <ul class="menu__main">
          <li><a href=".#" title="">Trang chủ</a></li>
          <li><a href="directory.php" title="">Giới thiệu</a></li>
          <li><a id="" href=".#" title="">Liên hệ</a></li>
          <li>    
            
                  <?php 
          if (!isset($_SESSION['username'])) { ?>     
          <a href="Login/login.php">Đăng Nhập</a>
            <div class="head_bottom_right_contenhover">
            </div>
        
        <?php } else{ ?>

      <a href="">Xin chào <?=$_SESSION['username']?></a>
            <div class="head_bottom_right_contenhover">
              <ul>
                <li>
                  <a href="logout.php">Đăng Xuất</a>
                </li>             
             
                <li>
                  <a href="admin/Danhba/index.php">Trang quản trị</a>
                </li>
   
                  <?php  } ?>             
        </li>
          <li>
                  <a href="register/register.php">Đăng ký</a>
                </li>
        </ul>
      </div>
    </div>
  </div>
</section>
<section id="product_area" class="product_area">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="product__title"><h6 class="text-uppercase text-center mb-5">Danh sách cán bộ</h6></div>
      </div>
     </div>
    </div>  
</div>
</body>
</html>