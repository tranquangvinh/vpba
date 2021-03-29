<?php 
	get_header();
	// get current category 
	$category = get_queried_object();
	// $list_cat_id = get_term_children($category->term_id, 'category');
	// $args = array(
 //        'post_type' => 'post',
 //        'posts_per_page' => 3,
 //        'paged' => 1,
 //        'tax_query' => array(
 //            array(
 //                'taxonomy' => 'category',
 //                'field' => 'term_id',
 //                'terms' => $category->term_id
 //            )
 //        )
 //    );

	// // if(is_array($list_cat_id) && count($list_cat_id) > 0) :
	// // 	$args['post_parent'] = $category->term_id;
	// // 	unset($args['tax_query']);
	// // endif;
	// $query = new WP_Query( $args );
?>
<?php get_template_part('template-parts/header/breadcrumb', 'archive', ['title' => $category->name]); ?>

<div class="container">
	<div class="row">
		<div class="col-md-9 col-sm-12">
			<?php get_template_part('template-parts/archive/posts', 'posts'); ?>
			<div>
				<?php get_template_part('template-parts/archive/pagination', 'pagination'); ?>
			</div>
		</div>
		<div class="col-md-3 col-sm-12">
			<?php get_sidebar(); ?>
		</div>
	</div>
</div>
<?php get_footer() ?>

