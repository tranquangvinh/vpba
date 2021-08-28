<?php 
	get_header();
	$category = get_queried_object(); //tra ve chinh ban than khi click menu
	$categories=get_categories(
		array( 'parent' => $category->cat_ID) // tim thang con co ID cha 
	);
?>
<div class="col-md-12 pt-3 pb-5">
	<div class="col-md-9">
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
					<div class="more">
                        <a title="" href="<?php echo get_category_link( $item->cat_ID ); ?>">Xem thêm</a>
                    </div>
				</div>
			<?php }} wp_reset_postdata();?>				
		</div>
	</div>
	<div class="col-md-12"></div>
</div>

<?php get_footer() ?>

