<?php

function render_pagination(){ ?>
	<div class="pagination">
	    <?php 
	    	global $wp_query;
	        echo paginate_links( array(
	            'base'         => str_replace( 999999999, '%#%', esc_url( get_pagenum_link( 999999999 ) ) ),
	            'total'        => $wp_query->max_num_pages,
	            'current'      => max( 1, get_query_var( 'paged' ) ),
	            'format'       => '?paged=%#%',
	            'show_all'     => false,
	            'type'         => 'plain',
	            'end_size'     => 2,
	            'mid_size'     => 1,
	            'prev_next'    => true,
	            'prev_text'    => sprintf( '<i></i> %1$s', __( '<div></div>', 'text-domain' ) ),
	            'next_text'    => sprintf( '%1$s <i></i>', __( '<div></div>', 'text-domain' ) ),
	            'add_args'     => true,
	            'add_fragment' => '',
	        ) );
	    ?>
	</div>
<?php }