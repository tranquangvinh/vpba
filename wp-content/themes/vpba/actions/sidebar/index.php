<?php
include_once(__DIR__ . '/render/slider.php');

function action_slider(){
	$slider = get_theme_mod('item_gallery');
	$slider = json_decode($slider);
	render_slider($slider);
}