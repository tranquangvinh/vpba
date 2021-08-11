<?php

function template_category($cat){
    $term_id = $cat['cat_id'];

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
    	} ?>

	    <div class="row mt-3">
	        <div class="col-md-12 col-sm-12">
	            <div class="title-header d-flex align-items-end">
	                <a class="main mr-auto" href="<?php echo $category_link; ?>"><span><?php echo $cat_name; ?></span></a>
	                <?php if(count($list_object_cat) > 0 && !wp_is_mobile()) : ?>
	                    <div class="list-child-category">
	                        <?php foreach($list_object_cat as $term) :  ?>
	                            	<a href="<?php echo $term['term_link'] ?>">
	                            	    <?php echo $term['term_name'] ?>
	                            	</a>
	                        <?php endforeach;?>
	                    </div>
	                <?php endif; ?>
	                <div class="clearfix"></div>
	            </div>
                <?php if(count($list_object_cat) > 0 && wp_is_mobile()) : ?>
                    <div class="list-child-category mb-3">
                        <?php foreach($list_object_cat as $term) :  ?>
                            <a href="<?php echo $term['term_link'] ?>">
                                <?php echo $term['term_name'] ?>
                            </a>
                        <?php endforeach;?>
                    </div>
                <?php endif; ?>
                <div class="clearfix"></div>
	            <?php
	                $args = array(
	                    'post_type' => 'post',
	                    'posts_per_page' => $cat['cat_limit'],
	                    'tax_query' => array(
	                        array(
	                            'taxonomy' => 'category',
	                            'field' => 'term_id',
	                            'terms' => $term_id
	                        )
	                    )
	                );
	                $query = new WP_Query( $args );

					if ( $query->have_posts() ) { 
							$first_post = $query->posts[0];
							$featured_img_url = get_the_post_thumbnail_url($first_post->ID,'full'); 
							$post_link = get_permalink($first_post->ID);
							$post_excerpt = wp_trim_words(  $first_post->post_content, 25, '...' );
						?>
	                    <div class="row">
	                        <div class="col-md-6 col-sm-6">
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
	                        <div class="col-md-6 col-sm-6">
	                			<?php 
	                				$index = 0;
	                				while ( $query->have_posts() ) { 
	                					$query->the_post(); 
	                					if($index != 0) : ?>
	                					<div class="item-post-right">
	                						<div class="child">
	                							<a class="box-post-child" href="<?php echo get_the_permalink(); ?>">
	                								<div class="image">
	                									<div class="wrap-image">
	                										<img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="">
	                									</div>
	                								</div>
	                								<span class="title">
	                									<?php echo get_the_title(); ?>
	                								</span>
	                								<div class="clearfix"></div>
	                							</a>
	                						</div>
	                					</div>

	                		 <?php 		endif;	
	                		 			$index++;
	                	 			} ?>
	                        </div>
	                    </div>
	          <?php } wp_reset_postdata(); ?>
	        </div>
	    </div>
<?php }
}