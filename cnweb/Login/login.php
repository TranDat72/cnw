<?php 
session_start();

?>
 <!DOCTYPE html>
<html>
<head>
          <meta name="viewport" content="width=device-width, initial-scale=1">
          <link rel="stylesheet" type="text/css" href="style1.css">

</head>

<body>

  <form class="modal-content animate" action="login_submit.php" method="post">
    <div class="imgcontainer">

     <!--  <img src="../image/login.png" alt="Avatar" class="avatar"> -->
    </div>

    <div class="container">
      <label for="taikhoan"><b>Tài khoản</b></label>
      
      <input type="text" placeholder="nhập tài khoản" name="taikhoan" required>

      <label for="matkhau"><b>Mật khẩu</b></label>
      <input type="password" placeholder="nhập mật khẩu" name="matkhau" required>
        
      <button type="submit" name="submit">Đăng nhập</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Nhớ mật khẩu
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <a href="../index.php" style="text-decoration: none ; color: black;" title="">
      <span  class="cancelbtn">Hủy</span> </a>

      <span class="psw">Bạn Chưa Có Tài Khoản? <a class="regist"  href="../register/register.php"> Đăng Kí Ngay </a></span>
    </div>
  </form>
</div>
</body>
</html>


