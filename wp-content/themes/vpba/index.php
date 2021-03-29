<?php get_header(); ?>
<?php get_template_part('template-parts/header/breadcrumb', 'header', ['title' => 'Trang chủ']); ?>

<div class="container">
	<div class="post-home mt-4">
			<?php do_action('box_cat_header'); ?>
	</div>

    <div class="row mt-4">
        <div class="col-md-9 col-sm-12 content-left">
          	<?php do_action('homepage_block_category'); ?>
        </div>

        <div class="col-md-3 col-sm-12">
    		<!-- sidebar -->
    		<?php get_sidebar(); ?>
        </div>
    </div>

    <div class="row mt-4">
    	
    </div>
</div>

<?php get_footer(); ?>