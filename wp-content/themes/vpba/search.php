<?php

get_header(); ?>
<?php get_template_part('template-parts/header/breadcrumb', 'archive', ['title' => "Kết quả tìm kiếm"]); ?>

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

<?php get_footer();
