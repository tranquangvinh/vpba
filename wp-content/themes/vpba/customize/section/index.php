<?php 

function block_sidebar($wp_customize){
	$wp_customize->add_section( 'sidebar' , array(
    	'title'  => __('Sidebar')
	));
}