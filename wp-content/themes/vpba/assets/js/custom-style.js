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
});