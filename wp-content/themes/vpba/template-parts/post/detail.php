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

	<div class="social">
		<!-- fb-root -->
		<div id="fb-root"></div>

		<!-- like and share -->
		<div class="d-block">
			<div class="fb-like" data-href="<?php echo get_the_permalink(); ?>" data-width="" data-layout="standard" data-action="like" data-size="small" data-share="true"></div>
		</div>
		<!-- comment -->
		<div class="fb-comments" data-href="<?php echo get_the_permalink(); ?>" data-width="" data-numposts="5"></div>
	</div>

	<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v10.0&appId=1955523768040959&autoLogAppEvents=1" nonce="hWtfk6rn"></script>
<?php endwhile; ?>


