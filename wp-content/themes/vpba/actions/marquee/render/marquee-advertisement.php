<?php
function render_marquee_sidebar_advertisement($marquees){
    if (is_array($marquees) && count($marquees) > 0) { ?>
        <marquee class="marquee-sidebar-advertisement" direction="down" scrollamount="3">
            <?php
            foreach( $marquees as $marquee) :
                    $link = "";
                    if($marquee->link){
                        $link = json_decode($marquee->link);
                        $link = $link->external;
                    }
                ?>
                <div class="item-marquee">
                    <a href="<?php echo $link; ?>">
                        <img src="<?php echo $marquee->image; ?>" alt="">
                    </a>
                </div>
            <?php endforeach; ?>
        </marquee>
    <?php }
    wp_reset_postdata();
}