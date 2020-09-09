<?php 
session_start();
    require_once("../autoload/autoload.php");
    class News extends My_Model{
        public function __construct()
        {
            parent::__construct();
        }


        public function getNew($id)
        {
            $where = 'id = '.$id;
            return $data = parent::fetchwhere('news',$where);
        }

         public function listNew(){
            return $data = parent::fetchwhere('news',' 1 ORDER BY created  DESC LIMIT 0,4');
        }
    }

    $new = new News();
    if(isset($_GET['id']))
    {
        $id = validate_id($_GET['id']);
        $data_new = $new ->getNew($id);

        $list_new = $new -> listNew();
        
       
    }else
    {
        redirect_to('index.php');
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
               <div class="wrap"><a href="index.php">Trang Chủ</a><span class="label"> &gt; </span>Tìm Kiếm</div>
            </div>
            <div id="inner">
                <div id="content-sidebar-wrap">
                   <!--  div menu-js -->
                        <?php  require_once __DIR__."/teamplate/menu-js.php"; ?>
                        <br/>
                    <!-- End div menu-js  -->
                    <div id="content" class="hfeed">
                        <?php foreach($data_new as $value): ?>
                            <div class="post-178509 post type-post status-publish format-standard has-post-thumbnail hentry category-tin-tuc entry">
                                <h1 class="entry-title"><?php echo $value['title'] ?></h1>
                                <div class="entry-content">
                                    
                                    <p>
                                        <?php  if(isset($value['image_link'])):?>
                                            <img class="aligncenter size-full wp-image-178658" src="../upload/news/<?php echo $value['image_link'] ?>" alt="<?php echo $value['intro'] ?>" width="310" height="310">
                                        <?php endif; ?>
                                    </p>
                                   <div class="content">
                                       <?php echo $value['content'] ?>
                                   </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                            
                            <div id="product-seen"></div>
                            <div class="yarpp-related">
                                <div class="tag-post-single"></div>
                                <h3 class="title-yy">Bài viết <span>liên quan</span></h3>
                                <ul>
                                    <?php  foreach ($list_new as $key => $value): ?>
                                        <li class="single-lienquan" style="list-style:none;">
                                            <a href="<?php echo 'tin-tuc.php?id='.$value['id']; ?>" rel="bookmark" title="<?php echo $value['title'] ?>"><img width="400" height="300" src="../upload/news/<?php echo $value['image_link'] ?>" class="attachment-post-thumbnail wp-post-image"  ></a>
                                            <h3><a href="<?php echo 'tin-tuc.php?id='.$value['id']; ?>" rel="bookmark" title="<?php echo $value['title'] ?>"><?php echo $value['title'] ?></a></h3>
                                        </li>
                                    <?php endforeach; ?>
                                    
                                </ul>
                        </div>

                    </div>
                    <!-- div sidebar -->
                        <?php  require_once __DIR__."/teamplate/sidebar.php"; ?>
                   <!--  end  div sidebar -->
                </div>
            </div>
            <!--  div footer  -->
                 <?php  require_once __DIR__."/teamplate/footer.php"; ?>
            <!--  End div footer  -->
        </div>
    </body>
</html>
