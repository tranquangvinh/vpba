<?php

function render_video($videos){
    if(is_array($videos) && count($videos) > 0){

        $link = "";
        if($videos[0]->link){
            $link = json_decode($videos[0]->link);
            $link = $link->external;
        }

        ?>
        <div class="videos">
            <div class="current-video">
                <iframe class="<?php echo str_replace('/', '_', parse_url( $link , PHP_URL_PATH)); ?>" width="100%" height="150" frameborder="0"
                        allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen
                        src="<?php echo $link; ?>">
                </iframe>
            </div>
        </div>
        <div class="suggetion-video">
            <ul>
                <?php foreach ($videos as $video) :
                        $link_external= "";
                        $title = "";
                        if($video->link){
                            $link = json_decode($video->link);
                            $link_external = $link->external;
                            $title = $link->title;
                        }
                    ?>
                    <li class="d-flex justify-content-start item-video-suggetion"  id="<?php echo str_replace( '/', '_', parse_url( $link_external , PHP_URL_PATH)) ?>">
                        <span>
                            <iframe width="100" height="70"
                                    frameborder="0"
                                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen
                                src="<?php echo $link_external; ?>">
                            </iframe>
                        </span>
                        <span><?php echo $title; ?></span>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
    <?php }
}