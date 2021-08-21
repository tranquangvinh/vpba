<?php
include_once (dirname(__DIR__, 1) . '/Utils.php');

function add_list_gallery($wp_customize){
    $wp_customize->add_setting('item_gallery', array(
        'default'        => '',
    ));
    $wp_customize->add_control( new CDH_Box_Icon_control( $wp_customize, 'item_gallery',
        array(
            'label' => __( 'Danh sách quảng cáo' ),
            'section' => 'sidebar',
            'input_args' => [
            ],
            'fields' => [
                ['image', 'image', __("Image", 'nova-rklv')],
                ['link', 'link', __("Link", 'nova-rklv')],
            ]
        )
    ) );
}

function add_exchange_rate($wp_customize){
    $wp_customize->add_setting('exchange_rate_info', array(
        'default'        => '',
    ));

    $wp_customize->add_control('exchange_rate_info', array(
        'label'   => 'Link exchange rate',
        'section' => 'sidebar',
        'type'    => 'text',
    ));
}

function add_link_website($wp_customize){
    select_menu($wp_customize, 'sidebar', 'menu_id');
}

function add_link_fanpage($wp_customize){
    $wp_customize->add_setting('link_fanpage_info', array(
        'default'        => '',
    ));

    $wp_customize->add_control('link_fanpage_info', array(
        'label'   => 'Link FanPage',
        'section' => 'sidebar',
        'type'    => 'text',
    ));
}