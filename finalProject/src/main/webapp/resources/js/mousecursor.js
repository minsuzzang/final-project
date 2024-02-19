$(function () {

    $(document).mousemove(function (e) {

        var mouseX = e.pageX;
        var mouseY = e.pageY;

        $(".cursor").css({
            left:mouseX+"px",
            top:mouseY+"px"
        });

    });

});


