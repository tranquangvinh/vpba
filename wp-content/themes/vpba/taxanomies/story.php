<?php 

function add_taxonomy_stories() {
    register_taxonomy('stories', 'stories', array(
      'hierarchical' => true,
      'labels' => array(
        'name' => _x( 'Stories', 'taxonomy general name' ),
        'singular_name' => _x( 'stories', 'taxonomy singular name' ),
        'search_items' =>  __( 'Search Locations' ),
        'all_items' => __( 'All story' ),
        'parent_item' => __( 'Parent story' ),
        'parent_item_colon' => __( 'Parent story' ),
        'edit_item' => __( 'Edit story' ),
        'update_item' => __( 'Update story' ),
        'add_new_item' => __( 'Add Story' ),
        'new_item_name' => __( 'Add Story' ),
        'menu_name' => __( 'Stories' ),
      ),
      'rewrite' => array(
        'slug' => 'stories',
        'with_front' => false,
        'hierarchical' => true
      ),
    ));
  }
add_action( 'init', 'add_taxonomy_stories', 0 );

function add_custom_taxonomies() {
  register_taxonomy('Tags', 'tag_story', array(
    'hierarchical' => true,
    'labels' => array(
      'name' => _x( 'Tags', 'taxonomy general name' ),
      'singular_name' => _x( 'tags', 'taxonomy singular name' ),
      'search_items' =>  __( 'Search tags' ),
      'all_items' => __( 'All tag' ),
      'parent_item' => __( 'Parent tag' ),
      'parent_item_colon' => __( 'Parent tag:' ),
      'edit_item' => __( 'Edit tag' ),
      'update_item' => __( 'Update tag' ),
      'add_new_item' => __( 'Add tag' ),
      'new_item_name' => __( 'Add tag' ),
      'menu_name' => __( 'Tags' ),
    ),
    'rewrite' => array(
      'slug' => 'tags-story',
      'with_front' => false,
      'hierarchical' => true
    ),
  ));
}
add_action( 'init', 'add_custom_taxonomies', 0 );


function custom_post_type_story()
{
    $label = array(
        "name" => "Posts Story",
        "singular_name" => "All story"
    );
    $args = array(
        "labels" => $label,
        "description" => "Post type ",
        "supports" => array(
            "title",
            "editor",
            "excerpt",
            "author",
            "thumbnail",
            "comments",
            "trackbacks",
            "revisions",
            "custom-fields"
        ),
        "taxonomies" => array( "stories", "Tags" ),
        "hierarchical" => false,
        "public" => true,
        "show_ui" => true,
        "show_in_menu" => true,
        "show_in_nav_menus" => true,
        "show_in_admin_bar" => true,
        "menu_position" => 5,
        "can_export" => true,
        "has_archive" => true,
        "exclude_from_search" => false,
        "publicly_queryable" => true,
        "capability_type" => "post"
    );
    register_post_type("story", $args);
}
add_action("init", "custom_post_type_story");