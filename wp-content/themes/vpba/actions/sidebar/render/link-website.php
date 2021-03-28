<?php
function render_link_website($menu_id){
    $list_item_menu = wp_get_nav_menu_items($menu_id);

    if(is_array($list_item_menu) && count($list_item_menu) > 0) : ?>
        <div class="link-website">
            <select name="link-website" id="list-menu-link-website">
                <option value="">
                    Chọn một liên kết
                </option>
                <?php foreach ($list_item_menu as $item_menu) : ?>
                    <option value="<?php echo $item_menu->url; ?>">
                        <?php echo $item_menu->title; ?>
                    </option>
                <?php endforeach; ?>
            </select>
        </div>
<?php endif;
}