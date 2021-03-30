$ = jQuery;

dayjs.locale('vi');

function active_video(){
    var idCurrentVideo = $(".current-video > iframe") ? $(".current-video > iframe").attr('class') : '';

    var listVideoSuggetion = $(".suggetion-video li");
    var idVideoSuggetion = '';
    if(listVideoSuggetion.length > 0){
        for (i = 0; i < listVideoSuggetion.length; i++) {
            idVideoSuggetion = listVideoSuggetion[i] ? listVideoSuggetion[i].id : '';
            if(idVideoSuggetion === idCurrentVideo) {
                $("#" + idVideoSuggetion).addClass('active');
            } else{
                $("#" + idVideoSuggetion).removeClass('active');
            }
        }
    }
}

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

    // slider
    $('.owl-carousel-sidebar').owlCarousel({
        loop:true,
        margin:0,
        nav:false,
        autoplay: true,
        items: 1
    });

    // current video
    active_video()
    //
    //change video
    $('.item-video-suggetion').on('click', function(){
        var iframe = $(this).find('iframe');
        var iframe_url = iframe ? iframe.attr('src') : "";
        var id = $(this).attr('id');

        if(iframe_url !== "" && id){
            $('.current-video iframe').attr('src', iframe_url + '?rel=0&amp;autoplay=1');
            $('.current-video iframe').attr('class', '');
            $('.current-video iframe').addClass(id);
            active_video();
        }
    })

    //choose link to website
    $('#list-menu-link-website').on('change', function(e){
        e.preventDefault();
        $link = e.target.value;
        if($link){
            window.open($link, '_blank').focus();
        }
    })

    // //toggleclass form search
    $('.icon-search').on('click', function(){
        $('#box-search').toggleClass('active');
    })

    //
    var time_create_post = $('#time-create-date-hide').html();
   $('#time-create-date').html(dayjs(time_create_post).format('ddd [Ngày] D/MM/YYYY, h:mm:ss A'));
});