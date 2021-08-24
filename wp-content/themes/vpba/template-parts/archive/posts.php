<?php
$category = get_queried_object();  ?>
<div id="category_holder">
	<h1 class="parent">
		<?php echo $category -> name ?>
	</h1>
	<div class="box_body">
	<?php 
		if ( have_posts() ) :
			while (have_posts()) :
					the_post(); ?>
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
		<?php	
			endwhile;
		else: 
			echo "<h1 class='data-empty'>Không có kết quả phù hợp với từ khóa tìm kiếm.</h1>";
		endif;
		wp_reset_postdata(); ?>
	</div>
</div>