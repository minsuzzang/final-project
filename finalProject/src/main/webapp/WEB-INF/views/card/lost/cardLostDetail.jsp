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
    <link rel="stylesheet" href="/resources/css/popup.css">
    <link rel="stylesheet" href="/resources/css/password.css">
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <!-- js -->
    <script src="/resources/lib/jquery-1.11.1.min.js"></script>
    <script src="/resources/lib/jquery.easing.1.3.min.js"></script>
    <script src="/resources/js/menuEffect.js"></script>
    <script src="/resources/js/mousecursor.js"></script>
    <script src="/resources/js/visual_slide.js"></script>
    <script src="/resources/js/password.js"></script>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body style="a {text-decoration-line: none;}">

    <header>
        <!-- 헤더 비디오 -->
        <video src="/resources/videos/header.mp4" muted autoplay loop preload width="100%"></video>
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
                            <li><a href="/cardApplication.html">카드 신청</a></li>
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
                    <li><a href="#"><img src="/resourcesimages/icon_01.png" alt="인스타그램 바로가기"></a></li>
                    <li><a href="#"><img src="/resources/images/icon_02.png" alt="페이스북 바로가기"></a></li>
                    <li><a href="#"><img src="/resources/images/icon_03.png" alt="트위터 바로가기"></a></li>
                    <li><a href="#"><img src="/resources/images/icon_04.png" alt="유투브 바로가기"></a></li>
                </ul>
            </div>
        </div>
    </header><br><br><br><br>
    <!-- main -->

    <p class="egft1">카드 도난 • 분실신고</p>
    <p class="egft2">Report Theft • Loss Of Card</p>
    <div class="dvdv">
        <div class="l1l1">
            <div class="dvdv">
                <ol class="ool">
                    <li class="lli"><span class="sspan">현대카드 도난 및 분실</span><br><br>
                        <p class="pp"><br><br>
                            <b style="font-size: 25px;">
                                누구보다 삐르게 신고하세요!<br><br>
                            </b><br><br>
                            • 분실한 신용카드 회사 중 한 곳에 분실신고<br><br>
                            • 접수 카드사에 분실한 타사 카드도 분실신고 요청<br><br>
                            • 신고 요청을 받은 카드사는 분실 신고가 정상 접수되었음을<br> 문자메시지를 통해 고지<br><br>
                        </p>
                    </li>
                </ol>
            </div>
        </div>
        <div class="r1r1">
            <img src="/resources/images/hdch6.png" alt="" style="width: 80%;">
        </div>
    </div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <hr><br>
    <div class="dvdv">
        <div class="l1l11">
            <div class="dvdv">
                <ol class="ool">
                    <span class="sspan">the <b>Black</b></span><br><br><br><br>
                    <li class="lli"><span class="sssspan">영문이름 : <b>#</b></span><br>
                    </li>
                    <li class="lli"><span class="sssspan">카드번호 : <b>#</b></span><br>
                    </li>
                    <li class="lli"><span class="sssspan">유효기간 : <b>#</b></span><br>
                    </li>
                    <li class="lli"><span class="sssspan">CVC : <b>#</b></span><br>
                    </li>
                </ol>
            </div>
        </div>
        <div class="r1r11">
            <img class="imgg999" src="/resources/images/theBlack/theBlack1.png" alt="" style="width: 50%;">
            <button class="custom-btn-r btn-9-r" formaction="/userService.html">도난 및 분실신고</button>
        </div>
    </div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

    <br><br><br><br><br><br><br><br><br><br>
    <!-- /main -->

    <footer>


    </footer>


</body>

</html>