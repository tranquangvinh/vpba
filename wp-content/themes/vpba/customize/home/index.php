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


function add_option_category($wp_customize){

    // get list category
    $terms = get_terms( array(
        'taxonomy' => 'category',
        'hide_empty' => false,
    ));

    $cats = array();
    if(is_array($terms) && count($terms) > 0){
        foreach ($terms as $term) {
            // continue when $term is category default.
            if($term->term_id > 1){
                $cats[$term->term_id] = $term->name;
            }
        }
    }

    $wp_customize->add_setting( 'option-category',
        array(
            'default'    => ''
        )
    );

    $wp_customize->add_control( new WP_Customize_Control(
        $wp_customize,
        'option-category',
        array(
            'label'      => __( 'Select category to slogan'),
            'settings'   => 'option-category',
            'priority'   => 10,
            'section'    => 'static_front_page',
            'type'    => 'select',
            'choices' => $cats
        )
    ) );
}
