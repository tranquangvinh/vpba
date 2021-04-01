<?php 
/* Template Name: Page contact */ 
?>
<?php get_header() ?>
<?php get_template_part('template-parts/header/breadcrumb', 'archive', ['title' => 'Liên hệ']); ?>

<div class="container mt-4">
	<div class="row">
		<div class="col-md-9 col-sm-12">
			<?php get_template_part('template-parts/pages/detail', 'detail'); ?>
			<div class="form-contact col-md-8 col-sm-12 m-auto">
				<?php echo do_shortcode('[contact-form-7 id="216" title="contact"]') ?>
			</div>
		</div>
		<div class="col-md-3 col-sm-12">
			<?php get_sidebar(); ?>
		</div>
	</div>
	
</div>
<?php get_footer() ?>

