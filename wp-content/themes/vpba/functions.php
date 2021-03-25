<?php

add_theme_support( 'post-thumbnails' );
// add js and css to header
add_action( 'wp_enqueue_scripts', 'meanwell_theme_enqueue_styles' );

function meanwell_theme_enqueue_styles() {
    // css
    wp_enqueue_style( 'bootstrap-min', get_template_directory_uri() . '/assets/css/bootstrap.min.css');
    wp_enqueue_style( 'bootstrap-grid', get_template_directory_uri() . '/assets/css/bootstrap-grid.min.css');
    wp_enqueue_style( 'custom-style-css', get_template_directory_uri() . '/assets/css/custom-style.css');
    wp_enqueue_style( 'custom-style-css', get_template_directory_uri() . '/assets/css/select2.min.css');

    // js
    wp_enqueue_script( 'bootstrap-js-min', get_template_directory_uri() . '/assets/js/bootstrap.min.js', ["jquery"], true);
    wp_register_script( 'day-js', get_template_directory_uri() . '/assets/js/plugin/dayjs/dayjs.min.js', ["jquery"], true);
    wp_register_script( 'locale-js', get_template_directory_uri() . '/assets/js/plugin/dayjs/locale/vi.js', ['day-js'], true);
    wp_register_script( 'custom-style-js', get_template_directory_uri() . '/assets/js/custom-style.js', ['locale-js'], true);
    wp_enqueue_script( 'custom-style-js');
    wp_enqueue_script( 'font-awesome', get_template_directory_uri() . '/assets/js/plugin/fontawesome/104543add0.js', 0, true);
    wp_enqueue_script( 'font-awesome', get_template_directory_uri() . '/assets/js/cdh-customize-upload.js', 0, true);
    wp_enqueue_script( 'font-awesome', get_template_directory_uri() . '/assets/js/select2.full.min.js', 0, true);


}

function wpb_custom_new_menu() {
    register_nav_menu('my-custom-menu',__( 'My Custom Menu' ));
}
add_action( 'init', 'wpb_custom_new_menu' );

// add customize theme settings
include_once(__DIR__ . '/customize/home/index.php');
add_action('customize_register', 'add_banner_header');
add_action('customize_register', 'add_link_banner');
add_action('customize_register', 'add_option_category');
add_action('customize_register', 'add_option_category_home');
add_action('customize_register', 'add_option_category_1');
add_action('customize_register', 'add_option_category_2');
add_action('customize_register', 'add_option_category_3');
add_action('customize_register', 'add_option_category_4');



