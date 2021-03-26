<?php 
function template_category_header($query){
	if ( $query->have_posts() ) { 
		$first_post = $query->posts[0];
		$featured_img_url = get_the_post_thumbnail_url($first_post->ID,'full'); 
		$post_link = get_permalink($first_post->ID);
		$post_excerpt = wp_trim_words(  $first_post->post_content, 20, '...' );
		?>
			<div class="left">
				<div class="item-post-left">
					<a id="link-post" href="<?php echo $post_link; ?>">
						<div class="image">
							<div class="wrap-image">
								<img id="img-post" src="<?php echo $featured_img_url; ?>" alt="">
							</div>
						</div>
						<h2 id="title-post" class="title">
							<?php echo $first_post->post_title; ?>
						</h2>
						<p  id="des-post" class="des">
							<?php echo $post_excerpt; ?>
						</p>
					</a>
				</div>
			</div>
			<div class="right">
				<?php 
					$index = 0;
					while ( $query->have_posts() ) { 
						$query->the_post(); ?>
						<div class="item-post-right">
							<div class="child">
								<a class="box-post <?php echo ($index == 0 ? 'active' : '') ?>" href="<?php echo get_the_permalink(); ?>">
									<div class="image">
										<div class="wrap-image">
											<img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="">
										</div>
									</div>
									<span class="title">
										<?php echo get_the_title(); ?>
									</span>
									<span class="excerpt d-none">
										<?php echo wp_trim_words(get_the_content(), 20, '...' ); ?>
									</span>
								</a>
								<div class="clearfix"></div>
							</div>
						</div>
			 	<?php 
			 			$index++;
		 			} ?>
		 	</div>
		 	<div class="clearfix"></div>
	<?php }
	wp_reset_postdata();
}