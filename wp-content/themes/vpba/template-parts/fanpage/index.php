<?php
if(isset($args['link_fanpage'])){ ?>
    <div class="link_fanpage_info">
        <iframe class="fanpage" src="<?php echo "https://www.facebook.com/plugins/page.php?href=https%3A%2F%2F". $args['link_fanpage'] .
        "&tabs=timeline&width=".$args['width']."&height=".$args['height']."&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId"; ?>"
            width="<?php echo isset($args['width'])? $args['width'] : 300 ?>" 
            height="<?php echo isset($args['height'])? $args['height'] : 500 ?>" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" 
            allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share">
        </iframe>
    </div>
<?php }