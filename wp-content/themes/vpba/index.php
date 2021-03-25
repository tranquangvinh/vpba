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
            <?php
                $cat_id = get_theme_mod('option-category');
                if(isset($cat_id)){
                    $args = array(
                        'post_type' => 'post',
                        'posts_per_page' => 4,
                        'tax_query' => array(
                            array(
                                'taxonomy' => 'category',
                                'field' => 'term_id',
                                'terms' => $cat_id
                            )
                        )
                    );
                    $query = new WP_Query( $args );


                    if ( $query->have_posts() ) { ?>
                        <marquee class="marquee-list" direction="left" onmouseout="this.start()" onmouseover="this.stop()" scrollamount="2">
                            <?php
                            while ( $query->have_posts() ) {
                                $query->the_post(); ?>
                                <div class="item-marquee">
                                    <a href="<?php echo get_the_permalink(); ?>">
                                        <?php echo get_the_title(); ?>
                                    </a>
                                </div>
                            <?php } ?>
                        </marquee>
                    <?php }
                    wp_reset_postdata();
                }
            ?>
		</div>
		<div class="col-md-4 col-sm-3 text-right" id="current-time"></div>
	</div>
	<div class="post-home mt-4">
			<?php
	            $cat_id = get_theme_mod('option-category');
	            if(isset($cat_id)){
	                $args = array(
	                    'post_type' => 'post',
	                    'posts_per_page' => 10,
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
	        ?>
	</div>

    <div class="row mt-4">
        <div class="col-md-8 col-sm-12 content-left">
            <!-- box cat start -->
            <?php $term_id = get_theme_mod('option-category-1');

                if(isset($term_id)){
                    $cat_name = get_cat_name($term_id);
                    $category_link = get_category_link($term_id);
                    $list_cat_id = get_term_children($term_id, 'category');
                    $list_object_cat = array();
                    if(is_array($list_cat_id) && count($list_cat_id) > 0){
                        foreach ($list_cat_id as $id){
                            $list_object_cat[] = [
                                'term_name' => get_cat_name($id),
                                'term_link' => get_category_link($id),
                            ];
                        }
                    }
                ?>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title-header">
                            <a class="main" href="<?php echo $category_link; ?>"><span><?php echo $cat_name; ?></span></a>
                            <?php if(count($list_object_cat) > 0) : ?>
                                <div class="list-child-category">
                                    <?php foreach($list_object_cat as $term) :  ?>
                                        <a href="<?php echo $term['term_link'] ?>">
                                            <?php echo $term['term_name'] ?>
                                        </a>
                                    <?php endforeach;?>
                                </div>
                            <?php endif; ?>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                123123123
                            </div>
                            <div class="col-md-6">123123123</div>
                        </div>
                    </div>
                </div>
            <?php } ?>
            <!-- box cat end -->
        </div>

        <div class="col-md-3 col-sm-12">

        </div>
    </div>
</div>


<?php get_footer(); ?>