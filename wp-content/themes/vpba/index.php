<?php get_header(); ?>
<?php get_template_part('template-parts/header/breadcrumb', 'header', ['title' => 'Trang chủ']); ?> 

<div class="container">
<div class="home-page row mt-2">
  <div class="col-md-7 col-sm-12 post-home mb-4">
    <div class="d-flex">
      <?php do_action('box_cat_header'); ?>
      <?php do_action('box_news_header'); ?>
    </div>
    <?php do_action('homepage_block_category'); ?>
  </div>
  <div class="col-md-5 col-sm-12">
      <!-- sidebar -->
      <?php get_sidebar(); ?>
  </div>

<?php get_footer(); ?>