<?php

add_theme_support( 'post-thumbnails' );
// add js and css to header
add_action( 'wp_enqueue_scripts', 'meanwell_theme_enqueue_styles' );

function meanwell_theme_enqueue_styles() {
    // css
    wp_enqueue_style( 'bootstrap-min', get_template_directory_uri() . '/assets/css/bootstrap.min.css');
    wp_enqueue_style( 'bootstrap-grid', get_template_directory_uri() . '/assets/css/bootstrap-grid.min.css');
    wp_enqueue_style( 'custom-style', get_template_directory_uri() . '/assets/css/custom-style.css');
    wp_enqueue_style( 'select2', get_template_directory_uri() . '/assets/css/select2.min.css');
    wp_enqueue_style( 'carousel', get_template_directory_uri() . '/assets/css/owl.carousel.min.css');
    wp_enqueue_style( 'slick-css', get_template_directory_uri() . '/assets/css/slick.css');

    // js
    wp_enqueue_script( 'bootstrap-js-min', get_template_directory_uri() . '/assets/js/bootstrap.min.js', ["jquery"], true);
    wp_register_script( 'day-js', get_template_directory_uri() . '/assets/js/plugin/dayjs/dayjs.min.js', ["jquery"], true);
    wp_register_script( 'locale-js', get_template_directory_uri() . '/assets/js/plugin/dayjs/locale/vi.js', ['day-js'], true);
    wp_register_script( 'custom-style', get_template_directory_uri() . '/assets/js/custom-style.js', ['locale-js'], true);
    wp_enqueue_script( 'custom-style');
    wp_enqueue_script( 'font-awesome', get_template_directory_uri() . '/assets/js/plugin/fontawesome/104543add0.js', 0, true);
    wp_enqueue_script( 'font-awesome', get_template_directory_uri() . '/assets/js/cdh-customize-upload.js', 0, true);
    wp_enqueue_script( 'font-awesome', get_template_directory_uri() . '/assets/js/select2.full.min.js', 0, true);
    wp_enqueue_script( 'carousel', get_template_directory_uri() . '/assets/js/owl.carousel.min.js', 0, true);
    wp_enqueue_script( 'slick-js', get_template_directory_uri() . '/assets/js/slick.min.js', 0, true);

}

function wpb_custom_new_menu() {
    register_nav_menu('my-custom-menu',__( 'My Custom Menu' ));
}
add_action( 'init', 'wpb_custom_new_menu' );

// add customize theme settings
include_once(__DIR__ . '/customize/index.php');
// add actions
include_once(__DIR__ . '/actions/index.php');




