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
    <link rel="stylesheet" href="/resources/css/faq.css">
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

    <p class="egft1">FAQ</p>
    <p class="egft2">Frequently Asked Questions</p>
    <div class="dvdv">
        <div class="l1l1">
            <div class="dvdv">
                <ol class="ool">
                    <li class="lli"><span class="sspan">자주묻는 질문 [ FAQ ]</span><br><br>
                        <p class="pp"><br><br>
                            <b style="font-size: 25px;">
                                Frequently Asked Questions<br><br>
                            </b><br><br>
                            • FAQ에 없는 질문들은 고객문의를 이용해주세요.<br><br>
                            • 현대카드는 고객님들의 의견이 필요합니다.<br><br>
                        </p>
                    </li>
                </ol>
            </div>
        </div>
        <div class="r1r1">
            <img src="/resources/images/faq.png" alt="" style="width: 110%;">
        </div>
    </div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <div class="dvdv">
        <div class="faq-drawer">
            <input class="faq-drawer__trigger" id="faq-drawer" type="checkbox" /><label class="faq-drawer__title"
                for="faq-drawer">[청구/결제 > 이용대금결제] 카드를 해지했는데 왜 출금이 되었나요?</label>
            <div class="faq-drawer__content-wrapper">
                <div class="faq-drawer__content"><br><br>
                    <p>
                        카드를 해지하더라도 해지 전에 이용하신 금액이 있다면, 해당 금액은 결제일에 정상 출금됩니다.
                    </p>
                </div>
            </div>
        </div>

        <div class="faq-drawer">
            <input class="faq-drawer__trigger" id="faq-drawer-2" type="checkbox" /><label class="faq-drawer__title"
                for="faq-drawer-2">[청구/결제 > 이용대금결제] 결제금액을 미납하면 어떻게 되나요?</label>
            <div class="faq-drawer__content-wrapper">
                <div class="faq-drawer__content"><br><br>
                    <p>
                        카드대금을 납부하지 않으면 지연배상금(연체료)이 부과되며, 카드사용정지 또는 한도하향 등의 불이익을 받을 수 있습니다. <br>
                        또한 다른 금융기관에 연체 정보가 공유되어 금융거래에 불편을 겪을 수 있습니다.
                    </p>
                </div>
            </div>
        </div>

        <div class="faq-drawer">
            <input class="faq-drawer__trigger" id="faq-drawer-3" type="checkbox" /><label class="faq-drawer__title"
                for="faq-drawer-3">[청구/결제 > 이용대금결제] 이중 출금된 금액은 언제 환불 받을 수 있나요?</label>
            <div class="faq-drawer__content-wrapper">
                <div class="faq-drawer__content"><br><br>
                    <p>
                        영업일 기준으로 2일 이내에 회원님의 자동이체 계좌로 환불됩니다. <br>
                        만약 지로이용 중이거나 자동이계 계좌 정보가 등록되지 않은 경우 또는 2일이내 환불이 되지 않은 경우 <br>
                        고객센터(1577-6000)로 문의해주시기 바랍니다.
                    </p>
                </div>
            </div>
        </div>

        <div class="faq-drawer">
            <input class="faq-drawer__trigger" id="faq-drawer-4" type="checkbox" /><label class="faq-drawer__title"
                for="faq-drawer-4">[카드이용 > 해외이용] 카드 영문성명이 여권과 다른데 해외 이용이 가능한가요?</label>
            <div class="faq-drawer__content-wrapper">
                <div class="faq-drawer__content"><br><br>
                    <p>
                        아니요, 신용카드의 영문명과 여권 영문명이 다르면 면세점이나 해외에서 카드 이용시 불편을 겪을 수 있습니다. <br>
                        카드 영문명과 여권 영문명이 다를 경우 고객센터(1577-6000)로 영문명 변경을 요청하신 후 카드를 재발급 받아 이용해주시기 바랍니다.
                    </p>
                </div>
            </div>
        </div>

        <div class="faq-drawer">
            <input class="faq-drawer__trigger" id="faq-drawer-5" type="checkbox" /><label class="faq-drawer__title"
                for="faq-drawer-5">[카드이용 > 해외이용] 해외에서 카드를 분실했습니다. 어떻게 해야 하나요?</label>
            <div class="faq-drawer__content-wrapper">
                <div class="faq-drawer__content"><br><br>
                    <p>
                        해외에서 카드를 도난/분실했을 경우에는 즉시 홈페이지 또는 고객센터로 신고해주시기 바랍니다. (24시간 분실신고 접수) <br><br>

                        ▶ 홈페이지 : 고객센터 > 카드도난/분실 신고<br>
                        ▶ 해외 이용 고객센터 : 82-2-3015-9000 / 82-2-3015-9200 <br><br>

                        (참고) <br>
                        - 카드 도난/분실이 의심될 때 현대카드 앱의 Lock & Limit 기능을 이용하시면 타인에 의한 카드 부정 사용을 예방할 수 있습니다.
                    </p>
                </div>
            </div>
        </div>

        <div class="faq-drawer">
            <input class="faq-drawer__trigger" id="faq-drawer-6" type="checkbox" /><label class="faq-drawer__title"
                for="faq-drawer-6">[카드이용 > 해외이용] 해외에서 카드 이용 시 결제일과 적용되는 환율은 어떻게 되나요?</label>
            <div class="faq-drawer__content-wrapper">
                <div class="faq-drawer__content"><br><br>
                    <p>
                        해외 이용금액의 결제일도 국내 기준과 동일하게 회원님의 결제일에 따른 이용 기간별로 적용됩니다. <br>
                        환율은 회원님의 이용내역이 현대카드로 접수되는 일자에 외국환을 송금할 때 적용되는 환율(전신환매도율)을 기본으로 적용하여 원화로 전환됩니다. <br><br>

                        (참고) <br>
                        - 해외 이용 시 국제 브랜드사의 중계 수수료와 승인 및 정산처리 비용에 따른 해외 이용수수료가 추가됩니다. <br>
                        - 브랜드수수료 : 결제금액의 1.0~1.4% <br>
                        (브랜드수수료는 브랜드에 따라 상이하며, 동일 브랜드 카드일 경우라도 카드 상품별로 수수료율이 상이할 수 있습니다.) <br>
                        - 해외이용수수료 : 이용금액(USD 기준) X 전신환매도율 X 0.18% <br>
                    </p>
                </div>
            </div>
        </div>

        <div class="faq-drawer">
            <input class="faq-drawer__trigger" id="faq-drawer-7" type="checkbox" /><label class="faq-drawer__title"
                for="faq-drawer-7">[유형별FAQ > 연회비] 이용정지 카드에 대해 연회비가 청구되었다면?</label>
            <div class="faq-drawer__content-wrapper">
                <div class="faq-drawer__content"><br><br>
                    <p>
                        【알아야 할 사항】<br><br>

                        [신용카드 개인회원 표준약관]에서는 1년 이상 이용실적이 없는 휴면카드에 대해서는 카드사가 연회비를 청구하지 못하도록 규정하고 있습니다. <br><br><br><br>



                        【소비자 유의사항】<br><br>

                        연회비 부과 시점을 기준으로 1년 이상 사용하지 않은 카드에 대한 연회비는 부과되지 않으므로 만약 휴면카드에 대해 연회비가 청구된 경우에는 <br>
                        현대카드 대표번호(1577-6000),로 사유를 확인하고 청구 취소 (기 납부 연회비 반환)를 요구하실 수 있습니다.
                    </p>
                </div>
            </div>
        </div>

        <div class="faq-drawer">
            <input class="faq-drawer__trigger" id="faq-drawer-8" type="checkbox" /><label class="faq-drawer__title"
                for="faq-drawer-8">[유형별FAQ > 연회비] 카드사 상담원의 안내 잘못에 따른 피해 발생시 구제 및 불친절 직원에 대한 조치가 가능한지?</label>
            <div class="faq-drawer__content-wrapper">
                <div class="faq-drawer__content"><br><br>
                    <p>
                        【알아야 할 사항】<br><br>

                        카드사 상담직원의 안내사항 오류 및 불친절 등으로 인한 피해는 해당 금융사에서 관련 조치를 받아야 할 사항이므로 <br>
                        발생 즉시 해당 카드사에 통보하시어 처리 절차에 따라 구제를 받으셔야 합니다. <br><br><br><br>



                        【소비자 유의사항】<br><br>

                        직원 실수로 인한 피해를 보상받은 것은 법적인 근거 및 특정의 기준이 마련되어 있지 않으나, <br>
                        소비자의 경제적·정신적 피해규모와 함께 카드사 직원 업무실수와 피해와의 인과관계등에 피해보상을 받으실 수 있으므로, <br>
                        현대카드 소비자보호센터 (02-2167-6016)로 문의하시기 바랍니다.
                    </p>
                </div>
            </div>
        </div>

        <div class="faq-drawer">
            <input class="faq-drawer__trigger" id="faq-drawer-9" type="checkbox" /><label class="faq-drawer__title"
                for="faq-drawer-9">[회원정보 > 개인정보] 회원 정보 변경은 꼭 본인만 가능한가요?</label>
            <div class="faq-drawer__content-wrapper">
                <div class="faq-drawer__content"><br><br>
                    <p>
                        네, 회원 정보는 본인만 변경 가능합니다. <br>
                        다만, 본인회원이 위임한 대리인에 한하여 증빙서류를 제출할 경우, 회원정보를 변경 또는 확인하실 수 있습니다. <br><br>

                        자세한 사항은 고객센터(1577-6000)로 문의해주시기 바랍니다.
                    </p>
                </div>
            </div>
        </div>

        <div class="faq-drawer">
            <input class="faq-drawer__trigger" id="faq-drawer-10" type="checkbox" /><label class="faq-drawer__title"
                for="faq-drawer-10">[회원정보 > 개인정보] 이름을 개명하였는데 어떻게 변경 신청을 하나요?</label>
            <div class="faq-drawer__content-wrapper">
                <div class="faq-drawer__content"><br><br>
                    <p>
                        개명으로 인해 정보를 변경하시려면 상담원과 통화 후 관련 서류를 보내주시면 됩니다. <br>
                        자세한 사항은 고객센터(1577-6000)로 문의해주시기 바랍니다.
                    </p>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <br><br><br><br><br><br><br><br><br><br>
    <!-- /main -->

    <footer>


    </footer>


</body>

</html>