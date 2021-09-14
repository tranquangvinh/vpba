<?php
if(isset( $args['term_id']) && isset( $args['category_name']) && isset( $args['term_id'])):
	$term_id = $args['term_id'];
	$category_name = $args['category_name'];
	$category_id = $args['category_id'];
	// do you have a son?
	$categories=get_categories(
		array( 'parent' => $category_id)
	);
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
			'post_per_page' => 2,
			'paged' => get_query_var('paged'),
			'tax_query' => array(
				array(
					'taxonomy' => 'category',
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
			if(empty($categories)){?>
				<div class="pagination-category">
					<?php do_action('pagination'); ?>
				</div>
		<?php } 
		endif;
		wp_reset_postdata(); ?>
	</div>
</div>
<?php endif;?>