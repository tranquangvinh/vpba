<?php get_header(); ?>

<div class="container">
	<div class="row breadscumb-row">
		<div class="col-md-2 col-sm-3 no-wrap">
			<div class="title-home">
				<a href="<?php echo get_home_url(); ?>">
					Trang chủ
				</a>

			</div>
		</div>
		<div class="col-md-6 col-sm-6 no-wrap">
            <?php
                $cat_id = get_theme_mod('option-category');
                if(isset($cat_id)){
                    $args = array(
                        'post_type' => 'post',
                        'posts_per_page' => 4,
                        'tax_query' => array(
                            array(
                                'taxonomy' => 'category',
                                'field' => 'term_id',
                                'terms' => $cat_id
                            )
                        )
                    );
                    $query = new WP_Query( $args );


                    if ( $query->have_posts() ) { ?>
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
            ?>
		</div>
		<div class="col-md-4 col-sm-3 current-time text-right">
            <div id="Date"></div>
            <div id="hours"></div>
            <div id="min"></div>
            <div id="sec"></div>
		</div>

		<!--  -->
		<div class="col-md-7 col-sm-12">
			
		</div>
		<div class="col-md-5 col-sm-12">
		</div>
	</div>
</div>


<?php get_footer(); ?>