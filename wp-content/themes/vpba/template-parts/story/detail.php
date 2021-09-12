<?php 
define("ID", $args['post_id']);

$posttags = null;

while ( have_posts() ) :
	$posttags = get_the_tags();
	the_post(); ?>	
	<div class="post-detail">
		<h1 class="title"><?php echo get_the_title(); ?></h1>
		<div class="time-create-date my-2" id="time-create-date"></div>
		<div id="time-create-date-hide" class="d-none"><?php echo get_post_time( 'l F j, Y'); ?></div>
		<div class="content">
			<?php echo get_the_content(); ?>
		</div>
	</div>
<?php endwhile; ?>
<?php wp_reset_postdata(); ?>

<?php
	if(isset($args['term_id'])){
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
					'terms'    => $args['term_id'],
					'include_children' => false
				),
			),
		);
		$wpq = new WP_Query( $prameter);
		if ($wpq->have_posts() ) : ?>
			<div class="title-list-story">Những tập kinh khác: </div>
	<?php	while ($wpq->have_posts()) :
				$wpq->the_post(); ?>
			<p class="item-story">
				<a class="<?php echo get_the_ID() == ID ? 'active' : '' ?>" href="<?php echo get_the_permalink(); ?>">
					<?php echo get_the_title(); ?>
				</a>
			</p>	

	<?php  endwhile;
		endif;
		wp_reset_postdata();
	} ?>

<?php 
	if ($posttags) : ?>
		<div class="tag-post">
				<span class="title-tag">Tags : </span>
		<?php   foreach($posttags as $tag) : ?>
					<span class="tag-name"><?php echo $tag->name; ?></span>  
		<?php   endforeach; ?>
		</div>
		<?php  
	endif;


