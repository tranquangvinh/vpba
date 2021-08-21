<?php
include_once(__DIR__ . '/render/template-news-header.php');

function action_box_news_header(){
	$args = array(
		'posts_per_page' => 10,
		'tag' => 'new'
	);
	$query = new WP_Query( $args );
    template_news_header($query);
}