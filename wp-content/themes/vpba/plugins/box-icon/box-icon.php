<?php

if (class_exists('WP_Customize_Control')) {

    class CDH_Box_Icon_control extends WP_Customize_Control
    {

        public $type = 'box_icon';
        public $fields = [];

        public function __construct($manager, $id, $args = array())
        {
            parent::__construct($manager, $id, $args);

            if (isset($args['fields']))
                $this->fields = $args['fields'];
        }

        public function enqueue()
        {
            wp_enqueue_script( 'skyrocket-select2-js', get_stylesheet_directory_uri() . '/assets/js/select2.full.min.js', array( 'jquery' ), '4.0.13', true );
            wp_enqueue_style( 'skyrocket-select2-css', get_stylesheet_directory_uri() . '/assets/css/select2.min.css', array(), '4.0.13', 'all' );

            wp_enqueue_script('CDH_upload_control',
                get_stylesheet_directory_uri() . "/assets/js/cdh-customize-upload.js",
                array('jquery'), '1.0', true);

            wp_enqueue_script(__CLASS__,
                get_stylesheet_directory_uri() . "/custom-control/box-icon/box-icon.js",
                array('jquery', 'skyrocket-select2-js'), '1.0', true);

            wp_enqueue_style(__CLASS__,
                get_stylesheet_directory_uri() . "/custom-control/box-icon/box-icon.css",
                array(), '1.0', 'all');
        }

        private function templateItem($data)
        {

            ?>
            <div class='item itemRepeate'>
            <div class="header-name">
                <button class="button-delete-hero-banner button js-delete-repeate-item">
                    <?php _e("Delete", "cdh") ?></button>
                <?php _e("Item", "futurity") ?>
            </div>
            <?php
            foreach ($this->fields as $field) {
                switch ($field[1]) {
                    case 'image';
                        $this->templateItemImage($field, $data);
                        break;
                    case 'text';
                        $this->templateItemText($field, $data);
                        break;;
                    case 'checkbox';
                        $this->templateItemCheckbox($field, $data);
                        break;
                    case 'textarea';
                        $this->templateItemTextarea($field, $data);
                        break;
                    case 'link';
                        $this->templateItemLink($field, $data);
                        break;
                }
            }

            echo "</div>";

        }

        /**
         * Render the control in the customizer
         */
        public function render_content()
        {
            $value = $this->value();

            if (!empty($value))
                $value = json_decode($value, true);

            ?>
            <div class="cdh-repeate">
                <input type="hidden"
                    <?php $this->link(); ?>
                       id="<?php echo esc_attr($this->id); ?>"
                       class="data-save"
                       name="<?php echo esc_attr($this->id); ?>">

                <div class="items">
                    <?php
                    if (is_array($value) && count($value) > 0) {
                        foreach ($value as $item) {
                            $this->templateItem($item);
                        }
                    }
                    ?>
                </div>

                <p>
                    <button type="button" class="js-repeat-add-row button button-secondary">
                        <?php _e("Add Item", "cdh"); ?>
                    </button>
                </p>

                <div class="item-clone-template" style="display: none;">
                    <?php $this->templateItem([]) ?>
                </div>
            </div>
            <?php
        }

        private function templateItemText($field, $data)
        {
            $label = isset($field[2]) ? $field[2] : '';
            $uniKey = isset($field[0]) ? $field[0] : uniqid();
            $value = @$data[$uniKey];
            ?>
            <div class="repeateLine">
                <label for=""><?php echo $label ?></label>
                <input data-key="<?php echo $uniKey ?>" type="text" class="widefat input-value"
                       value="<?php echo $value ?>">
            </div>
            <?php
        }

        private function templateItemTextarea($field, $data)
        {
            $label = isset($field[2]) ? $field[2] : '';
            $uniKey = isset($field[0]) ? $field[0] : uniqid();
            $value = @$data[$uniKey];
            ?>
            <div class="repeateLine">
                <label for=""><?php echo $label ?></label>
                <textarea
                        data-key="<?php echo $uniKey ?>"
                        class="widefat input-value"><?php echo $value ?></textarea>
            </div>
            <?php
        }

        private function templateItemImage($field, $data)
        {
            $uniKey = isset($field[0]) ? $field[0] : uniqid();
            $image = @$data[$uniKey];

            if (empty($image)) {
                $show = 'none';
                $none = 'block';
            } else {
                $show = 'block';
                $none = 'none';
            }
            ?>

            <div class="repeateLine">
                <div class="js-cdhUploadWrap">
                    <div class="attachment-media-view">
                        <button type="button"
                                class="js-click-to-upload js-show-on-null upload-button button-add-media"
                                style="display:<?php echo $none ?>;"
                        >
                            <?php _e("Image Banner", "cdh") ?>
                        </button>

                        <div style="text-align: center;">
                            <img src="<?php echo $image ?>" alt="" class="previewUpload"
                                 style="display: <?php echo $show ?>">
                        </div>
                        <div class="actions" style="display: <?php echo $show ?>">
                            <button type="button"
                                    class="button js-click-remove-image remove-button">
                                <?php _e("Remove", "cdh") ?></button>
                            <button type="button"
                                    class="button js-click-to-upload js-show-on-has upload-button control-focus">
                                <?php _e("Change Image", "cdh") ?></button>
                        </div>
                    </div>

                    <input type="hidden"
                           data-key="<?php echo $uniKey ?>"
                           class="input-value" value="<?php echo $image ?>">
                </div>
            </div>
            <?php
        }

        private function templateItemCheckbox($field, $data)
        {
            $label = isset($field[2]) ? $field[2] : '';
            $uniKey = isset($field[0]) ? $field[0] : uniqid();
            $value = @$data[$uniKey];
            $value = $value == 1 ? true : false;
            ?>
            <div class="repeateLine">
                <label for="">
                    <input
                            class="input-value"
                            type="checkbox" data-key="<?php echo $uniKey ?>"
                        <?php checked(true, $value) ?>>
                    <span class="label"><?php _e($label) ?></span>
                </label>
            </div>
            <?php
        }

        private function templateItemLink($field, $data)
        {
            $label = isset($field[2]) ? $field[2] : __("Link", 'nova-rklv');
            $uniKey = isset($field[0]) ? $field[0] : uniqid();
            $value = @$data[$uniKey];
            if (!empty($value) && is_string($value) ){
                $value = json_decode($value, true);
            }

            $btnText = __("Open Link Editor", 'nova-rklv');
            $data = [
                "external" => "",
                "object_name" => "",
                "object_id" => "",
                "target" => "",
                "title" => "",
                "text" => "",
            ];
            foreach ($data as $k => &$datum) {
                $datum = isset($value[$k]) ? $value[$k] : '';
            }

            $valueSelected = '';
            if (!empty($data['external'])) {
                $valueSelected = "LINK: {$data['external']}";
            } else if (!empty($data['object_id'])){
                $valueSelected = "Object: {$data['object_id']}: {$data['object_name']}";
            }

            if ($data['target'] == 1) {
                $valueSelected .= "<br>Target: _blank";
            }
            ?>
                <div class="repeateLine js-wrap-link-editor">
                    <!-- External, Post, Page -->
                    <!-- null, _Blank -->
                    <input
                    type="hidden"
                    data-key="<?php echo $uniKey ?>"
                    class="input-value js-main-value" />

                    <label for="">
                        <?php echo $label ?>
                    </label>

                    <div>
                        <button
                        type="button"
                        class="button js-link-input"
                        data-external="<?php echo  $data['external'] ?>"
                        data-target="<?php echo  (int)$data['target'] ?>"
                        data-title="<?php echo  $data['title'] ?>"
                        data-text="<?php echo  $data['text'] ?>"
                        data-object-id="<?php echo  (int)$data['object_id'] ?>"
                        data-object-name="<?php echo  $data['object_name'] ?>"
                        >
                            <?php echo $btnText ?>
                        </button>
                    </div>

                    <div class="metaLink">
                        <?php echo $valueSelected ?>
                    </div>
                </div>
            <?php
        }
    }
}