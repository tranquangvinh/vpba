<?php 
	get_header();
	$category = get_queried_object();
	$categories=get_categories(
		array( 'parent' => $category->cat_ID)
	);
?>
<div class="d-flex pt-3 pb-5">
	<div class="col-md-7">
		<div id="box_center_holder_2">
			<?php get_template_part('template-parts/archive/posts', 'posts',['category_id' => $category->term_id,'category_name' => $category->name]); ?>

			<?php if(!empty($categories)){
				foreach($categories as $item){
				?>
				<div id="category_holder">
					<h4>
						<a href="<?php echo get_category_link( $item->cat_ID ); ?>"><?php echo $item->name?></a>
					</h4>
					<?php 
						$wpq = new WP_Query( array( 'cat' => $item->term_id ) );
						if($wpq->have_posts()) {
							while ( $wpq->have_posts() ) : $wpq->the_post();
							?>
							<div class="box_body">
								<div class="short">
									<div class="short_holder">
										<h2><a href="<?php echo get_the_permalink() ?>">
												<?php echo get_the_title(); ?>
											</a>
										</h2>
										<span class="article_category_info">Tác giả: <span><?php echo get_the_author(); ?></span></span><br>
									</div>
								</div>
							</div>
					<?php endwhile; ?>
						 
					<?php } ?>
					<div class="more">
                        <a title="" href="<?php echo get_category_link( $item->cat_ID ); ?>">Xem thêm</a>
                    </div>
				</div>
			<?php }} wp_reset_postdata();?>				
		</div>
	</div>
	<div class="col-md-5">
		<?php get_sidebar(); ?>
		<?php get_template_part(
        'template-parts/fanpage/index', 
        'fanpage', 
        [
          'link_fanpage' => get_theme_mod('link_fanpage_info'),
          'width' => 370,
          'height' => 500
        ]
        ); ?>
	</div>
</div>

<?php get_footer() ?>

