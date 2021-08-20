<div class="container">
    <div class="banner">
        <div class="header-top col-md-12">
            <div class="image">
                <img src="http://www.daophatngaynay.com/vn/themes/ngodung/img/banner.jpg" alt="">
                <div class="form-search col-md-4" id="box-search">
                    <form action="<?php echo esc_url( home_url( '/' ) ); ?>" method="get">
                        <input class="box-input col-md-10" type="text" name="s" placeholder="Từ khóa tìm kiếm" id="search" value="<?php the_search_query(); ?>" />
                        <button class="btn btn-success btn-search">
                            <i class="fa fa-search"></i>
                        </button>
                        <input type="hidden" value="post" name="post_type" id="post_type" />
                    </form>
                </div>
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