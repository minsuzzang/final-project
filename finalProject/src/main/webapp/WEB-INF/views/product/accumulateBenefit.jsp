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

    <p class="egft1">적립혜택</p>
    <p class="egft2">Accumulated Benefits</p>
    <div class="dvdv">
        <div class="l1l1">
            <div class="dvdv">
                <ol class="ool">
                    <li class="lli"><span class="sspan">현대 M포인트</span><br><br>
                        <p class="pp"><br><br>
                            <b style="font-size: 25px;">
                                카드별 2~10% 적립<br><br>
                            </b><br><br>
                            • 당월 이용금액에 따라 적립 한도, 횟수 제한 없이 M포인트 적립<br><br>
                            • 당월 이용금액 50만원 미만 시 M포인트 적립 제외<br><br>
                            • 신규 발급 시 발급일 포함 2회차 결제일자에 포함되는<br>
                            이용 건까지 이용금액 50만원 미만도 업종별 적립률 적용
                        </p>
                    </li>
                </ol>
            </div>
        </div>
        <div class="r1r1">
            <img src="/resources/images/hdch4.png" alt="" style="width: 80%;">
        </div>
    </div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <div class="dvdv">
        <div class="faq-drawer">
            <input class="faq-drawer__trigger" id="faq-drawer" type="checkbox" /><label class="faq-drawer__title"
                for="faq-drawer">카드별 적립률</label>
            <div class="faq-drawer__content-wrapper">
                <div class="faq-drawer__content">
                    <div class="l1l1">
                        <ol class="ool"><br><br><br>
                            <li class="lli">
                                <span class="sspan">the Black</span><br>
                                <div class="dfjc">
                                    <img class="imggggg" src="/resources/images/theBlack/theBlack1.png" alt="">
                                </div>
                                <hr>
                                <span class="ssspan">현대 the Black 적립률</span><br><br>
                                <p class="pp">
                                    • 상품 구매 시 구매금액의 10 % 적립
                                </p>
                                <hr>
                            </li>
                            <li class="lli">
                                <span class="sspan">the Purple</span><br>
                                <div class="dfjc">
                                    <img class="imggggg" src="/resources/images/thePurple/thePurple1.png" alt="">
                                </div>
                                <hr>
                                <span class="ssspan">현대 the Purple 적립률</span><br><br>
                                <p class="pp">
                                    • 상품 구매 시 구매금액의 8 % 적립
                                </p>
                                <hr>
                            </li>
                            <li class="lli">
                                <span class="sspan">the Red</span><br>
                                <div class="dfjc">
                                    <img class="imggggg" src="/resources/images/theRed/theRed1.png" alt="">
                                </div>
                                <hr>
                                <span class="ssspan">현대 the Red 적립률</span><br><br>
                                <p class="pp">
                                    • 상품 구매 시 구매금액의 6 % 적립
                                </p>
                                <hr>
                            </li>
                            <li class="lli">
                                <span class="sspan">the Green</span><br>
                                <div class="dfjc">
                                    <img class="imggggg" src="/resources/images/theGreen/theGreen1.png" alt="">
                                </div>
                                <hr>
                                <span class="ssspan">현대 the Green 적립률</span><br><br>
                                <p class="pp">
                                    • 상품 구매 시 구매금액의 4 % 적립
                                </p>
                                <hr>
                            </li>
                            <li class="lli">
                                <span class="sspan">the Pink</span><br>
                                <div class="dfjc">
                                    <img class="imggggg" src="/resources/images/thePink/thePink1.png" alt="">
                                </div>
                                <hr>
                                <span class="ssspan">현대 the Pink 적립률</span><br><br>
                                <p class="pp">
                                    • 상품 구매 시 구매금액의 2 % 적립
                                </p>
                                <hr>
                            </li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <div class="dvdv">
        <ol class="ool">
            <span class="sspan">유의사항</span><br><br><br>
            <li class="lli"><span class="sssspan">• 상기 업종별 적립 M포인트는 대표 가맹점 업종에 따른 예시이므로 실제 적립내역과 다를 수 있음</span><br>
            </li>
            <li class="lli"><span class="sssspan">• 해외 및 공동 가맹점 이용의 경우 일괄 0.5% 적립</span><br>
            </li>
            <li class="lli"><span class="sssspan">• 당사 모든 할인서비스 및 무이자할부 이용금액은 M포인트 적립 제외되며, 자세한 내용은 'M포인트 적립 및
                    관리기준'참고</span><br>
            </li>
            <li class="lli"><span class="sssspan">• 공동가맹점이란?</span><br>
                <p class="pp"> -현대카드와 가맹점 계약 체결이 없을 수 있으며, 이경우에도 [가맹점 공동 이용제도]에 따라 <br>
                    회원에 대한 거래 승인을 일반 가맹점과 동일한 방법으로 신용카드 조회기를 이용하여 거래 승인 가능<br><br>
                    -가맹점 사정에 따라 일부 가맹점의 경우 공동가맹점 이용 제도 : 여러 신용카드 가맹점에 가입하지 않고 1개 이상의 카드사에만 가맹점으로 가입하면 <br>
                    국내에서 발행된 모든 신용카드에 대하여 신용판매할 수 있는 제도
                </p>
            </li>
            <li class="lli"><span class="sssspan">• 약관 제15조 제3항에 따라 회원에게 제공되는 M포인트 적립/사용서비스는 당사의 영업정책이나 제휴사의 사정에 따라,
                    <br>변경 또는 중단될 수 있으며 그 내용은 사전에 공지</span><br>
            </li>
            <li class="lli"><span class="sssspan">• 연회비는 카드 발급 시 선청구됩니다.</span><br>
            </li>
            <li class="lli"><span class="sssspan">• 카드 연회비(기본연회비 + 제휴연회비)는 보유 카드별로 청구됩니다.</span><br>
            </li>
            <li class="lli"><span class="sssspan">• 연회비는 각 카드별 1만5천 ~ 9만원이며, 자세한 내용은 각 상품별 상세페이지 참고
                    바랍니다.</span><br><br><br><br><br>



            </li>
            <li class="lli"><span class="sssspan">• 대상 카드 연회비 : 1만5천 ~ 9만원(본인카드 기준)</span><br>
            </li>
            <li class="lli"><span class="sssspan">• 카드 이용대금 연체 시 약정금리 + 연체가산금리 3%의 연체이자율이 적용됩니다. <br>(회원별, 이용 상품별 차등
                    적용/법정 최고금리 20% 이내)
                    단, 연체 발생시점에 약정금리가 없는 경우 아래와 같이 적용</span><br><br>
                <p class="pp">
                    -일시불 : 거래 발생시점 기준 최소 기간(2개월)의 유이자할부 약정금리 + 연체가산금리 3% <br><br>
                    -무이자할부 : 거래 발생시점 기준 동일한 할부 계약 기간의 유이자할부 약정금리 + 연체가산금리 3%
                </p>
            </li>
            <li class="lli"><span class="sssspan">• 상환 능력에 비해 신용카드 이용금액이 과도할 경우, 귀하의 개인신용평점이 하락할 수 있습니다.</span><br>
            </li>
            <li class="lli"><span class="sssspan">• 개인신용평점 하락 시 금융거래와 관련된 불이익이 발생할 수 있습니다.</span><br>
            </li>
            <li class="lli"><span class="sssspan">• 일정 기간 원리금을 연체할 경우, 모든 원리금을 변제할 의무가 발생할 수 있습니다.</span><br>
            </li>
            <li class="lli"><span class="sssspan">• 신용카드 발급이 부적정한 경우(연체금 보유, 개인신용평점 낮음 등) 카드 발급이 제한될 수 있습니다.</span><br>
            </li>
            <li class="lli"><span class="sssspan">• 카드 이용대금과 이에 수반되는 모든 수수료를 지정된 대금 결제일에 상환합니다.</span><br>
            </li>
            <li class="lli"><span class="sssspan">• 금융소비자는 금융소비자보호법 제19조 제1항에 따라 해당 상품 또는 서비스에 대하여 설명을 받을 권리가
                    있습니다.</span><br>
            </li>
            <li class="lli"><span class="sssspan">• 자세한 내용 및 이용 조건은 카드 신청 전 현대카드 홈페이지 및 상품설명서, 약관 참고</span><br>
            </li>
            <li class="lli"><span class="sssspan">• 준법감시 심의필 제230719-012호 (2023.07.19~2024.07.18)</span><br>
            </li>
            <li class="lli"><span class="sssspan">• 여신금융협회 심의필 제2023-C1h-08652호 (2023.07.19~2024.07.18)</span><br>
            </li>
        </ol>
    </div>
    <br><br><br><br><br><br><br><br><br><br>
    <!-- /main -->

    <footer>


    </footer>


</body>

</html>