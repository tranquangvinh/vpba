<?php 
include_once(__DIR__ . '/category/index.php');
include_once(__DIR__ . '/marquee/index.php');
include_once(__DIR__ . '/sidebar/index.php');
include_once(__DIR__ . '/footer/index.php');
include_once(__DIR__ . '/post/index.php');

add_action('homepage_block_category', 'action_box_cate');
add_action('box_cat_header', 'action_box_cat_header');
add_action('marquee_header', 'action_marquee_header');
add_action('sliders', 'action_sliders');
add_action('videos', 'action_videos');
add_action('advertisements', 'action_advertisements');
add_action('exchange_rate_info', 'action_exchange_rate_info');
add_action('link_website', 'action_link_website');
add_action('advertisements_footer', 'action_advertisements_footer');
add_action('menu_footer', 'action_menu_footer');
add_action('list_social', 'action_list_social');
add_action('pagination', 'action_pagination');

