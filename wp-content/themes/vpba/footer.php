
<div class="footer">
    <div class="container">
        <div class="contact">
           <?php echo wp_nav_menu(['menu' => 'menu-footer-1']); ?>
        </div>
         <div class="contact">
           <?php echo wp_nav_menu(['menu' => 'menu-footer-2']); ?>
        </div>
        <div class="footer_info">
            <p style="color: #172973;"><b>Copyright © 2009 - 2021 Đạo Phật Ngày Nay</b><br>
                Biên tập: <b>Thượng tọa Thích Nhật Từ</b> | Phụ trách mạng: <b>Thích Ngộ Dũng - Hải Hạnh - Giác Định</b><br>
                <b>Bài vở đóng góp, xin gởi attachment về Ban biên tập qua địa chỉ email: goibaidaophatngaynay@yahoo.com hoặc thichngodung@gmail.com</b></p>
            <p>Liên lạc thư tín với Tỳ-kheo Thích Nhật Từ xin gởi về: <br>
                Chùa Giác Ngộ, 92 Nguyễn Chí Thanh, phường 3, quận 10, TP. Hồ Chí Minh, Việt Nam<br>
                Điện thoại từ nước ngoài: +84-908-153-160 (M); +84-8-830-9570 (H); trong nước: 0908153160; 8309570.</p>
        </div>
    </div>
</div>
<div id="back-to-top">
    <img src="<?php echo get_template_directory_uri() . '/assets/img/backtotop.png' ?>" alt="">
</div>
 <?php wp_footer(); ?>
</body>
</html>