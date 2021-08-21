<?php
include_once(__DIR__ . '/home/index.php');
include_once(__DIR__ . '/sidebar/index.php');
include_once(__DIR__ . '/section/index.php');
include_once(__DIR__ . '/footer/index.php');

// add section customize
add_action('customize_register', 'block_sidebar');
add_action('customize_register', 'block_footer');

// add customize theme settings
add_action('customize_register', 'add_banner_header');
add_action('customize_register', 'add_link_banner');
add_action('customize_register', 'add_tag_left');
add_action('customize_register', 'add_tag_right');
add_action('customize_register', 'add_multi_choise_category');
add_action('customize_register', 'add_list_gallery');
add_action('customize_register', 'add_exchange_rate');
add_action('customize_register', 'add_link_fanpage');
add_action('customize_register', 'add_link_website');
add_action('customize_register', 'add_list_advertisement_footer');
add_action('customize_register', 'add_menu_footer');
add_action('customize_register', 'add_list_social');
add_action('customize_register', 'add_content_contact');

