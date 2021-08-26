<?php
include_once(__DIR__ . '/render/slider.php');
include_once(__DIR__ . '/render/video.php');
include_once (dirname(__DIR__, 2) . '/actions/marquee/render/marquee-advertisement.php');
include_once(__DIR__ . '/render/exchange-rate-info.php');
include_once(__DIR__ . '/render/link_fanpage_info.php');
include_once(__DIR__ . '/render/link-website.php');
include_once(__DIR__ . '/render/posts_random.php');

function action_sliders(){
	$slider = get_theme_mod('item_gallery');
	$slider = json_decode($slider);
	render_slider($slider);
}

function action_videos(){
    $videos = get_theme_mod('item_video');
    $videos = json_decode($videos);
    render_video($videos);
}

function action_advertisements(){
    $advertisements = get_theme_mod('item_advertisement');
    $advertisements = json_decode($advertisements);
    render_marquee_sidebar_advertisement($advertisements, "down");
}

function action_exchange_rate_info(){
    $exchange_rate_info = get_theme_mod('exchange_rate_info');
    render_exchange_rate_info($exchange_rate_info);
}

function action_posts_random(){
    $tag_name = get_theme_mod('posts_random');
	if(isset($tag_name)){
		$args = array(
			'posts_per_page' => 7,
			'tag' => $tag_name
		);
		$query = new WP_Query( $args );
		render_posts_random($query);
	}

}

function action_link_fanpage_info(){
    $link_fanpage_info = get_theme_mod('link_fanpage_info');
    render_link_fanpage_info($link_fanpage_info);
}

function action_link_website() {
    $menu_id = get_theme_mod('menu_id');
    render_link_website($menu_id);
}