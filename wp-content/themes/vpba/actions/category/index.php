<?php
include_once(__DIR__ . '/render/template-category.php');
include_once(__DIR__ . '/render/template-category-header.php');

function action_box_cate(){
	$categories = [
		[
			"cat_id" => get_theme_mod('option-category-1'),
			"cat_limit" => 6
		],
		[
			"cat_id" => get_theme_mod('option-category-2'),
			"cat_limit" => 6
		],
		[
			"cat_id" => get_theme_mod('option-category-3'),
			"cat_limit" => 6
		],
		[
			"cat_id" => get_theme_mod('option-category-4'),
			"cat_limit" => 6
		]
	];

	foreach ($categories as $cat) {
		template_category($cat);
	}
}

function action_box_cat_header(){
	$cat_id = get_theme_mod('option-category-home');
    if(isset($cat_id)){
        $args = array(
            'post_type' => 'post',
            'posts_per_page' => 10,
            'tax_query' => array(
                array(
                    'taxonomy' => 'category',
                    'field' => 'term_id',
                    'terms' => $cat_id
                )
            )
        );
        $query = new WP_Query( $args );
        template_category_header($query);
    }
}
