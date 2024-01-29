<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>HYUNDAI CARD</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- css&font -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/media_query.css">
    <link rel="stylesheet" href="/resources/css/detail.css">
    <link rel="stylesheet" href="/resources/css/card.css">
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <!-- js -->
    <script src="/resources/lib/jquery-1.11.1.min.js"></script>
    <script src="/resources/lib/jquery.easing.1.3.min.js"></script>
    <script src="/resources/js/visual_slide.js"></script>
    <script src="/resources/js/menuEffect.js"></script>
    <script src="/resources/js/mousecursor.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>


</head>

<body>

    <header>
        <!-- 헤더 비디오 -->
        <video class="vd" src="./videos/header.mp4" muted autoplay loop preload width="100%"></video>
        <!--로고삽입-->
        <h1 id="logo">
            <a class="a2" href="/index.html"><img src="images/logo.png" alt="로고"></a>
        </h1>



        <!--메뉴 버튼-->
        <h2 id="menu_btn">
            <span id="t_stick"></span>
            <span id="m_stick"></span>
            <span id="b_stick"></span>
        </h2>

        <!--메뉴-->
        <div id="menu_wrap">
            <nav id="main_nav">
                <h2 class="hidden">메인메뉴</h2>
                <ul id="menu">
                    <li><a>기업 소개</a>
                        <ul id="sub_menu">
                            <li><a href="#">현대카드 소개</a></li>
                            <li><a href="#">기업 문화</a></li>
                            <li><a href="#">인사 철학</a></li>
                        </ul>
                    </li>

                    <li><a style="font-family: 'YouandiModernTR', sans-serif; font-weight: bold;">My Account</a>
                        <ul id="sub_menu">
                            <li><a href="#">내 정보</a></li>
                            <li><a href="#">내 카드</a></li>
                            <li><a href="#">내 등급</a></li>
                            <li><a href="#">이용내역</a></li>
                            <li><a href="#">마일리지</a></li>
                        </ul>
                    </li>

                    <li><a>카드</a>
                        <ul id="sub_menu">
                            <li><a href="#">카드 안내</a></li>
                            <li><a href="/card/cardApply.jsp">카드 신청</a></li>
                            <li><a href="#">카드 신청 조회</a></li>
                        </ul>
                    </li>

                    <li><a>혜택</a>
                        <ul id="sub_menu">
                            <li><a href="#">할인 혜택</a></li>
                            <li><a href="#">적립 혜택</a></li>
                            <li><a href="#">제휴 상품</a></li>
                        </ul>

                    </li>

                    <li><a>고객 지원</a>
                        <ul id="sub_menu">
                            <li><a href="#">공지사항</a></li>
                            <li><a href="/userService.html">고객 문의</a></li>
                            <li><a href="#" style="font-family: 'YouandiModernTR', sans-serif;">FAQ</a></li>
                            <li><a href="#">카드 도난 • 분실신고</a></li>
                        </ul>
                    </li>

                </ul>
            </nav>


            <!--SNS 아이콘 영역-->
            <div id="sns">
                <ul id="icon_list">
                    <li><a href="#"><img src="images/icon_01.png" alt="인스타그램 바로가기"></a></li>
                    <li><a href="#"><img src="images/icon_02.png" alt="페이스북 바로가기"></a></li>
                    <li><a href="#"><img src="images/icon_03.png" alt="트위터 바로가기"></a></li>
                    <li><a href="#"><img src="images/icon_04.png" alt="유투브 바로가기"></a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- main -->
    <br><br><br>
    <p class="egft1">Hyundai 카드신청</p>
    <p class="egft2">Apply for a credit card</p><br><br><br><br>
    <p class="egft1-1">Hyundai Originals</p>
    <p class="egft1-1" style="font-size: 30px; font-weight: normal;">Premium</p>
    <div class="dfjc">
        <div class="shop">
            <p class="egft3-1" style="color: black;">the Black</p>
            <figure class="slide5">
                <a href="/blackDetail.html"><img class="imggg" src="/resources/images/theBlack/theBlack1.png"></a>
            </figure>
            <figure class="slide5">
                <a href="/blackDetail.html"><img class="imggg" src="/resources/images/theBlack/theBlack2.png"></a>
            </figure>
            <p class="egft3-2" style="color: black;">단 1,000명에게</p>
            <p class="egft3-2-1" style="color: black;">선사하는</p>
            <p class="egft3-3" style="color: black;">VVIP 카드</p>
        </div>
        <div class="shop">
            <p class="egft3-1" style="color: rgb(95, 0, 95);">the Purple</p>
            <figure class="slide1">
                <a href="/purpleDetail.html"><img class="imggg" src="/resources/images/thePurple/thePurple1.png"></a>
            </figure>
            <figure class="slide1">
                <a href="/purpleDetail.html"><img class="imggg" src="/resources/images/thePurple/thePurple2.png"></a>
            </figure>
            <figure class="slide1">
                <a href="/purpleDetail.html"><img class="imggg" src="/resources/images/thePurple/thePurple3.png"></a>
            </figure>
            <p class="egft3-2" style="color: rgb(95, 0, 95);">아무나 가질 수 없는</p>
            <p class="egft3-2-1" style="color: rgb(95, 0, 95);">럭셔리 그 이상의 카드</p>
            <p class="egft3-3" style="color: rgb(95, 0, 95);">바우처 네트워크</p>
        </div>
        <div class="shop">
            <p class="egft3-1" style="color: rgb(187, 0, 0);">the Red</p>
            <figure class="slide2">
                <a href="/pinkDetail.html"><img class="imggg" src="/resources/images/theRed/theRed1.png"></a>
            </figure>
            <figure class="slide2">
                <a href="/pinkDetail.html"><img class="imggg" src="/resources/images/theRed/theRed2.png"></a>
            </figure>
            <figure class="slide2">
                <a href="/pinkDetail.html"><img class="imggg" src="/resources/images/theRed/theRed3.png"></a>
            </figure>
            <figure class="slide2">
                <a href="/pinkDetail.html"><img class="imggg" src="/resources/images/theRed/thered4.png"></a>
            </figure>
            <figure class="slide2">
                <a href="/pinkDetail.html"><img class="imggg" src="/resources/images/theRed/theRed5.png"></a>
            </figure>
            <p class="egft3-2" style="color: rgb(187, 0, 0);">핫한 라이프를 완성하는</p>
            <p class="egft3-2-1" style="color: rgb(187, 0, 0);">고성능</p>
            <p class="egft3-3" style="color: rgb(187, 0, 0);">럭셔리 카드</p>
        </div>
        <div class="shop">
            <p class="egft3-1" style="color: green;">the Green</p>
            <figure class="slide3">
                <a href="/greenDetail.html"><img class="imggg" src="/resources/images/theGreen/theGreen5.png"></a>
            </figure>
            <figure class="slide3">
                <a href="/greenDetail.html"><img class="imggg" src="/resources/images/theGreen/theGreen2.png"></a>
            </figure>
            <figure class="slide3">
                <a href="/greenDetail.html"><img class="imggg" src="/resources/images/theGreen/theGreen3.png"></a>
            </figure>
            <figure class="slide3">
                <a href="/greenDetail.html"><img class="imggg" src="/resources/images/theGreen/theGreen4.png"></a>
            </figure>
            <figure class="slide3">
                <a href="/greenDetail.html"><img class="imggg" src="/resources/images/theGreen/theGreen1.png"></a>
            </figure>
            <p class="egft3-2" style="color: green;">자유와 모험을 즐기는</p>
            <p class="egft3-2-1" style="color: green;">나의 첫</p>
            <p class="egft3-3" style="color: green;">럭셔리 카드</p>
        </div>
        <div class="shop">
            <p class="egft3-1" style="color: rgb(252, 71, 102);">the Pink</p>
            <figure class="slide4">
                <a href="/pinkDetail.html"><img class="imggg" src="/resources/images/thePink/thePink5.png"></a>
            </figure>
            <figure class="slide4">
                <a href="/pinkDetail.html"><img class="imggg" src="/resources/images/thePink/thePink2.png"></a>
            </figure>
            <figure class="slide4">
                <a href="/pinkDetail.html"><img class="imggg" src="/resources/images/thePink/thePink3.png"></a>
            </figure>
            <figure class="slide4">
                <a href="/pinkDetail.html"><img class="imggg" src="/resources/images/thePink/thePink4.png"></a>
            </figure>
            <figure class="slide4">
                <a href="/pinkDetail.html"><img class="imggg" src="/resources/images/thePink/thePink1.png"></a>
            </figure>
            <p class="egft3-2" style="color: rgb(252, 71, 102);">프로 쇼펴들의</p>
            <p class="egft3-2-1" style="color: rgb(252, 71, 102);">필수</p>
            <p class="egft3-3" style="color: rgb(252, 71, 102);">럭셔리 카드</p>
        </div>
    </div>
    <br><br><br><br>
    <img src="/resources/images/cards.png" alt="" style="width: 100%;">
    <br>
    <br><br><br><br>
    <div class="">
        <p class="egft1">Hyundai Card 이용 안내</p><br><br><br><br>
        <p class="egft5-1">ο 이용 안내</p><br>
        <ul class="egft5-1-1">
            <li>➤ 코스트코에서 모든 현대카드 이용 가능</li>
            <li>➤ 모든 가맹점은 현대카드 가맹점 등록 및 업종 분류 기준</li>
            <li>➤ 실적 조건 및 적립/할인 한도,혜택 제외 가맹점 기준 등 자세한 내용은 카드 상품별 상세페이지를 통해 확인 가능</li>
        </ul>
        <br><br>
        <p class="egft5-1">ο 대상 현대카드 연회비(카드별 상이): 국내전용/국내외겸용 0원 ~ 250만원</p><br><br>
        <p class="egft5-1">ο 카드 이용대금 연체 시 약정금리+연체가산금리 3%의 연체이자율이 적용됩니다. (회원별, 이용 상품별 차등 적용/법정 최고금리 20% 이내)</p><br>
        <ul class="egft5-1-1">
            <li>➤ 일시불: 거래 발생시점 기준 최소 기간(2개월)의 유이자할부 약정금리+연체가산금리 3%</li>
            <li>➤ 무이자할부: 거래 발생시점 기준 동일한 할부 계약 기간의 유이자할부 약정금리+연체가산금리 3%</li>
        </ul><br><br>
        <p class="egft5-1">ο 상환 능력에 비해 신용카드 이용금액이 과도할 경우, 귀하의 개인신용평점이 하락할 수 있습니다.</p><br><br>
        <p class="egft5-1">ο 개인신용평점 하락 시 금융거래와 관련된 불이익이 발생할 수 있습니다.</p><br><br>
        <p class="egft5-1">ο 일정 기간 원리금을 연체할 경우, 모든 원리금을 변제할 의무가 발생할 수 있습니다.</p><br><br>
        <p class="egft5-1">ο 신용카드 발급이 부적정한 경우(연체금 보유, 개인신용평점 낮음 등) 카드 발급이 제한될 수 있습니다.</p><br><br>
        <p class="egft5-1">ο 카드 이용대금과 이에 수반되는 모든 수수료를 지정된 대금 결제일에 상환합니다.</p><br><br>
        <p class="egft5-1">ο 금융 소비자는 금융소비자보호법 제19조 제1항에 따라 해당 상품 또는 서비스에 대하여 설명을 받을 권리가 있습니다.</p><br><br>
        <p class="egft5-1">ο 자세한 내용 및 이용 조건은 카드 신청 전 현대카드 홈페이지 및 상품설명서, 약관 참고</p><br><br>
        <p class="egft5-1">ο 준법감시 심의필 제 230915-015호 (2023.09.15 ~ 2024.09.14)</p><br><br>
        <p class="egft5-1">ο 여신금융협회 심의필 제 2023 - C1h - 10641호 (2023.09.20 ~ 2024.09.19)</p><br><br>
    </div>

    <br><br><br><br><br><br><br><br><br><br>
    <!-- /main -->

    <footer>


    </footer>


</body>

</html>