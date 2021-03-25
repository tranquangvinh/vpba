jQuery(document).ready(function ($) {
    function open_custom_media_window(event) {
        if (this.window === undefined) {
            this.window = wp.media({
                title: 'Insert Image',
                library: {type: 'image'},
                multiple: false,
                button: {text: 'Insert Image'}
            });

            var self = this;
            this.window.on('select', function() {
                var response = self.window.state().get('selection').first().toJSON();
                var $wrap = $(event.target).closest('.js-cdhUploadWrap');
                $wrap.find('.previewUpload').attr('src', response.url);
                $wrap.find('.input-value').val(response.url).trigger('change');

                $wrap.find('.js-show-on-null').hide();
                $wrap.find('.actions').show();
                $wrap.find('.previewUpload').show();
            });
        }

        this.window.open();
        return false;
    }

    function delete_image(event) {
        var $wrap = $(event.target).closest('.js-cdhUploadWrap');

        $wrap.find('.previewUpload').attr('src', "");
        $wrap.find('.input-value').val("").trigger('change');

        $wrap.find('.js-show-on-null').show();
        $wrap.find('.actions').hide();
        $wrap.find('.previewUpload').hide();
    }

    $(document).on('click', '.js-click-to-upload', open_custom_media_window);
    $(document).on('click', '.js-click-remove-image ', delete_image);

});