<?php 
if(isset( $args['category_id'])) : 
	$args = array(
	    'post_type' => 'post',
	    'posts_per_page' => 5,
	    'post__not_in' => array(get_the_ID()),
	    'tax_query' => array(
	        array(
	            'taxonomy' => 'category',
	            'field' => 'term_id',
	            'terms' => $args['category_id']
	        )
	    )
	);
	$query = new WP_Query( $args );
	if($query->have_posts()) : ?>
		<div class="related-post">
<?php		while($query->have_posts()) : 
				$query->the_post();?>
				<div class="post-item">
					<a href="<?php echo get_the_permalink(); ?>">
						<?php echo get_the_title(); ?>
					</a>
				</div>
<?php		endwhile; ?>
		</div>
<?php	
	endif;
	wp_reset_postdata();
endif; ?>

