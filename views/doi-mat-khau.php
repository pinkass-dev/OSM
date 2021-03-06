<?php 
session_start();
    require_once("../autoload/autoload.php");

    if (!isset($_SESSION['id'])) {
        redirect_to('views/dang-nhap.php');
    }
    $db = new My_Model();

     if($_SERVER['REQUEST_METHOD'] == 'POST')
        {

            // bat dau tien hanh su ly form
            $errors = array();
            $data = array();
            

            if(empty($_POST['password']))
            {
                $errors[] = "password";
            }
            if(empty($_POST['rpassword']))
            {
                $errors[] = "rpassword";
            }
            // kiem tra xem nguoi dung co nhap dung password
            if(isset($_POST['password']) && preg_match('/^[\w\'.-]{2,20}$/i',trim($_POST['password'])))
            {
                // neu mat khau trung khop thi lu vao csdl
                if($_POST['password'] == $_POST['rpassword'])
                {
                    $data['password'] = md5($_POST['rpassword']);
                }
                else
                {
                    // mat khau khong trung khop thi thong bao ra ngoai
                    $errors[] = "password";
                }
            }

            if (empty($_POST['password'])) {
                $errors[] = "password_present";
            } else {
                $password_present = md5($_POST['password_present']);
            }

            // neu cac truong deu ton tai thi ta tien hanh Insert vào csdl
            if(empty($errors))
            {
               
                $datas = $db->fetchwhere('db_user','password = "'.$password_present.'"');
                
                if(!empty($datas))
                {

                    if($db->update('db_user', $data,array("id" => $_SESSION['id']))){
                        $_SESSION['success'] = " Đổi mật khẩu thành công";
                        
                    }
                }else
                {

                    $_SESSION['error'] = "Mật khẩu hiện tại không chính xác";
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
               <div class="wrap"><a href="index.php">Trang Chủ</a><span class="label"> &gt; </span>Thay Đổi Mật Khẩu </div>
            </div>
            <div id="inner">
               <div id="content-sidebar-wrap">
                   <!--  div menu-js -->
                        <?php  require_once __DIR__."/teamplate/menu-js.php"; ?>
                    <!-- End div menu-js  -->
                        <div id="content" class="hfeed">
                            <div class="post-178485 page type-page status-publish hentry entry">
                                <h1 class="entry-title">Thay Đổi Mật Khẩu</h1>

                               
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
                                                <span class="labelx label-default"> Mật Khẩu Cũ :</span>
                                            </div>
                                            <div class="inputs">
                                                   <input type="password"  name="password_present" size="40">
                                                   <?php
                                                        if(isset($errors) && in_array('password_present',$errors))
                                                        {
                                                            echo"<br><span class='warning mgl-255' >Vui lòng nhập vào mật khẩu hiện tại.</span>";
                                                        }
                                                    ?>
                                            </div>
                                        </div>
                                        <div class="register">
                                          <div class="labels">
                                            <span class="labelx label-default"> Mật Khẩu Mới :</span>
                                          </div>
                                          <div class="inputs">
                                               <input type="password" name="password" size="40">
                                                <?php
                                                    if(isset($errors) && in_array('password',$errors))
                                                    {
                                                        echo"<br><span class='warning mgl-255' > Mật khẩu không trùng khớp .</span>";
                                                    }
                                                ?>
                                          </div>
                                        </div> 


                                        <div class="register">
                                          <div class="labels">
                                            <span class="labelx label-default">Nhập Lại Mật Khẩu :</span>
                                          </div>
                                          <div class="inputs">
                                               <input type="password" name="rpassword" size="40">
                                               <?php
                                                    if(isset($errors) && in_array('password',$errors))
                                                    {
                                                        echo"<br><span class='warning mgl-255' > Mật khẩu không trùng khớp .</span>";
                                                    }
                                                ?>
                                          </div>
                                        </div>
                                        <div class="register">
                                             <div class="labels">
                                             </div>
                                             <div class="inputs">
                                                <p class="submit cart-summary" id="sub">
                                                    <input class="button" type="submit" value="Thay Đổi">
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
