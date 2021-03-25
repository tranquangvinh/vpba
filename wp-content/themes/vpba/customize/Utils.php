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