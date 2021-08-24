<?php 
	$category = get_queried_object();
	$categories=get_categories(
		array( 'parent' => $category->cat_ID,
				'orderby' =>'cat_ID'
		 )
	);
	if(!empty($categories)){
		print_r($categories);
		foreach($categories as $item){
		?>
		<div id="category_holder">
			<h1>
				<?php echo $item->name ?>
			</h1>
			<div class="box_body">
				<div class="short">
					<div class="short_holder">
						<h2><a href="<?php echo get_the_permalink($categories->term_id) ?>" title="Nhiễu Điều Phủ Lấy Giá Gương">
								<?php echo get_the_title($categories->term_id); ?>
							</a>
						</h2>
						<span class="article_category_info">Tác giả: <a href="author/admin/"
								title="Sư cô Quang Thuần">Sư cô Quang Thuần</a> - Đã đọc: 66&nbsp;| <a
								href="">0
								bình luận</a></span><br>
					</div>
				</div>
			</div>
		</div>
	<?php }} wp_reset_postdata(); ?>

<!-- <div class="pagination-category">
	<?php do_action('pagination'); ?>
</div> -->