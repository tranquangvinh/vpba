<?php
include_once (dirname(__DIR__, 1) . '/Utils.php');

function add_list_advertisement_footer($wp_customize){
    list_advertisement($wp_customize, 'footer', 'item_advertisement_footer');
}

function add_menu_footer($wp_customize){
    select_menu($wp_customize, 'footer', 'menu_id_footer');
}

function add_list_social($wp_customize){
    $wp_customize->add_setting('item_social', array(
        'default'        => '',
    ));
    $wp_customize->add_control( new CDH_Box_Icon_control( $wp_customize, 'item_social',
        array(
            'label' => __( 'social' ),
            'section' => 'footer',
            'input_args' => [
            ],
            'fields' => [
                ['link', 'link', __("Link", 'nova-rklv')],
                ['type', 'text', __("Type social in: ( Facebook, Twitter, Google plus, Instagram)", 'nova-rklv')],
            ]
        )
    ) );
}


function add_content_contact($wp_customize){
    $wp_customize->add_setting('content_contact', array(
        'default'        => '',
    ));

    $wp_customize->add_control('content_contact', array(
        'label'   => 'Content contact',
        'section' => 'footer',
        'type'    => 'textarea',
    ));
}
