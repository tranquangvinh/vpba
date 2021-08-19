<?php
if (class_exists('WP_Customize_Control')) {
    class Nt_Customize_Control_Multiple_Select extends WP_Customize_Control {

        /**
         * The type of customize control being rendered.
         */
        public $type = 'multiple-select';
        
        public function enqueue()
        {
            wp_enqueue_style(__CLASS__,
                get_stylesheet_directory_uri() . "/plugins/multi-select/multi-select.css",
                array(), '1.0', 'all');
        }
        
        /**
         * Displays the multiple select on the customize screen.
         */
        public function render_content() {
        
            if ( empty( $this->choices ) )
                return;
            ?>
            <label>
                <span class="customize-control-title"><?php echo esc_html( $this->label ); ?></span>
                <select class="customize-control-multi-select" <?php $this->link(); ?> multiple="multiple" style="height: 100%;">
                    <?php
                        foreach ( $this->choices as $value => $label ) {
                            $selected = ( in_array( $value, $this->value() ) ) ? selected( 1, 1, false ) : '';
                            echo '<option value="' . esc_attr( $value ) . '"' . $selected . '>' . $label . '</option>';
                        }
                    ?>
                </select>
            </label>
    <?php }
        }
}