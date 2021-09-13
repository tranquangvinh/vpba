<?php

get_header(); ?>
 
<div class="container mb-4">
	<p class="title-search">kết quả tìm kiếm</p>
	<?php 
	if (have_posts() ) :
		while (have_posts()) :
			the_post(); ?>
	<div class="box_body">
		<div class="short">
			<div class="short_holder">
				<h2><a href="<?php echo get_the_permalink() ?>">
						<?php echo get_the_title(); ?>
					</a>
				</h2>
			</div>
		</div>
	</div>
	<?php	
		endwhile;
	endif;
	wp_reset_postdata(); ?>
</div> 


<?php get_footer();
