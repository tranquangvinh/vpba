<?php 
	get_header();
	$currentTerm = get_queried_object();
	$childrenTerm = get_term_children($currentTerm->term_id, 'stories'); 
?>
<div class="d-flex pt-3 pb-5">
	<div class="col-md-7">
		<div id="box_center_holder_2">
			<?php if(!empty($childrenTerm)){ ?>
                <h4 class="parent">
                    <?php echo $currentTerm->name?></a>
                </h4>
        <?php	foreach($childrenTerm as $term){
                    $objTerm = get_term($term, 'stories');
				?>
				<div id="category_holder">
                    <div class="box_body">
                        <div class="short">
                            <div class="short_holder">
                                <h2>
                                    <a href="<?php echo get_term_link( $objTerm->term_id, 'stories' ); ?>" title="Nhiễu Điều Phủ Lấy Giá Gương">
                                        <?php echo $objTerm->name?>
                                    </a>
                                </h2>
                            </div>
                        </div>
                    </div>
				</div>
			<?php }
            }
            else { ?>
                <?php get_template_part('template-parts/archive/stories', 'story',['term_id' => $currentTerm->term_id,'term_name' => $currentTerm->name]); ?>
        <?php }
            ?>				
		</div>
	</div>
	<div class="col-md-5">
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

<?php get_footer() ?>

