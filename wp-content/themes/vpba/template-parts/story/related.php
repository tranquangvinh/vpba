<?php 
if(isset( $args['term_id'])) : 
	$result = get_terms(array(
        'taxonomy' => 'stories',
        'hide_empty' => false,
    ) );

    if(isset($result) && count($result) > 0){
        $index = 0;
        foreach($result as $item){
            if($item->term_id == $args['term_id']){
                array_splice($result, $index);
            }
            $index++;
        }
    }

    if(isset($result) && count($result) > 0){ ?>
        <div id="article_holder" class="folder-news another-stories">
                <div class="othernews-header">
                    <div class="othernews-title">Truyện khác :</div>
                </div>
                    <div class="othernews">
                        <div class="box_content">
                            <ul>
                            <?php foreach($result as $item): ?>
                                    <li>
                                        <a class="link-othernews" href="<?php echo get_term_link($item->term_id, 'stories'); ?>" >
                                        <?php echo $item->name; ?>
                                        </a>
                                    </li>	
                            <?php endforeach; ?>			
                            </ul>
                        </div>
                </div>
            </div>    
<?php    }
endif; ?>

