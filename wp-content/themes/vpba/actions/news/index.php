<?php
include_once(__DIR__ . '/render/template-news-header.php');

function action_box_news_header(){
	$tag_name = get_theme_mod('tag_right');
	if(isset($tag_name)){
		$args = array(
			'posts_per_page' => 7,
			'tag' => $tag_name
		);
		$query = new WP_Query( $args );
		template_news_header($query);
	}
}