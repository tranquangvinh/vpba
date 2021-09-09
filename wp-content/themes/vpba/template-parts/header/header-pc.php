<div class="container">
    <div class="banner">
        <div class="header-top col-md-12">
            <div class="image">
                <a href="<?php echo get_theme_mod('link-banner') ?>">
                    <img src="<?php echo get_theme_mod('banner-header')?>" alt="">
                </a>
            </div>
        </div>
    </div>
    <div class="header-bottom col-md-12">
        <div class="menu-main">
            <?php
                echo wp_nav_menu(['menu' => 'menu-main']);
            ?>
        </div>
    </div>
</div>