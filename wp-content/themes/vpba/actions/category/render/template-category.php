<?php function template_category($cat_id, $cat_limit){ 
	if(isset($cat_id)){ 
		$cat_name = get_cat_name($cat_id);
        $category_link = get_category_link($cat_id);
        $list_cat_id = get_term_children($cat_id, 'category');
        $list_object_cat = array();
        if(is_array($list_cat_id) && count($list_cat_id) > 0){
            foreach ($list_cat_id as $id){
                $list_object_cat[] = [
                    'term_name' => get_cat_name($id),
                    'term_link' => get_category_link($id),
                ];
            }
    	} ?>
		<div class="box_more_category_list" class="main_news_category">
			<div class="box_title_holder">
				<div class="box_title">
					<h4>
						<a href="<?php echo $category_link; ?>"><?php echo $cat_name; ?></a>
						<a class="title-right" href="<?php echo $category_link; ?>"><img src="" alt=""></a>
					</h4>
					<div class="title-bottom">
						<?php foreach($list_object_cat as $term) :  ?>
							<span>
								<a href="<?php echo $term['term_link']; ?>" ><?php echo $term['term_name']; ?></a>
							</span>
							<span class="flag">/</span>
						<?php endforeach;?>
					</div>
				</div>
			</div>
			<?php
				$args = array(
					'post_type' => 'post',
					'posts_per_page' => $cat_limit,
					'tax_query' => array(
						array(
							'taxonomy' => 'category',
							'field' => 'term_id',
							'terms' => $cat_id
						)
					)
				);
				$query = new WP_Query( $args );
				if ( $query->have_posts() ) { 
					$first_post = $query->posts[0];
					$featured_img_url = get_the_post_thumbnail_url($first_post->ID,'full'); 
					$post_link = get_permalink($first_post->ID);
					$post_excerpt = get_the_excerpt($first_post->ID);
					//$post_excerpt = wp_trim_words(  $first_post->post_content, 25, '...' );
				?>
				<div class="box">
					<div class="box_body">
						<div class="box_content">
							<div class="short">
								<div class="short_holder">
									<div class="image_home">
										<a href="">
											<img src="<?php echo $featured_img_url; ?>">
										</a>
									</div>
									<h3>
										<a class="img-left" href="<?php echo $post_link; ?>">
											<?php echo $first_post->post_title; ?>
										</a>
										<a class="img-right" href=""><img src="" alt=""></a>
									</h3>
									<span class="summary">
										<?php echo $post_excerpt; ?>
									</span>
									
								</div>
								<ul>
									<?php 
										$index = 0;
										while ( $query->have_posts() ) { 
											$query->the_post(); 
											if($index != 0) : ?>
											<li>
												<a href="<?php echo get_the_permalink(); ?>" title="">→ <?php echo get_the_title(); ?></a>
											</li>
										<?php 		endif;	
											$index++;
										} ?>
									</ul>
							</div>
							<div class="more">
								<a title="Xem thêm tin khác" href="<?php echo $category_link; ?>">Xem thêm tin khác</a>
							</div>
						</div>
					</div>
				</div>
			<?php wp_reset_postdata();
			} ?>	
		</div>
<?php }
}
?>