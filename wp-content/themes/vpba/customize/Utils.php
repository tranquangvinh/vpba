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