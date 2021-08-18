
<div class="footer">
    <div class="container">
        <div class="contact">
           <?php echo wp_nav_menu(['menu' => 'menu-footer-1']); ?>
        </div>
        <div class="contact">
           <?php echo wp_nav_menu(['menu' => 'menu-footer-2']); ?>
        </div>
    </div>
</div>
<div id="back-to-top">
    <img src="<?php echo get_template_directory_uri() . '/assets/img/backtotop.png' ?>" alt="">
</div>
 <?php wp_footer(); ?>
</body>
</html>