<?php 
function render_slider($slider){?>
    <div class="link_slider">
        <?php foreach ( $slider as $image){ 
            $link = "";
            $link_external = "";?>
            <?php if($image->link){ 
                $link = json_decode($image->link);
                $link_external = $link->external;
            }?>
            <a href="<?php echo $link_external?>">
                <img src="<?php echo $image->image?>" alt="">
            </a>
        <?php } ?>
    </div>
<?php
}
