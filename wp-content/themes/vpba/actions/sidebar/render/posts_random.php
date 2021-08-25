<?php
function render_posts_random($query){
    if ( $query->have_posts() ) { ?>
        <div id="box_most_popular" class="box">
            <div class="box_title_holder"><div class="box_title"><h4>Bài viết ngẫu nhiên</h4></div></div>
            <div class="box_body">
                <div class="box_content">
                    <ul>
                        <?php 
                        if ( $query->have_posts()){ 
                        ?>
                            <?php 
                                $index = 0;
                                while ( $query->have_posts() ) { 
                                    $query->the_post(); ?>
                                <li>
                                    <a href="<?php echo get_the_permalink(); ?>">
                                        <b><?php echo get_the_title(); ?></b>
                                    </a>
                                </li>
                            <?php 
                                $index++;
                            } ?>
                        <?php }	?>
                    </ul>
                </div>
            </div>
        </div>
        <?php wp_reset_postdata(); ?>
    <?php } ?>
<?php } ?>