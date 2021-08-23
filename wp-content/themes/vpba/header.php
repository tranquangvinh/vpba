  
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@700&display=swap" rel="stylesheet">
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
  <div id="box-body" class="container">
    <div class="header">
        <?php if(wp_is_mobile()) :
                echo get_template_part('template-parts/header/header-mobile', 'header-mobile');
            else:
                echo get_template_part('template-parts/header/header-pc', 'header-mobile');
        endif;
        ?>
    </div>
