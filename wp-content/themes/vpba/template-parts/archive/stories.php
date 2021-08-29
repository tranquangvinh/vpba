<?php
if(isset( $args['term_id']) && isset( $args['term_name']) ):
	$term_id = $args['term_id'];
	$term_name = $args['term_name'];
?>
<div id="category_holder">
	<h1 class="parent">
		<?php 
			$temp = mb_strtolower($term_name, "utf8");
			echo ucfirst($temp); 
		?>
	</h1>
	<div class="box_body">
	<?php 
		$prameter = array(
            'posts_per_page' => -1,
			'post_type' => 'story',
            'meta_key'	=> 'stt',
            'orderby'	=> 'meta_value_num',
            'order'		=> 'ASC',
			'tax_query' => array(
				array(
					'taxonomy' => 'stories',
					'field'    => 'term_id',
					'terms'    => $term_id,
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
				<h2><a href="<?php echo get_the_permalink() ?>">
						<?php echo get_the_title(); ?>
					</a>
				</h2>
			</div>
		</div>
		<?php	
			endwhile;
			?>
		<?php
		else: 
			echo "<h1 class='data-empty'>Không có kết quả phù hợp với từ khóa tìm kiếm.</h1>";
		endif;
		wp_reset_postdata(); ?>
	</div>
</div>
<?php endif;?>