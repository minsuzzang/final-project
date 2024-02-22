$(window).load(function () {
    var $visualList // ul
    var $visualLi // li 이미지
    var imgNum // 이미지 개수
    var textList // 텍스트 ul
    var textLi // 텍스트 영역
    var timer //타이머
    var button //이전 이후 버튼
    var prevBtn //이전 버튼
    var nextBtn //이후 버튼
    var currentPageNum = 0 //페이저 번호 초기값 0; (맨 처음 페이저 선택)
    var currentIndex = 0; //슬라이드 이미지 초기값 0; (맨 처음 사진 보임)
    var visualPagerLi // 페이저 li
    var visualPager // 페이저 a태그


    $('.loader_bg').delay('1500').fadeOut();// 로딩화면

    init() //변수선언
    onPlay()///자동 슬라이드
    InEvent() //이벤트 호출


    function init() { //초기 함수 설정
        $visualList = $("#visual_list");
        $visualLi = $visualList.children();
        imgNum = $visualLi.size();
        textList = $("#text_list");
        textLi = textList.children('li');
        textLiA = textLi.find('a');
        visualPager = $("#visual_pager li a");
        button = $("#visual_btn a");
        prevBtn = $("#prev")
        nextBtn = $("#next")
        moreBtn = $(".more_btn a")
    }

    function InEvent() { //이벤트 함수
        visualPager.on('mouseenter focus', onStop);
        visualPager.on('mouseleave blur', onPlay);
        visualPager.on('click', pager);
        prevBtn.on('click', prev);
        nextBtn.on('click', next);
        button.on('mouseenter focus', onStop);
        button.on('mouseleave blur', onPlay);
        moreBtn.on('mouseenter focus', onStop);
        moreBtn.on('mouseleave blur', onPlay);
    }

    //시작 0번째 이미지 초기화
    $visualLi.eq(0).css({ 'opacity': 1 });
    textLi.eq(0).css({ 'opacity': 1, 'left': 0 });

    function goToSlide(index) { //슬라이드 이동 함수

        //초기화 
        $visualLi.css({ 'opacity': 0 });
        textLi.css({ 'opacity': 0 });
        if (index < 2) {
            textLi.eq(index).css({ 'left': '30%' });
        } else {
            textLi.eq(index).css({ 'right': '30%' });
        }

        //애니메이션 효과
        $visualLi.stop();
        $visualLi.eq(index).stop().animate({ 'opacity': 1 }, 5000, "easeOutCubic");

        if (index < 2) { //1~2번째 사진 text는 왼쪽에 위치
            textLi.stop();
            textLi.eq(index).stop().animate({ 'opacity': 1, 'left': 0 }, 3000, "easeOutCubic");

        } else {//3~4번째 사진 text는 왼쪽에 위치
            textLi.stop();
            textLi.eq(index).stop().animate({ 'opacity': 1, 'right': 0 }, 3000, "easeOutCubic");
        }
        currentIndex = index; //currentIndex를 index값(현재 슬라이드 순서)으로 초기화

        visualPager.removeClass('active');
        visualPager.parent('li').eq(currentIndex).children().addClass("active"); //현재 사진 순서에 맞는 pager 활성화 효과
    }


    function pager(e) { //페이저 이동 함수
        e.preventDefault();
        var idx = $(this).parent('li').index();
        goToSlide(idx);
    }


    function prev() { //이전 버튼으로 이동하는 함수
        if (currentIndex == 0) { // 0번째 이미지가 보이는 상태라면,
            currentIndex = imgNum - 1; // 다음 currentIndex를 마지막 사진으로 초기화
            goToSlide(currentIndex); // 마지막 사진으로 슬라이드됨

        } else { //0번째 사진이 아닐 경우
            goToSlide(currentIndex - 1); //계속해서 1씩 감소
        }
    }


    function next() { //이후 버튼으로 이동하는 함수
        if (currentIndex == imgNum - 1) { // 마지막 이미지가 보이는 상태라면,
            currentIndex = 0; // 다음 currentIndex를 0으로 초기화
            goToSlide(currentIndex); //0번째 사진으로 슬라이드됨
        } else { //마지막 이미지가 보이는 상태가 아니라면
            goToSlide(currentIndex + 1); //계속해서 1씩 증가
        }
    }


    function onPlay() {
        timer = setInterval(onVisualNext, 7000)
    }

    function onStop() {
        clearInterval(timer)
    }


    function onVisualNext() { //다음 페이지로 넘어가는 함수
        currentIndex++;
        if (currentIndex >= imgNum) {
            currentIndex = 0
        }

        goToSlide(currentIndex)
    }

});

var indices = {};   // 각 슬라이드 쇼의 인덱스를 저장하는 객체

window.onload = function () {
    slideShow("slide1");
    slideShow("slide2");
    slideShow("slide3");
    slideShow("slide4");
    slideShow("slide5");
}

function slideShow(slideClassName) {
    if (!indices.hasOwnProperty(slideClassName)) { // 만약 해당 슬라이드 쇼의 인덱스가 없다면
        indices[slideClassName] = 0; // 초기 인덱스를 설정
    }

    var i;
    var x = document.getElementsByClassName(slideClassName);
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }

    indices[slideClassName]++; // 해당 슬라이드 쇼의 인덱스를 증가
    if (indices[slideClassName] > x.length) {
        indices[slideClassName] = 1;
    }
    x[indices[slideClassName] - 1].style.display = "block";
    setTimeout(function () { slideShow(slideClassName); }, 4000);
}
// 카드번호 js
// 16자리 카드번호
function formatCardNumber(input) {
    var cardNumber = input.value.replace(/\D/g, "").replace(/(\d{4})/g, '$1-');
    cardNumber = cardNumber.replace(/-$/, '');
    input.value = cardNumber;
}
// 4자리 유효기간
function formatExpiryDate(input) {
    var expiryDate = input.value.replace(/\D/g, "").replace(/(\d{2})/, '$1/');
    expiryDate = expiryDate.replace(/\/$/, '');
    input.value = expiryDate;
}
// top 버튼
// 스크롤 이벤트 리스너
window.addEventListener("scroll", () => {
    // 스크롤 위치가 100px 이상일 때 위로 가기 버튼을 보이게 함
    if (
        document.body.scrollTop > 100 ||
        document.documentElement.scrollTop > 20
    ) {
        document.getElementById("btn-back-to-top").style.display = "block";
    } else {
        document.getElementById("btn-back-to-top").style.display = "none";
    }
});

// 클릭 시 페이지 맨 위로 스크롤 (애니메이션 효과 추가)
function backToTop() {
    const position =
        document.documentElement.scrollTop || document.body.scrollTop;
    if (position) {
        window.requestAnimationFrame(() => {
            window.scrollTo(0, position - position / 10);
            backToTop();
        });
    }
}

