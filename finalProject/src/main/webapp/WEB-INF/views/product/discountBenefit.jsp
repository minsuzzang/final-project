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

    <p class="egft1">할인혜택</p>
    <p class="egft2">Discount Benefits</p>
    <div class="dvdv">
        <div class="l1l1">
            <div class="dvdv">
                <ol class="ool">
                    <li class="lli"><span class="sspan">모든 가맹점에서 0.5% • 1% 할인</span><br><br>
                        <p class="pp">
                            • 당월 이용금액 50만원 미만 시 할인 제외 <br><br>
                            • 매월 카드 이용대금 결제 시 할인 적용<br><br>
                            • 최초 발급 시 발급일 포함 2회차 결제일자에 포합되는 이용 건까지 <br>
                            이용금액 무관하게 1% 할인율 제공
                        </p>
                    </li>
                </ol>
            </div>
        </div>
        <div class="r1r1">
            <img src="/resources/images/hdch3.png" alt="">
        </div>
    </div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <div class="dvdv">
        <div class="faq-drawer">
            <input class="faq-drawer__trigger" id="faq-drawer" type="checkbox" /><label class="faq-drawer__title"
                for="faq-drawer">할인 혜택 상세 기준</label>
            <div class="faq-drawer__content-wrapper">
                <div class="faq-drawer__content">
                    <div class="l1l1">
                        <ol class="ool"><br><br><br>
                            <li class="lli">
                                <span class="ssspan">X • X2 • X3 Edition2</span><br>
                                <hr>
                                <span class="ssspan">기본 할인</span><br><br>
                                <p class="pp">
                                    • 모든 가맹점에서 0.5 ~ 1% 할인 <br>
                                    -당월 이용금액 50만원 이상 시 0.5% 할인<br><br>
                                    -당월 이용금액 100만원 이상 시 1% 할인<br>
                                    단, 당월 이용금액 50만원 미만 시 할인 제외<br><br>
                                    -최초 발급 시 발급일 포함 2회차 결제일까지 이용금액 무관하게 1% 할인
                                </p>
                                <hr>
                                <span class="ssspan">시즌 스페셜 할인</span><br><br>
                                <p class="pp">
                                    • 매 분기 시즌 스페셜 할인처에서 5% 할인 <br>
                                    -당월 이용금액 50만원 이상 시 5% 할인(본인+가족 월 3만원 한도) <br><br>
                                    -X3 Edition2는 당월 이용금액이 200만원 이상 시 10% 할인(본인+가족 월 6만원 한도) <br><br>
                                    -단, 당월 이용금액 50만원 미만 시 할인 제외<br><br>
                                    -시즌 스페셜 할인 미신청 또는 할인 한도 초과 시 기본 할인율 적용<br><br>
                                    -시즌 스페셜 할인은 현대카드 홈페이지 및 앱, 고객센터에서 신청 가능하며, 신청 당일부터 시즌 스페셜 할인율 적용 <br><br>
                                    -시즌 스페셜 할인처 변경 시에는 변경일 기준 6개월 전에 현대카드 홈페이지, 이용대금명세서, 문자메시지를 통해 사전 고지하며, <br>상세 내용은
                                    현대카드 홈페이지 및 앱을 통해 확인 가능 <br><br>
                                    -최초 발급 시 시즌 스페셜 할인을 신청한 회원에 한해 발급일 포함 2회차 결제일까지 이용금액과 무관하게 시즌 스페셜 5% 할인 제공<br>(단, X3
                                    Edition2는 당월 이용금액 200만원 이상 시 10% 할인)
                                </p>
                                <hr>
                                <span class="ssspan">실적 기준</span><br><br>
                                <p class="pp">
                                    •당월 이용금액은 결제일자에 청구된 현대카드 XㆍX2ㆍX3 Edition2(본인+가족카드)의 일시불 및 할부 이용금액 <br>
                                    -예시 : 결제일이 25일인 경우, 전월 14일 ~당월 13일에 이용한 금액을 청구<br><br>
                                    -결제일자별 이용 기간은 월별로 달라질 수 있음<br><br>
                                    -할부, 일부결제금액이월약정(리볼빙) 이용 시 최초 결제일자에 실적 포함<br><br>
                                    -결제일 변경, 선입금, 전표매입 지연, 매출 취소 등의 경우 실적합산 기간 및 금액이 달라질 수 있음
                                </p>
                                <hr>
                                <span class="ssspan">할인 시기</span><br><br>
                                <p class="pp">
                                    •매월 이용대금 결제 시 할인<br>
                                </p>
                                <hr>
                                <span class="ssspan">할인 한도</span><br><br>
                                <p class="pp">
                                    •연간 할인한도 제한 없음<br>
                                    -이용금액에 따라 제한 없이 할인 (단, 시즌 스페셜 할인은 별도 기준 적용)
                                </p>
                                <hr>
                                <span class="ssspan">할인 대상</span><br><br>
                                <p class="pp">
                                    •국내외에서 사용한 모든 물품 구매 및 서비스 이용대금의 입금금액<br>
                                    -할인율 및 할인한도는 카드 이용일 기준에 따름
                                </p>
                                <hr>
                                <span class="ssspan">할인 제외</span><br><br>
                                <p class="pp">
                                    •장기카드대출(카드론), 단기카드대출(현금서비스), 연회비, 제수수료, 이자, 지방세ㆍ국세 등 세금 납부액, 도시가스 요금,<br> 대학ㆍ대학원 등록금
                                    납부
                                    결제건, 자동납부서비스 이용수수료, 당사의 모든 할인 서비스(현대카드 PRIVIA할인, 현대카드 플래티넘서비스 제외) <br> 및 무이자할부 이용금액
                                </p>
                                <hr>
                                <span class="ssspan">기타 할인 기준</span><br><br>
                                <p class="pp">
                                    •선결제 건은 선결제 이후 도래하는 첫 결제일에 할인 적용<br>
                                </p>
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
            <li class="lli"><span class="sssspan">• 대상 카드 연회비 : 1만5천 ~ 7만원(본인카드 기준)</span><br>
            </li>
            <li class="lli"><span class="sssspan">• 카드 이용대금 연체 시 약정금리 + 연체가산금리 3%의 연체이자율이 적용됩니다. <br>(회원별, 이용 상품별 차등
                    적용/법정 최고금리 20% 이내) <br>
                    단, 연체 발생시점에 약정금리가 없는 경우 아래와 같이 적용</span><br><br>
                <p class="pp">
                    -일시불 : 거래 발생시점 기준 최소 기간(2개월)의 유이자할부 약정금리 + 연체가산금리 3% <br>
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
            <li class="lli"><span class="sssspan">• 준법감시심의필 제231102-021호 (2023.11.02 ~ 2024.11.01)</span><br>
            </li>
            <li class="lli"><span class="sssspan">• 여신금융협회 심의필 제2023-C1h-12027호 (2023.11.02 ~ 2024.11.01)</span><br>
            </li>
        </ol>
    </div>
    <br><br><br><br><br><br><br><br><br><br>
    <!-- /main -->

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>


</body>

</html>