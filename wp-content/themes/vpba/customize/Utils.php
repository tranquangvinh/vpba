<?php
function get_list_option_cat(){
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
    return $cats;
}

function combobox_choise_category($wp_customize, $label, $control_id, $section_id){

    $cats = get_list_option_cat();

    if(is_array($cats) && count($cats) > 0) {
        $wp_customize->add_setting($control_id,
            array(
                'default' => ''
            )
        );

        $wp_customize->add_control(new WP_Customize_Control(
            $wp_customize,
            $control_id,
            array(
                'label' => __($label),
                'settings' => $control_id,
                'priority' => 10,
                'section' => $section_id,
                'type' => 'select',
                'choices' => $cats
            )
        ));
    }
}

function list_advertisement($wp_customize, $section, $control_id){
    $wp_customize->add_setting($control_id, array(
        'default'        => '',
    ));
    $wp_customize->add_control( new CDH_Box_Icon_control( $wp_customize, $control_id,
        array(
            'label' => __( 'Advertisement' ),
            'section' => $section,
            'input_args' => [
            ],
            'fields' => [
                ['image', 'image', __("Image", 'nova-rklv')],
                ['link', 'link', __("Link", 'nova-rklv')],
            ]
        )
    ) );
}

function select_menu($wp_customize, $section, $control_id){
    $menus = wp_get_nav_menus();
    if(is_array($menus) && count($menus) > 0) {

        $options_menu = [];
        foreach ($menus as $menu){
            $options_menu[$menu->slug] = $menu->name;
        }

        $wp_customize->add_setting($control_id,
            array(
                'default' => ''
            )
        );

        $wp_customize->add_control(new WP_Customize_Control(
            $wp_customize,
            'menu_id',
            array(
                'label' => __('Choose menu link to website'),
                'settings' => $control_id,
                'section' => $section,
                'type' => 'select',
                'choices' => $options_menu
            )
        ));
    }
}