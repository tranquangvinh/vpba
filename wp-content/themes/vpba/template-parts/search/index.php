<div class="form-search" id="box-search">
    <form action="<?php echo esc_url( home_url( '/' ) ); ?>" method="get">
        <input class="box-input col-md-10" type="text" name="s" placeholder="Từ khóa tìm kiếm" id="search" value="<?php the_search_query(); ?>" />
        <button class="btn btn-success btn-search">
            <i class="fa fa-search"></i>
        </button>
        <input type="hidden" value="post" name="post_type" id="post_type" />
    </form>
</div>