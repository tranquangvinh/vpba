<?php 
while ( have_posts() ) :
	the_post(); ?>	
	<div class="page-detail">
		<div class="content">
			<?php echo get_the_content(); ?>
		</div>
	</div>
<?php endwhile; ?>


