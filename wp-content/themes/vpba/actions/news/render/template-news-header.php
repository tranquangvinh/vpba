<?php 
function template_news_header($query){
	if ( $query->have_posts() ) { ?>		
        <div class="right col-md-3 pl-2 pr-2">
            <div class="box_title_holder">
                <div class="box_title">
                    <h4>
                        Bai moi
                        <span>Thu 6 ngay 13</span>
                    </h4>
                </div>
            </div>
            <?php 
            
            if ( $query->have_posts() ){ 
            ?>
            <div class="box_body">
                <div class="box_content">
                    <?php 
                        $index = 0;
                        while ( $query->have_posts() ) { 
                            $query->the_post(); ?>
                        <div class="box_item">
                            <a href="<?php echo get_the_permalink(); ?>">
                                <img src="http://www.daophatngaynay.com/vn/themes/ngodung/img/pagination_last.gif" alt=" Xem website ">
                                <b><?php echo get_the_title(); ?></b>
                            </a>
                        </div>
                        <?php 
                            $index++;
                        } ?>
                </div>
            </div>
            <?php }	?>			
        </div>
        <?php wp_reset_postdata(); ?>	
        <div class="clearfix"></div>
<?php }
}
								
			
			 
