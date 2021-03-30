<?php

get_header();

$categories = get_the_category(get_the_ID());//$post->ID

$category_name = '';
if(is_array($categories) && count($categories) > 0){
	$category_name = $categories[0]->name;
}
get_template_part('template-parts/header/breadcrumb', 'archive', ['title' => $category_name]); ?>

<div class="container">
	<div class="row">
		<div class="col-md-9 col-sm-12">
			<?php get_template_part('template-parts/post/detail', 'detail'); ?>
			<!-- related post -->
			<?php get_template_part('template-parts/post/related', 'realted', ['category_id' => $categories[0]->term_id]); ?>
		</div>
		<div class="col-md-3 col-sm-12">
			<?php get_sidebar(); ?>
		</div>
	</div>
</div>

<?php get_footer();
