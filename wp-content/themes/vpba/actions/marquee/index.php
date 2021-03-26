<?php 
include_once(__DIR__ . '/render/marquee-header.php');

function action_marquee_header(){
	$cat_id = get_theme_mod('option-category');
    if(isset($cat_id)){
        $args = array(
            'post_type' => 'post',
            'posts_per_page' => 4,
            'tax_query' => array(
                array(
                    'taxonomy' => 'category',
                    'field' => 'term_id',
                    'terms' => $cat_id
                )
            )
        );
        $query = new WP_Query($args);
        render_marquee_header($query);
    }
}