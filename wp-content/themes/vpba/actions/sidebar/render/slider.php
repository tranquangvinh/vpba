<?php 
function render_slider($slider){
    ?>
    <div class="link_slider">
        <?php foreach ( $slider as $image){ ?>
            <a href="<?php echo $image->link ?>">
                <img src="<?php echo $image->image?>" alt="">
            </a>
        <?php
    } ?>
    </div>
	<?php
}
     ?>






