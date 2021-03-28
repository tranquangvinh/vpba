<?php 
function render_slider($slider){
	if(is_array($slider) && count($slider) > 0){ ?>
        <div class="owl-carousel owl-theme owl-carousel-sidebar">
        <?php foreach ($slider as $item){
                $link = "";
                if($item->link){
                    $link = json_decode($item->link);
                    $link = $link->external;
                }
            ?>
            <div class="item">
                <a href="<?php echo $link; ?>">
                    <img src="<?php echo $item->image; ?>" alt="">
                </a>
            </div>
        <?php } ?>
        </div>
<?php }
}