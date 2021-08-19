<?php
include_once (dirname(__DIR__, 1) . '/Utils.php');
include_once (dirname(__DIR__, 2) . '/plugins/box-icon/box-icon.php');
include_once (dirname(__DIR__, 2) . '/plugins/multi-select/multi-select.php');

function add_banner_header($wp_customize){
	// banner header
    $wp_customize->add_setting('banner-header', array(
        'default'        => '',
    ));
    $wp_customize->add_control(
        new WP_Customize_Image_Control(
            $wp_customize,
            'banner-header',
            array(
                'label'      => __( 'Upload a banner', 'theme_name' ),
                'section'    => 'static_front_page',
                'settings'   => 'banner-header',
            )
        )
    );
}

function add_link_banner($wp_customize){
	// banner header
    $wp_customize->add_setting('link-banner', array(
	 'default'        => '',
	 ));
	$wp_customize->add_control('link-banner', array(
		 'label'   => 'Link banner',
		 'section' => 'static_front_page',
		 'type'    => 'text',
	));
}

function add_option_category($wp_customize){
    combobox_choise_category(
        $wp_customize,
        'Select category to slogan',
        'option-category',
        'static_front_page');
}

function add_option_category_home($wp_customize){
    combobox_choise_category(
            $wp_customize,
            'Select category to home',
            'option-category-home',
            'static_front_page');
}

function add_option_category_1($wp_customize){
    combobox_choise_category(
        $wp_customize,
        'Select category 1',
        'option-category-1',
        'static_front_page');
}

function add_option_category_2($wp_customize){
    combobox_choise_category(
        $wp_customize,
        'Select category 2',
        'option-category-2',
        'static_front_page');
}

function add_option_category_3($wp_customize){
    combobox_choise_category(
        $wp_customize,
        'Select category 3',
        'option-category-3',
        'static_front_page');
}

function add_option_category_4($wp_customize){
    combobox_choise_category(
        $wp_customize,
        'Select category 4',
        'option-category-4',
        'static_front_page');
}





