<?php 
if ( have_posts() ) :
	while (have_posts()) :
			the_post(); ?>
		<div class="row box-post mt-4">
			<div class="col-md-4 col-sm-12 left">
				<div class="image">
					<a href="<?php echo get_the_permalink() ?>">
						<img src="<?php echo get_the_post_thumbnail_url(get_the_ID(),'full') ?>" alt="">
					</a>
				</div>
			</div>
			<div class="col-md-8 col-sm-12 right">
				<p class="title">
					<?php echo get_the_title(); ?>	
				</p>
				<p class="des">
					<?php echo wp_trim_words( get_the_content(), 20, '...' ); ?>
				</p>
			</div>
		</div>
<?php	
	endwhile;
endif;
wp_reset_postdata(); ?>
<div class="line-pagination"></div>