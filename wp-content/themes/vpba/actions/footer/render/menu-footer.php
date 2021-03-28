<?php

function render_menu_footer($id_menu){ ?>
    <div class="menu-footer">
        <?php echo wp_nav_menu(['menu' => $id_menu]); ?>
    </div>
<?php }