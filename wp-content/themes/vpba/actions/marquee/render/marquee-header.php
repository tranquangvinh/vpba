<?php 

function render_marquee_header($query){
	 if ($query->have_posts() ) { ?>
        <marquee class="marquee-list" direction="left" onmouseout="this.start()" onmouseover="this.stop()" scrollamount="2">
            <?php
            while ( $query->have_posts() ) {
                $query->the_post(); ?>
                <div class="item-marquee">
                    <a href="<?php echo get_the_permalink(); ?>">
                        <?php echo get_the_title(); ?>
                    </a>
                </div>
            <?php } ?>
        </marquee>
    <?php }
    wp_reset_postdata();
}