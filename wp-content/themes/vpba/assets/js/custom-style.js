$ = jQuery;

$(document).ready(function() {
    setInterval( function() {
        var month_Names = [ "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" ];
        var day_Names= ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]
        var new_Date = new Date();
        new_Date.setDate(new_Date.getDate());
        $('#Date').html(day_Names[new_Date.getDay()] + " " + new_Date.getDate() + ' ' + month_Names[new_Date.getMonth()] + ' ' + new_Date.getFullYear());

        var seconds = new Date().getSeconds();
        $("#sec").html(( seconds < 10 ? "0" : "" ) + seconds);
        var minutes = new Date().getMinutes();
        $("#min").html(( minutes < 10 ? "0" : "" ) + minutes + ":");
        var hours = new Date().getHours();
        $("#hours").html(( hours < 10 ? "0" : "" ) + hours+ ":");
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