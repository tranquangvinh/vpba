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
		<div id="article_holder" class="folder-news">
			<div class="othernews-header">
				<div class="othernews-title">Các bài viết khác :</div>
				<div class="txtr" style="margin-bottom: 10px;"><a href="JavaScript:history.go(-1)"><b>[ Trở về ]</b></a>
				</div>
			</div>
				<div class="othernews">
					<div class="box_content">
						<ul>
<?php		while($query->have_posts()) : 
				$query->the_post();?>	
							<li>
								<a class="link-othernews"
									href="<?php echo get_the_permalink(); ?>"
									title="<?php echo get_the_title(); ?>">&nbsp;<?php echo get_the_title(); ?>
								</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#736F6E"><i><?php echo get_the_author_meta('display_name'); ?></i></font>
							</li>				
<?php		endwhile; ?>
						</ul>
					</div>
			</div>
		</div>
<?php	
	endif;
	wp_reset_postdata();
endif; ?>

