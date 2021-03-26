<?php get_header(); ?>

<div class="container">
	<div class="row breadscumb-row">
		<div class="col-md-2 col-sm-3 no-wrap">
			<div class="title-home">
				<a href="<?php echo get_home_url(); ?>">
					Trang chủ
				</a>

			</div>
		</div>
		<div class="col-md-6 col-sm-6 no-wrap">
            <?php do_action('marquee_header') ?>
		</div>
		<!-- get current time -->
		<div class="col-md-4 col-sm-3 text-right" id="current-time"></div>
	</div>
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