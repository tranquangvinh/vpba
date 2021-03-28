
<div class="footer">
    <div class="container">
        <div class="advertisement-footer">
            <div class="title-header d-flex align-items-end mt-4">
                <a class="main mr-auto" href="">
                    <span>Quảng cáo</span>
                </a>
                <div class="clearfix"></div>
            </div>
            <?php do_action('advertisements_footer'); ?>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="top d-flex align-items-end">
                <div class="mr-auto">
                    <?php do_action('menu_footer'); ?>
                </div>
                <div class="social">
                    <?php do_action('list_social'); ?>
                </div>
            </div>
            <div class="contact">
                <?php echo get_theme_mod('content_contact'); ?>
            </div>
        </div>
    </div>
</div>

 <?php wp_footer(); ?>
</body>
</html>