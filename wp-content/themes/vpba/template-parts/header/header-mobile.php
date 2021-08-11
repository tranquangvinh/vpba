<div class="banner">
    <a href="<?php echo get_theme_mod('link-banner') ?>">
        <img src="<?php echo get_theme_mod('banner-header') ?>" alt="">
    </a>
</div>

<div class="header-bottom">
    <div class="right">
        <div class="icon-search">
            <i class="fa fa-search"></i>
        </div>
        <div class="form-search" id="box-search">
            <form action="<?php echo esc_url( home_url( '/' ) ); ?>" method="get">
                <input type="text" name="s" placeholder="Từ khóa tìm kiếm" id="search" value="<?php the_search_query(); ?>" />
                <button class="btn btn-success btn-search">
                    <i class="fa fa-search"></i>
                </button>
                <input type="hidden" value="post" name="post_type" id="post_type" />
            </form>
        </div>
        <div class="box-right">
            <div class="icon-user pr-4">
                <a href="<?php echo get_admin_url(); ?>">
                    <i class="fa fa-user"></i>
                </a>
            </div>
            <div class="icon-menu">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </div>
    <div class="menu-top">
        <?php
        echo wp_nav_menu(['menu' => 'menu-main']);
        ?>
    </div>
</div>
