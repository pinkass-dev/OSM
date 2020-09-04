<div id="content-before-header">
    <div class="wrap">
        <div id="text-13" class="widget widget_text">
            <div class="widget-wrap">
                <div class="textwidget">
                    <div class="telephone-header">
                        <a href="tel:0987541656">tel:0987541656</a>
                    </div>
                </div>
            </div>
        </div>
        <div id="nav_menu-8" class="widget widget_nav_menu">
            <div class="widget-wrap">
                <div class="menu-main-menu-container">
                    <ul id="menu-main-menu" class="menu">
                       
                        <?php if(!isset($_SESSION['id'])): ?>

                        <li id="menu-item-16" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-16"><a href="dang-nhap.php">Đăng Nhập</a></li>
                        <li id="menu-item-16" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-16"><a href="dang-ky.php">Đăng Ký</a></li>
                       
                        <?php else: ?>
                            

                            <li id="menu-item-16" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-16">
                                
                                <a href="info-user.php" style="">
                                    Xin chào <?php echo $_SESSION['name'] ?>
                                    <div style="float: left; width: 45px; padding-top: -50px; margin-left: 5px; border-radius: 15px;">
                                    </div>
                                </a>
                                
                            </li>
                            <?php if ($_SESSION['role_id'] == 1 || $_SESSION['role_id'] == 2 ): ?>
                            <li id="menu-item-16" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-16"><a href="../admin/" target="_blank" style="">Trang quản trị</a></li>
                            <?php endif; ?>
                            <li id="menu-item-16" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-16">
                                <a href="dang-xuat.php">Thoát</a>
                            </li>
                        
                        <?php endif; ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>