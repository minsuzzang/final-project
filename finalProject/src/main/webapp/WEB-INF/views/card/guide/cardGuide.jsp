<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <video src="/resources/videos/header.mp4" muted autoplay loop preload width="100%"></video>
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
    </header><br><br><br><br>
    <!-- main -->

    <p class="egft1">카드안내</p>
    <p class="egft2">Card Information</p>
    <div class="dvdv">
        <div class="l1l1">
            <div class="dvdv">
                <ol class="ool">
                    <li class="lli"><span class="sspan">현대 프리미엄</span><br><br>
                        <p class="pp">
                            <span class="sspan">Hyundai Originals</span><br><br><br>
                            <b style="font-size: 25px;">
                                현대카드의 오리지널리티를 담은 진정한 현대카드<br><br>
                            </b><br>
                            • 프리미엄카드는 별도의 심사를 거쳐 발급되므로 심사과정에서<br> 발급이 거절될 수 있습니다.<br><br>
                            • MasterCard 브랜드는 2023년 10월 4일부로 신규∙교체∙추가 발급 중단<br><br>
                            • MasterCard 브랜드로 발급된 카드는 유효 기간까지 이용할 수 있으며, <br>갱신 발급 및 분실∙훼손에 의한 재발급은 유효 기간 내 가능<br><br>
                        </p>
                    </li>
                </ol>
            </div>
        </div>
        <div class="r1r1">
            <img src="/resources/images/hdch5.png" alt="" style="width: 70%;">
        </div>
    </div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

    <hr>
    <div class="dvdv">
        <ol class="ool">
            <span class="sspan">the Black</span><br><br><br>
            <img class="imgg99" src="/resources/images/theBlack/blackPB.png" alt="">
            <li class="lli"><span class="sssspan">현대 프리미엄 the Black</span><br>
                <p class="pp">
                    Top-tier 브랜드 바우처 네트워크<br><br>
                    최상위 클래스 항공 업그레이드<br><br>
                    the Black 회원만을 위한 전담 컨시어지<br><br><br>
                <p class="fff1">연회비 2,500,000</p>
                <p class="fff0">국내전용</p>
                <p class="fff0-1">기본연회비 500,000원 + 제휴연회비 2,000,000원</p>
                <p class="fff0">국내외겸용(VISA)</p>
                <p class="fff0-1">기본연회비 500,000원 + 제휴연회비 2,000,000원</p>
                </p>
            </li><br>
            <hr><br>
            <span class="sspan">the Purple</span><br><br><br>
            <img class="imgg99" src="/resources/images/thePurple/purplePB.png" alt="">
            <li class="lli"><span class="sssspan">현대 프리미엄 the Purple</span><br>
                <p class="pp">
                    취향에 따라 설계·사용하는 바우처 네트워크<br><br>
                    항공 마일리지와 M포인트 중 선택 적립<br><br>
                    기본 리워드에 추가로 제공되는 로열티 보너스<br><br><br>
                <p class="fff1">연회비 800,000</p>
                <p class="fff0">국내전용</p>
                <p class="fff0-1">기본연회비 200,000원 + 제휴연회비 600,000원</p>
                <p class="fff0">국내외겸용(VISA)</p>
                <p class="fff0-1">기본연회비 200,000원 + 제휴연회비 600,000원</p>
                </p>
            </li><br>
            <hr><br>
            <span class="sspan">the Red</span><br><br><br>
            <img class="imgg99" src="/resources/images/theRed/redPB.png" alt="">
            <li class="lli"><span class="sssspan">현대 프리미엄 the Red</span><br>
                <p class="pp">
                    핫한 라이프를 완성하는<br><br>
                    필수 "럭셔리 카드"<br><br><br>
                <p class="fff1">연회비 300,000</p>
                <p class="fff0">국내전용</p>
                <p class="fff0-1">기본연회비 100,000원 + 제휴연회비 200,000원</p>
                <p class="fff0">국내외겸용(VISA)</p>
                <p class="fff0-1">기본연회비 100,000원 + 제휴연회비 200,000원</p>
                </p>
            </li><br>
            <hr><br>
            <span class="sspan">the Green</span><br><br><br>
            <img class="imgg99" src="/resources/images/theGreen/greenPB.png" alt="">
            <li class="lli"><span class="sssspan">현대 프리미엄 the Green</span><br>
                <p class="pp">
                    자유와 모험을 즐기는<br><br>
                    나의 첫 "럭셔리 카드"<br><br><br>
                <p class="fff1">연회비 150,000</p>
                <p class="fff0">국내전용</p>
                <p class="fff0-1">기본연회비 50,000원 + 제휴연회비 100,000원</p>
                <p class="fff0">국내외겸용(VISA)</p>
                <p class="fff0-1">기본연회비 50,000원 + 제휴연회비 100,000원</p>
                </p>
            </li><br>
            <hr><br>
            <span class="sspan">the Pink</span><br><br><br>
            <img class="imgg99" src="/resources/images/thePink/pinkPB.png" alt="">
            <li class="lli"><span class="sssspan">현대 프리미엄 the Pink</span><br>
                <p class="pp">
                    프로 쇼퍼들의<br><br>
                    필수 "럭셔리 카드"<br><br><br>
                <p class="fff1">연회비 150,000</p>
                <p class="fff0">국내전용</p>
                <p class="fff0-1">기본연회비 50,000원 + 제휴연회비 100,000원</p>
                <p class="fff0">국내외겸용(VISA)</p>
                <p class="fff0-1">기본연회비 50,000원 + 제휴연회비 100,000원</p>
                </p>
            </li><br>
            <hr><br>
        </ol>
    </div>
    <br><br><br><br><br><br><br><br><br><br>
    <!-- /main -->

    <footer>


    </footer>


</body>

</html>