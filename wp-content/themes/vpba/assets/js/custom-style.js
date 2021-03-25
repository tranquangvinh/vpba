$ = jQuery;

dayjs.locale('vi');

$(document).ready(function() {
    setInterval( function() {
       $('#current-time').html(dayjs().format('ddd [Ngày] D/MM/YYYY, h:mm:ss A'));
    },1000);

    // overwrite content of post 
    $('.box-post').hover(
        function() {
            var img_url = '', title = '', excerpt = '', like_post = '';

            var child_node_img = $(this).find('img');
            var child_node_title = $(this).find('.title');
            var child_node_excerpt = $(this).find('.excerpt');

            img_url = $(child_node_img) ? $(child_node_img).attr('src') : '';
            title = $(child_node_title) ? $(child_node_title).html() : '';
            excerpt = $(child_node_excerpt) ? $(child_node_excerpt).html() : '';
            like_post = $(this).attr('href');

            $('#link-post').attr('href', like_post);
            $('#img-post').attr('src', img_url);
            $('#title-post').html(title);
            $('#des-post').html(excerpt);

            // remove all class active
            $('.box-post').removeClass('active');
            $(this).addClass('active');
        }, function() {
           // out hover
        }
    )
});