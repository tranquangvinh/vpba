<?php
if(isset( $args['category_id']) && isset( $args['category_name']) ):
	$category_id = $args['category_id'];
	$category_name = $args['category_name'];
?>
<div id="category_holder">
	<h1 class="parent">
		<?php 
			$temp = mb_strtolower($category_name, "utf8");
			echo $temp;
		?>
	</h1>
	<div class="box_body">
	<?php 
		$prameter = array(
			'post_type' => 'post',
			'tax_query' => array(
				array(
					'taxonomy' => 'category',
					'field'    => 'term_id',
					'terms'    => $category_id,
					'include_children' => false
				),
			),
		);
		$wpq = new WP_Query( $prameter);
		if ($wpq->have_posts() ) :
			while ($wpq->have_posts()) :
				$wpq->the_post(); ?>
		<div class="short">
			<div class="short_holder">
				<h2><a href="<?php echo get_the_permalink() ?>" title="Nhiễu Điều Phủ Lấy Giá Gương">
						<?php echo get_the_title(); ?>
					</a>
				</h2>
				<span class="article_category_info">Tác giả: <a href="author/admin/"
						title="Sư cô Quang Thuần"><?php echo get_the_author(); ?></a></span><br>
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
<?php endif;?>