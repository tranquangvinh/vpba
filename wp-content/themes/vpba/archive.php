<?php 
	get_header();
	$category = get_queried_object(
		array('posts_per_page' => 15)
	);
	$categories=get_categories(
		array( 'parent' => $category->cat_ID,
				'posts_per_page' => 15)
	);
?>
<div class="col-md-12">
	<div class="col-md-9 pt-2">
		<div id="box_center_holder_2">
			<?php get_template_part('template-parts/archive/posts', 'posts'); ?>

			<?php if(!empty($categories)){
				foreach($categories as $item){
				?>
				<div id="category_holder">
					<h4 class="child">
						<?php echo $item->name ?>
					</h4>
					<?php 
						$wpq = new WP_Query($categories);
						if($wpq->have_posts()) {
							while ( $wpq->have_posts() ) : $wpq->the_post();
							?>
							<div class="box_body">
								<div class="short">
									<div class="short_holder">
										<h2><a href="<?php echo get_the_permalink() ?>" title="Nhiễu Điều Phủ Lấy Giá Gương">
												<?php echo get_the_title(); ?>
											</a>
										</h2>
										<span class="article_category_info">Tác giả: <a href="author/admin/"
												title="Sư cô Quang Thuần">Sư cô Quang Thuần</a> - Đã đọc: 66&nbsp;| <a
												href="">0
												bình luận</a></span><br>
									</div>
								</div>
							</div>
					<?php endwhile;} ?>
				</div>
			<?php }} wp_reset_postdata(); ?>
		</div>
	</div>
	<div class="col-md-12"></div>
</div>

<?php get_footer() ?>

