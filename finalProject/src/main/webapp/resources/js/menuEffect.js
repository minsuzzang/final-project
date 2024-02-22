$(function () {

    var on_off = false;

    $("#menu_btn").click(function (e) { // 메뉴 열고 닫기

        on_off = !on_off; //초기값 true인 상태

        e.preventDefault();
        $("#menu_wrap").css({ 'display': 'block' });

        if (on_off) { //on_off가 true라면
            $("#menu_wrap").stop().animate({ 'top': 0 }, 1000, "easeOutExpo");
            $("#menu_btn span").addClass('selected');

        } else {//on_off가 false라면
            $("#menu_wrap").stop().animate({ 'top': -110 + '%' }, 1000, "easeOutExpo");
            $("#menu_btn span").removeClass('selected');
        }
    });


    $("#icon_list").children().last().focusout(function () {
        $("#menu_wrap").stop().animate({ 'top': -110 + '%' }, 1000, "easeOutExpo");
        $("#menu_btn span").removeClass('selected');
    });

});

