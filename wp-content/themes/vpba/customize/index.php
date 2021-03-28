<?php
include_once(__DIR__ . '/home/index.php');
include_once(__DIR__ . '/sidebar/index.php');
include_once(__DIR__ . '/section/index.php');


// add section customize
add_action('customize_register', 'block_sidebar');

// add customize theme settings
add_action('customize_register', 'add_banner_header');
add_action('customize_register', 'add_link_banner');
add_action('customize_register', 'add_option_category');
add_action('customize_register', 'add_option_category_home');
add_action('customize_register', 'add_option_category_1');
add_action('customize_register', 'add_option_category_2');
add_action('customize_register', 'add_option_category_3');
add_action('customize_register', 'add_option_category_4');
add_action('customize_register', 'add_list_gallery');
add_action('customize_register', 'add_list_video');
add_action('customize_register', 'add_list_advertisement');
add_action('customize_register', 'add_exchange_rate');
add_action('customize_register', 'add_link_website');
