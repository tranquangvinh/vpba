<?php get_header(); ?>
<?php get_template_part('template-parts/header/breadcrumb', 'header', ['title' => "Tin Tức"]); ?>

    <div class="container">
        <div class="row mt-4">
            <div class="col-md-12 col-sm-12 content-left">
                <?php
                    while ( have_posts() ) :
                        the_post(); ?>
                    <div class="text-center" style="font-size: 20px; font-weight: 600;">
                        <?php echo get_the_title(); ?>
                    </div>
                    <div class="text-justify">
                        <?php echo get_the_content();?>
                    </div>
                <?php
                    endwhile;
                ?>
            </div>
        </div>
    </div>

<?php get_footer(); ?>