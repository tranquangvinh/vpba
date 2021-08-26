<?php 

/**
 * Add custom taxonomies
 *
 * Additional custom taxonomies can be defined here
 * http://codex.wordpress.org/Function_Reference/register_taxonomy
 */
function add_custom_taxonomies() {
    // Add new "Locations" taxonomy to Posts
    register_taxonomy('stories', 'post', array(
      // Hierarchical taxonomy (like categories)
      'hierarchical' => true,
      // This array of options controls the labels displayed in the WordPress Admin UI
      'labels' => array(
        'name' => _x( 'Stories', 'taxonomy general name' ),
        'singular_name' => _x( 'stories', 'taxonomy singular name' ),
        'search_items' =>  __( 'Search Locations' ),
        'all_items' => __( 'Tất cả chuyên mục' ),
        'parent_item' => __( 'Chuyên mục cha' ),
        'parent_item_colon' => __( 'Chuyên mục cha:' ),
        'edit_item' => __( 'Sửa chuyên mục truyện' ),
        'update_item' => __( 'cập nhật chuyên mục truyện' ),
        'add_new_item' => __( 'Tạo chuyên mục truyện' ),
        'new_item_name' => __( 'Tạo chuyên mục truyện' ),
        'menu_name' => __( 'Chuyện mục truyện' ),
      ),
      // Control the slugs used for this taxonomy
      'rewrite' => array(
        'slug' => 'locations', // This controls the base slug that will display before each term
        'with_front' => false, // Don't display the category base before "/locations/"
        'hierarchical' => true // This will allow URL's like "/locations/boston/cambridge/"
      ),
    ));
  }
add_action( 'init', 'add_custom_taxonomies', 0 );


function custom_post_type_story()
{


    /*
     * Biến $label để chứa các text liên quan đến tên hiển thị của Post Type trong Admin
     */
    $label = array(
        "name" => "Danh sách Truyện", //Tên post type dạng số nhiều
        "singular_name" => "story" //Tên post type dạng số ít
    );


    /*
     * Biến $args là những tham số quan trọng trong Post Type
     */
    $args = array(
        "labels" => $label, //Gọi các label trong biến $label ở trên
        "description" => "Post type ", //Mô tả của post type
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
        ), //Các tính năng được hỗ trợ trong post type
        "taxonomies" => array( "stories", "post_tag" ), //Các taxonomy được phép sử dụng để phân loại nội dung
        "hierarchical" => false, //Cho phép phân cấp, nếu là false thì post type này giống như Post, true thì giống như Page
        "public" => true, //Kích hoạt post type
        "show_ui" => true, //Hiển thị khung quản trị như Post/Page
        "show_in_menu" => true, //Hiển thị trên Admin Menu (tay trái)
        "show_in_nav_menus" => true, //Hiển thị trong Appearance -> Menus
        "show_in_admin_bar" => true, //Hiển thị trên thanh Admin bar màu đen.
        "menu_position" => 5, //Thứ tự vị trí hiển thị trong menu (tay trái)
        "can_export" => true, //Có thể export nội dung bằng Tools -> Export
        "has_archive" => true, //Cho phép lưu trữ (month, date, year)
        "exclude_from_search" => false, //Loại bỏ khỏi kết quả tìm kiếm
        "publicly_queryable" => true, //Hiển thị các tham số trong query, phải đặt true
        "capability_type" => "post" //
    );


    register_post_type("story", $args); //Tạo post type với slug tên là sanpham và các tham số trong biến $args ở trên


}
/* Kích hoạt hàm tạo custom post type */
add_action("init", "custom_post_type_story");