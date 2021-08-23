
<!DOCTYPE html>
<html lang="en" style="overflow-x: hidden;">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" type="image/ico" href="icon/logo.ico">
		<link rel="stylesheet" type="text/css" href="css/directory.css">
</head>
<body>


<section class="search-wrap pb-5">
          <div class="container pb-5">
           <form class="form-inline" action="" method="get">
              <div class="input-group w-100">
         <?php 
        if (isset($_GET['searchText'])) {
           $searchText= $_GET['searchText'];
           $wh = " where name like '%".$searchText."%' ";
         }
           else{
             $searchText="";
             $wh = " where name like '%".$searchText."%'  ";

           }
            ?>

              <input class='form-control border-primary'  type='text' name='searchText' value='<?=$searchText?>' placeholder='Tìm kiếm cán bộ'>

           
                <div  class="search" >
                  <button  type="submit"><img  src="images/search.png"></button>
                </div>
              </div>
            </form>
          </div>
</section>
<?php 
  $sql= "select * from canbo ".$wh."";  
  $datas = select_list($sql);
 ?>
	<div class="container-fluid" style="padding:10%" >
              <h2 style="margin-top: -13%;margin-left: 30%"></h2>
        <div class="row" >
    <?php 
       foreach( $datas as $data){
        ?>  
       <div class="col-lg-3 col-sm-6 col-12" >
          <a href="directory-info.php?id=<?=$data['id']?>" >
            <div class="item">
              <div class="xemthem" >
                <span >Chi tiết</span>
              </div>

              <div class="thumb" >
                <img src=" <?php echo"".$data['thumbnail']."" ?> ">
              </div> 

              <div class="info">
                <div class="name_direc">
                  <span style=""><?php echo"".$data['name']."" ?></span>
                </div>

                <div class="infor">
                  <span class="infor_direc" ><?php echo"".$data['chucvu']."" ?></span>

                </div>
              </div>
            </div>
          </a>
        </div>
     <?php } ?>

      </div>
  </div>


</body>
</html>

