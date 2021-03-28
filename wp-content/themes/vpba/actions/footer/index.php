<?php
include_once(__DIR__ . '/render/menu-footer.php');
include_once(__DIR__ . '/render/list-social.php');

function action_advertisements_footer(){
    $advertisements = get_theme_mod('item_advertisement_footer');
    $advertisements = json_decode($advertisements);
    render_marquee_sidebar_advertisement($advertisements, "left");
}

function action_menu_footer(){
    render_menu_footer(get_theme_mod('menu_id_footer'));
}

function action_list_social(){
    render_list_social(json_decode(get_theme_mod('item_social')));
}
