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
}

function wpb_custom_new_menu() {
    register_nav_menu('my-custom-menu',__( 'My Custom Menu' ));
}
add_action( 'init', 'wpb_custom_new_menu' );




// add customize theme settings

add_action('customize_register', function($wp_customize){

//    $wp_customize->add_panel('homepage-setting',
//        array(
//            'title' => __('Homepage Blocks', 'nova-rklv'),
//        )
//    );
//
//    $wp_customize->add_section('homepage-section',
//        array(
//            'title' => __('Body: Hero Banner', 'nova-rklv'),
//            'panel' => 'homepage-setting'
//        )
//    );


    $wp_customize->add_setting('logo', array(
        'default'        => '',
    ));
    $wp_customize->add_control(
        new WP_Customize_Image_Control(
            $wp_customize,
            'logo',
            array(
                'label'      => __( 'Upload a logo', 'theme_name' ),
                'section'    => 'static_front_page',
                'settings'   => 'logo',
            )
        )
    );

});