<?php
// add js and css to header
add_action( 'wp_enqueue_scripts', 'meanwell_theme_enqueue_styles' );
function meanwell_theme_enqueue_styles() {
    // css
    wp_enqueue_style( 'bootstrap-min', get_template_directory_uri() . '/assets/css/bootstrap.min.css');
    wp_enqueue_style( 'bootstrap-grid', get_template_directory_uri() . '/assets/css/bootstrap-grid.min.css');
    wp_enqueue_style( 'custom-style-css', get_template_directory_uri() . '/assets/css/custom-style.css');

    // js
    wp_enqueue_script('jquery');
    wp_enqueue_script( 'bootstrap-js-min', get_template_directory_uri() . '/assets/js/bootstrap.min.js', 0, true);
    wp_enqueue_script( 'custom-style-js', get_template_directory_uri() . '/assets/js/custom-style.js', 0, true);
    wp_enqueue_script( 'font-awesome', 'https://use.fontawesome.com/104543add0.js', 0, true);
}

function wpb_custom_new_menu() {
    register_nav_menu('my-custom-menu',__( 'My Custom Menu' ));
}
add_action( 'init', 'wpb_custom_new_menu' );




// add customize theme settings
include_once(__DIR__ . '/customize/home/index.php');

add_action('customize_register', 'add_banner_header');
add_action('customize_register', 'add_link_banner');

 