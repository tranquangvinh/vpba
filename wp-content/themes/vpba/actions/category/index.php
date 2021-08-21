<?php
include_once(__DIR__ . '/render/template-category.php');
include_once(__DIR__ . '/render/template-category-header.php');

function action_box_cate(){
	$cats = get_theme_mod('multi-category');
	if(isset($cats)){
		foreach($cats as $id){
			template_category($id, 6);
		}
	}
}

function action_box_cat_header(){
	$tag_name = get_theme_mod('tag_left');
    if(isset($tag_name)){
        $args = array(
            'posts_per_page' => 10,
			'tag' => $tag_name
        );
        $query = new WP_Query( $args );
        template_category_header($query);
    }
}
