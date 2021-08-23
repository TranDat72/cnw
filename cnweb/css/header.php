<?php
// require_once ('db/dbhelper.php');
// session_start();

if (isset($_SESSION['username'])) {
	 $check = "select trangthai from user where taikhoan = '".$_SESSION['username']."'" ;

 	$check = select_one($check);
 	if ($check != null) {
 		$status = $check['trangthai'];
 	}
}  
?>
	<link rel="stylesheet" type="text/css" href="css/header.css">
  
	<header>

	<div class="head">
				 <!-- =========== START HEADER MAIN ========-->

		<div class="head_bottom"id="head_bottom">
			<div class="head_bottom_left">
				<a class="logo" href="index.php">
					<img src="http://www.tlu.edu.vn/Portals/_default/skins/tluvie/images/logo.png" alt="Logo VinUni" ></a>
			</div>
			<div class="head_bottom_right">
				<ul class="parent">			
					<li class="boder">				
				<?php 
					if (!isset($_SESSION['username'])) { ?>			
					<a href="Login/login.php">Đăng Nhập</a>
					<a href="register/register.php">Đăng ký</a>								
				
				<?php } else{ ?>

			<a href="">Xin chào <?=$_SESSION['username']?></a>
						
			<a href="logout.php">Đăng Xuất</a>
								
								
			<?php if ($status == 1) {?>
				<li>
					<a href="admin/Danhba/index.php">Trang quản trị</a>
				</li>
			<?php } ?>
				</ul>
					</div>

					<?php  } ?>					
					</li>
				</ul>
			</div>

		</div>
	</div>
	</header>
  <script type="text/javascript">
    window.onscroll = function ()
    {   
      if (document.body.scrollTop > 10 || document.documentElement.scrollTop >10)
      {
        console.log(document.documentElement.scrollTop);  

        document.getElementById("head_top").style.display = "none";
        document.getElementById("head_bottom").style["boxShadow"] = " 0px 12px 9px -8px black";
        document.getElementById("head_bottom").style["animation"] = " none ";
      } 
      else
      {        
        document.getElementById("head_top").style.display = "block";
        document.getElementById("head_bottom").style["boxShadow"] = "none";       
      }
    };
  </script> 
