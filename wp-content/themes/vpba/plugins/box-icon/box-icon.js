jQuery(document).ready(function ($) {

    $(document).on('click', '.js-repeat-add-row', function () {
        $wrap = $(this).closest('.cdh-repeate');
        $wrap.find('.items').append($wrap.find(".item-clone-template").html());
    })

        .on('click', '.js-delete-repeate-item', function (event) {
            $wrap = $(event.target).closest('.items')
            $wrapSetting = $(event.target).closest('.cdh-repeate');

            $(this).closest('.item').remove();

            rocketCombineRepeateData($wrap, $wrapSetting)

        })
        .on('change', '.cdh-repeate .itemRepeate input', function (event) {
            $wrap = $(event.target).closest('.items')
            $wrapSetting = $(event.target).closest('.cdh-repeate');
            rocketCombineRepeateData($wrap, $wrapSetting)
        })
        .on('change', '.cdh-repeate .itemRepeate textarea', function () {
            $wrap = $(event.target).closest('.items')
            $wrapSetting = $(event.target).closest('.cdh-repeate');
            rocketCombineRepeateData($wrap, $wrapSetting)
        });

    function rocketCombineRepeateData($wrap, $wrapSetting) {
        var outputData = [];
        $wrap.find('.itemRepeate').map(function (key, parentItem) {
            var __obj_context = {};
            $(parentItem).find('.input-value').each(function (k, el) {

                if ($(el).attr('type') === 'checkbox') {
                    if ($(el).prop('checked') == true) {
                        __obj_context[$(el).data('key')] = true;
                    } else {
                        __obj_context[$(el).data('key')] = false;
                    }

                } else {
                    __obj_context[$(el).data('key')] = $(el).val()
                }
            });

            outputData.push(__obj_context);
        });

        $wrapSetting.find('.data-save').val(JSON.stringify(outputData)).trigger('change');
    }

    $(document).on('click', '.js-save-link-editor', function () {
        $contentWrap = $(this).closest(".content");
        var vlFinal = {}
        $contentWrap.find('.js-value').each(function (k, el) {
            if ($(el).attr('type') == 'checkbox') {
                if ($(el).prop('checked')) {
                    vlFinal[$(el).data('name')] = 1;
                } else {
                    vlFinal[$(el).data('name')] = 0;
                }
            } else {
                vlFinal[$(el).data('name')] = $(el).val();
            }
        });

        $elTrigger = $(document).find('.js-link-editor-open');
        $elTrigger.closest('.js-wrap-link-editor')
            .find('.js-main-value')
            .val(JSON.stringify(vlFinal))
            .trigger('change');
        $elTrigger.data('link_status', 'close');
        $(this).closest(".popupLink").remove();
        $elTrigger.removeClass("js-link-editor-open");

        $elTrigger.data('target', vlFinal.target)
        $elTrigger.data('title', vlFinal.title)
        $elTrigger.data('text', vlFinal.text)
        $elTrigger.data('external', vlFinal.external)
        $elTrigger.data('object-id', vlFinal.object_id)
        $elTrigger.data('object-name', vlFinal.object_name);

        var str = '';
        if (vlFinal.external != '') {
            str = 'LINK: ' + vlFinal.external
        } else if (vlFinal.object_id > 0) {
            str = `Object: ${vlFinal.object_id}: ${vlFinal.object_name}`;
        }

        if (vlFinal.target == 1) {
            str += "<br>Target='_blank'";
        }
        $elTrigger.closest('.js-wrap-link-editor').find('.metaLink').html(str);
    });

    $(document).keyup(function (e) {
        if (e.key === "Escape") { // escape key maps to keycode `27`
            var $elTrigger = $(document).find('.js-link-editor-open');
            $elTrigger.removeClass("js-link-editor-open");
            $elTrigger.data('link_status', 'close');
            $(document).find(".popupLink").remove();
        }
    });

    $(document).on('click', '.js-link-input', function () {
        if ($(this).data('link_status') != 'open') {
            $(this).addClass('js-link-editor-open');
            $(this).data('link_status', 'open');

            var dataEl = $(this).data();
            console.log(dataEl);

            var checked = dataEl.target && dataEl.target == 1 ? 'checked' : '';

            var optF = '';
            if (dataEl.objectId) {
                optF = '<option selected value="' + dataEl.objectId + '">' + dataEl.objectName + '</option>'
            }

            var idSelect = '_' + Math.random().toString(36).substr(2, 9);
            
            $('body').append(`
            <div class="popupLink">
                <div class="overlay"></div>
                <div class="content">
                    <div class="">
                        <label for="">Enter URL, tel:, or sms:, or mailto: links</label>
                        <input data-name="external" 
                        class="widefat js-value" 
                        value="${dataEl.external}"
                        type="text" placeholder="tel:, mailto:, https://">
                    </div>
                    <div style="position: relative" class="js-wrap-select2">
                        <label for="">Select from pages and posts</label>
                        <div>
                            <select style="width: 100%"
                                id="${idSelect}"
                                data-name="object"  
                                class="rocket-select-2-ajax widefat js-value">
                                <option value="">Select post, page</option>
                                ${optF}
                            </select>
                        </div>
                        
                        <input type="hidden" 
                        value="${dataEl.objectId}"
                        data-name="object_id" class="js-object-id js-value">
                        
                        <input type="hidden"
                        value="${dataEl.objectName}" 
                        data-name="object_name" class="js-object-name js-value">
                    </div>
                   
                    <div>
                        <label for="">Button Text</label>
                        <input data-name="text"
                        value="${dataEl.text}" 
                        class="widefat js-value" 
                        type="text" placeholder="Text label">
                    </div>
                    
                    <div>
                        <label for="">Link Title</label>
                        <input data-name="title" 
                        value="${dataEl.title}"
                        class="widefat js-value" type="text" placeholder="Title ">
                    </div>
                    
                     <div>
                        <label for="">
                            <input 
                            ${checked}
                            data-name="target" class=" js-value" type="checkbox"> Open link in a new tab
                        </label>
                    </div>    
                    <div>
                        <button type="button" class="button js-save-link-editor">Save change</button>
                    </div>
                </div>
            </div>`);

            $(document).find('.rocket-select-2-ajax').select2({
                dropdownCssClass: 'select-2-ajax-link',
                allowClear: true,
                placeholder: "Select an option",
                ajax: {
                    url: function (params) {
                        return ajaxurl + "?action=rocket-search-content";
                    }
                }
            }).on('select2:clear', function (e) {
                var $parentv = $(e.target).closest('.js-wrap-select2');
                $parentv.find('.js-object-id').val("")
                $parentv.find('.js-object-name').val("")
                    .trigger('change')
            }).on('select2:select', function (e) {
                var data = e.params.data;
                var $parentv = $(e.target).closest('.js-wrap-select2');
                $parentv.find('.js-object-id').val(data.id)
                $parentv.find('.js-object-name').val(data.text)
                    .trigger('change')
            });
        }
    });
});