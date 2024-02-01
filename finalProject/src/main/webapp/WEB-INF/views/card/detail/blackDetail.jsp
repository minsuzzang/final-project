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
   
    <form action="">
        <div class="left2">
            <img class="dimg" src="/resources/images/theBlack/black123.png" alt="">
        </div>
        <div class="right2">
            <br><br><br><br>
            <p class="fff3"><b>the Black</b></p><br><br>
            <p class="fff1">Top-tier 브랜드 바우처 네트워크</p>
            <p class="fff1">최상위 클래스 항공 업그레이드</p>
            <p class="fff1">the Black 회원만을 위한 전담 컨시어지</p><br><br><br>
                <button class="custom-btn-b btn-9-b" formaction="/card/design/black">신청하기</button>
            <br><br><br><br>
            <div class="yhb">
                <p class="fff1">연회비 2,500,000</p><br>
                <p class="fff0">국내전용</p>
                <p class="fff0-1">기본연회비 500,000원 + 제휴연회비 2,000,000원</p>
                <p class="fff0">국내외겸용(VISA)</p>
                <p class="fff0-1">기본연회비 500,000원 + 제휴연회비 2,000,000원</p>
            </div>
        </div>
    </form>



    <!-- /main -->

    <footer>


    </footer>


</body>

</html>