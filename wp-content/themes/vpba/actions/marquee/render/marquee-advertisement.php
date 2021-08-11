<?php
function render_marquee_sidebar_advertisement($marquees, $direction){
    if (is_array($marquees) && count($marquees) > 0) { ?>
        <div class="container-marquee">
            <div class="slick marquee-sidebar-advertisement <?php echo $direction; ?>" >
                <?php
                foreach( $marquees as $marquee) :
                    $link = "";
                    if($marquee->link){
                        $link = json_decode($marquee->link);
                        $link = $link->external;
                    }
                    ?>
                    <div class="item-marquee-<?php echo $direction; ?>">
                        <a href="<?php echo $link; ?>">
                            <img src="<?php echo $marquee->image; ?>" alt="">
                        </a>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    <?php }
    wp_reset_postdata();
}