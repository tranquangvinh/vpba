<?php 
function template_category_header($query){
	if ( $query->have_posts() ) { 
		$first_post = $query->posts[0];
		$featured_img_url = get_the_post_thumbnail_url($first_post->ID,'full'); 
		$post_link = get_permalink($first_post->ID);
		$post_excerpt = wp_trim_words(  $first_post->post_content, 40, '...' );
		?>
			<div class="left col-md-7 pl-2 pr-2 pt-2 pb-3">
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
						<p id="des-post" class="des">
							<?php echo $post_excerpt; ?>
						</p>
						<a class="detail_link" href="<?php echo $post_link; ?>">Chi tiết</a>

						<div class="pagination">
						<?php 
							$index = 0;
							while ( $query->have_posts() ) { 
								$query->the_post(); ?>
								<a class="box-post <?php echo ($index == 0 ? 'active' : '') ?>" href="<?php echo get_the_permalink(); ?>"><?php echo $index + 1 ?>
									<div class="hiden">
									<div class="image">
										<div class="wrap-image">
											<img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="">
										</div>
									</div>
									<span class="title">
										<?php echo get_the_title(); ?>
									</span>
									<span class="excerpt">
										<?php echo wp_trim_words(get_the_content(), 40, '...' ); ?>
									</span>
									</div>
								</a>
						<?php 
								$index++;
							} ?>
						</div>
					</a>
				</div>
			</div>
			<?php wp_reset_postdata(); ?>	
	<?php }
	wp_reset_postdata();
}