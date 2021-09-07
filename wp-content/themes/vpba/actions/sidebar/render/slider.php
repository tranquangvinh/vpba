<?php 
function render_slider($slider){
    ?>
    <div class="link_slider">
        <?php foreach ( $slider as $image){ ?>
            <?php 
                 $arr = explode(",",$image->link);
                 $url = substr($arr[0],13,strlen($arr[0])-1);?>
            <a href="<?php echo $url?>">
                <img src="<?php echo $image->image?>" alt="">
            </a>
        <?php
    } ?>
    </div>
<?php
}
