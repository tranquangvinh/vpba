<?php get_header(); ?>
<?php get_template_part('template-parts/header/breadcrumb', 'header', ['title' => 'Trang chủ']); ?> 

<div class="container">
  <div class="home-page row mt-2">
    <div class="col-md-7 col-sm-12 post-home mb-4">
      <div class="d-flex mb-3">
        <?php do_action('box_cat_header'); ?>
        <?php do_action('box_news_header'); ?>
      </div>
      <?php do_action('homepage_block_category'); ?>
    </div>
    <div class="col-md-5 col-sm-12">
        <!-- sidebar -->
        <?php get_sidebar(); ?>
        <?php get_template_part(
          'template-parts/fanpage/index', 
          'fanpage', 
          [
            'link_fanpage' => get_theme_mod('link_fanpage_info'),
            'width' => 370,
            'height' => 500
          ]
          ); ?>
    </div>
  </div>
</div>

<?php get_footer(); ?>