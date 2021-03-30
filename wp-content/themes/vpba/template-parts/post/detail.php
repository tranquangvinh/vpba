<?php 
while ( have_posts() ) :
	the_post(); ?>	
	<div class="post-detail">
		<h1 class="title"><?php echo get_the_title(); ?></h1>
		<div class="time-create-date my-2" id="time-create-date"></div>
		<div id="time-create-date-hide" class="d-none"><?php echo get_post_time( 'l F j, Y'); ?></div>
		<div class="content">
			<?php echo get_the_content(); ?>
		</div>
	</div>
	<div class="tag-post">
		<?php 
			$posttags = get_the_tags();
			if ($posttags) : ?>
			  <span class="title-tag">Tags : </span>
	  <?php   foreach($posttags as $tag) : ?>
			  	<span class="tag-name"><?php echo $tag->name; ?></span>  
	  <?php   endforeach; ?>
	<?php   endif;
		?>
	</div>
<?php endwhile; ?>


