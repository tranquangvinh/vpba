<?php
function render_link_fanpage_info($exchange_url){ ?>
    <div class="link_fanpage_info">
        <iframe class="fanpage" src="<?php echo "https://www.facebook.com/plugins/page.php?href=https%3A%2F%2F". $exchange_url ."&tabs=timeline&width=370&height=300&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId"; ?>"
            width="370" height="300" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" 
            allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share">
        </iframe>
    </div>
<?php }