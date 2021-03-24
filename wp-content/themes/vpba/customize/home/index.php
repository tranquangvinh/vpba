<?php

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