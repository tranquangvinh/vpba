<?php

get_header();

$terms = get_the_terms(get_the_ID(), 'stories');

if(is_array($terms) && count($terms) > 0){
	$term = $terms[0];
} ?>

<div class="container">
	<div class="row">
		<div class="col-md-8 col-sm-12">
			<?php get_template_part('template-parts/story/detail', 'detail', ['term_id' => $terms[0]->term_id, 'post_id' => get_the_ID()]); ?>

			<!-- related story -->
			<?php 
                if($term != null){
                    get_template_part('template-parts/story/related', 'realted', ['term_id' => $terms[0]->term_id]);
                }
            ?>
		</div>
		<div class="col-md-4 col-sm-12" style="margin-top: 50px">
			<?php get_sidebar(); ?>
			<?php get_template_part(
				'template-parts/fanpage/index', 
				'fanpage', 
				[
				'link_fanpage' => get_theme_mod('link_fanpage_info'),
				'width' => 300,
				'height' => 500
				]
			); ?>
		</div>
	</div>
</div>

<?php get_footer(); ?>
 