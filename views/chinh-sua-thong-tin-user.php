<?php 
session_start();
    require_once("../autoload/autoload.php");
    if (!isset($_SESSION['id'])) {
        redirect_to('views/dang-nhap.php');
    }
    $db = new My_Model();
    $user = $db->fetchwhere('db_user','id = "'.$_SESSION['id'].'"');

    $db = new My_Model();
     if($_SERVER['REQUEST_METHOD'] == 'POST')
        {
            // bat dau tien hanh su ly form
            $errors = array();
            $data = array();
            // kiem tra xem nguoi dung da nhap vao ten hay chua
            if(!empty($_POST['name']))
            {
                $data['name'] = $_POST['name'];
            }
            else
            {
                $errors[]= "name";
            }
           
            //kiem tra xem nguoi dung co nhap vao que
            if(!empty($_POST['address']))
            {
                $data['address'] = $_POST['address'];
                
            }
            else
            {
                $errors[] = "address";
                
            }
            // kiem tra nguoi dung co nhap vao so dien thoai 
            if(!empty($_POST['phone']))
            {
                $data['phone'] = trim($_POST['phone']);
            }
            else
            {
                $errors[]= "phone";
            }
            
            // neu cac truong deu ton tai thi ta tien hanh Insert vào csdl
            if(empty($errors))
            {
                if($db->update('db_user', $data, array("id" => $_SESSION['id']))){
                    $_SESSION['success'] = "Chỉnh sửa thông tin thành công.";
                    redirect_to('views/info-user.php');
                }
            }
        }
?>
<!DOCTYPE html >
<html  lang="vi" xml:lang="vi">
    <?php  require_once __DIR__."/teamplate/head.php"; ?>
    <body class="single single-products postid-193659 header-image content-sidebar">
        <div id="wrap">
            <!-- div  content-before-header -->
                <?php  require_once __DIR__."/teamplate/content-before-header.php"; ?>
            <!--  End content-before-header -->
            
            <!--  div header -->
                <?php  require_once __DIR__."/teamplate/header.php"; ?>
            <!-- End div header -->
            <div class="breadcrumb">
               <div class="wrap"><a href="index.php">Trang Chủ</a><span class="label"> &gt; </span>Chỉnh sửa thông tin thành viên</div>
            </div>
            <div id="inner">
               <div id="content-sidebar-wrap">
                   <!--  div menu-js -->
                        <?php  require_once __DIR__."/teamplate/menu-js.php"; ?>
                    <!-- End div menu-js  -->
                        <div id="content" class="hfeed">
                            <div class="post-178485 page type-page status-publish hentry entry">
                                <h1 class="entry-title">Chỉnh sửa thông tin thành viên</h1>

                               
                                <form action="" method="post" accept-charset="utf-8" enctype="multipart/form-data">
                                    <?php 
                                        if(isset($_SESSION['success']))
                                        {
                                            echo "<h1 class ='success'> ".$_SESSION['success']."</h1>";
                                            unset($_SESSION['success']);

                                        }


                                        if(isset($_SESSION['error']))
                                        {
                                            echo "<h1 class='error'> ".$_SESSION['error']."</h1>";
                                            unset($_SESSION['error']);
                                            
                                        }
                                     ?>
                                   <div class="entry-content">
                                        <div class="register">
                                            
                                            <div class="labels">
                                                <span class="labelx label-default"> Họ và tên :</span>
                                            </div>
                                            <div class="inputs">
                                                   <input type="text" value="<?php echo $user[0]['name'] ?>"  name="name" size="40">
                                                   <?php
                                                        if(isset($errors) && in_array('name',$errors))
                                                        {
                                                            echo"<br><span class='warning mgl-255' > Mời bạn nhập vào họ và tên .</span>";
                                                        }
                                                    ?>
                                            </div>
                                        </div>

                                        <div class="register">
                                          <div class="labels">
                                            <span class="labelx label-default"> Email :</span>
                                          </div>
                                          <div class="inputs">
                                               <input type="text" name="email" value="<?php echo $user[0]['email'] ?>" size="40" disabled>
                                               <?php
                                                    if(isset($errors) && in_array('email',$errors))
                                                    {
                                                        echo"<br><span class='warning mgl-255' > Mời bạn nhập vào email .</span>";
                                                    }
                                                ?>
                                          </div>
                                        </div>
                                        <div class="register">
                                          <div class="labels">
                                            <span class="labelx label-default">Số điện thoại :</span>
                                          </div>
                                          <div class="inputs">
                                               <input type="text" name="phone" value="<?php echo "0". $user[0]['phone'] ?>" size="40">
                                               <?php
                                                    if(isset($errors) && in_array('phone',$errors))
                                                    {
                                                        echo"<br><span class='warning mgl-255' > Nhập vào số điện thoại không được để trống .</span>";
                                                    }
                                                ?>
                                          </div>
                                        </div>

                                        <div class="register">
                                          <div class="labels">
                                            <span class="labelx label-default">Địa chỉ :</span>
                                          </div>
                                          <div class="inputs">
                                               <input type="text" value="<?php echo $user[0]['address'] ?> " name="address" size="40">

                                               <?php
                                                    if(isset($errors) && in_array('address',$errors))
                                                    {
                                                        echo"<br><span class='warning mgl-255' > Nhập vào địa chỉ không được để trống .</span>";
                                                    }
                                                ?>
                                          </div>
                                        </div>
                                        <div class="register">
                                             <div class="labels">
                                             </div>
                                             <div class="inputs">
                                                <p class="submit cart-summary" id="sub">
                                                    <input class="button" type="submit" value="Cập nhật">
                                                </p>
                                             </div>
                                        </div>

                                        

                                  </div>
                                </form>
                                  
                            </div>
                            <div id="product-seen"></div>
                        </div>
                            
                    <!-- div sidebar -->
                    <?php  require_once __DIR__."/teamplate/sidebar-info-user.php"; ?>
                   <!--  end  div sidebar -->
                </div>
            </div>
            <!--  div footer  -->
                 <?php  require_once __DIR__."/teamplate/footer.php"; ?>
            <!--  End div footer  -->
        </div>
    </body>
</html>
