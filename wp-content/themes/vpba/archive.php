<?php 
	get_header();
	$category = get_queried_object();
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
