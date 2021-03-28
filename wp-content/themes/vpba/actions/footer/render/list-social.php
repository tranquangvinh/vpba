<?php
function render_list_social($socials){
    if(is_array($socials) && count($socials) > 0) : ?>
        <div class="list-social">
            <?php foreach ($socials as $social) :
                $link_external= "";
                if($social->link){
                    $link = json_decode($social->link);
                    $link_external = $link->external;
                }
                $type = strtolower($social->type);
                $icon_class = "";
                switch ($type){
                    case 'facebook':
                        $icon_class = "fa fa-facebook";
                        break;
                    case 'twitter':
                        $icon_class = "fa fa-twitter";
                        break;
                    case 'google plus':
                        $icon_class = "fa fa-google-plus";
                        break;
                    case 'instagram':
                        $icon_class = "fa fa-instagram";
                        break;
                    default:
                        break;
                }
            ?>
            <div>
                <a class="facebook" href="<?php echo $link_external; ?>" target="_blank">
                    <i class="<?php echo $icon_class; ?>"></i>
                </a>
            </div>

<?php
            endforeach; ?>
        </div>
<?php
    endif;
}