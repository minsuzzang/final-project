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
    <link rel="stylesheet" href="/resources/css/shop.css">
    <link rel="stylesheet" href="/resources/css/card.css">
    <!-- js -->
    <script src="/resources/lib/jquery-1.11.1.min.js"></script>
    <script src="/resources/lib/jquery.easing.1.3.min.js"></script>
    <script src="/resources/js/visual_slide.js"></script>
    <script src="/resources/js/menuEffect.js"></script>
    <script src="/resources/js/mousecursor.js"></script>
    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
</head>

<body>

    <header>
        <video src="/resources/videos/header.mp4" muted autoplay loop preload width="100%"></video>
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
    </header><br><br><br><br>
    <!-- main -->
    <p class="egft1">제휴 상품</p>
    <p class="egft2">Affiliate Product</p><br><br><br><br><br><br><br><br>
    
    <section> <!--중반부의 레이아웃-->

        <div class="container" id="one"> <!-- 중반부 전체를 감싸는 div 태그-->
            
            <div class="first"> <!--중반부 를 두개의 div태그로 나누어 왼쪽 절반의 구역으로 나눠줌-->
                <p class="pn"><img class="mgg" src="${product.p_brand}"> ${product.p_name}</p>
                <img class="www" src="${product.p_file_path}" alt="상품사진">
            </div>

            <div class="second"> <!--중반부 를 두개의 div태그로 나누어 오른쪾 절반의 구역으로 나눠줌-->
                    <br>

                    <div id="fifth">
                        <div class="emojiright">
                            <p class="ppnn1">${product.p_name}</p>
                            <p class="ppnn2">${product.p_eng_name}</p>
                        </div>
                        <div id="heart2">
                            <a href="#"><i class="far fa-heart" id="heart3"></i></a>
                        </div>
                    </div>

                    <p class="seconddetail">${product.p_content}</p>

                    <div class="productdetail">
                        <span class="sp1">제품 브랜드</span>
                        <span ckass="sp2"><img class="wwww" src="${product.p_brand}"></span>
                    </div>

                    <div class="productdetail2"> <!--영양정보를 담아주는 div 태그-->
                        <div class="boxone"> <!--영양 정보를 좌우로 반반 나눠주었으며, 왼쪽에 해당하는 div 태그-->
                            <ul>
                                <li>
                                    <span class="l">기준가</span>
                                    <span>${product.p_price1}</span class="r">
                                </li>
                            </ul>
                        </div>

                        <div class="boxtwo"> <!--영양 정보를 좌우로 반반 나눠주었으며, 오른쪽에 해당하는 div 태그-->
                            <ul>
                                <li>
                                    <span class="l">할인가</span>
                                    <span>${product.p_price2}</span class="r">
                                </li>
                            </ul>
                        </div>

                    </div>
                    <div class="jjpp">※ 교환 및 환불이 불가능합니다.</div><br><br><br>
                    <button class="custom-btn-b btn-9-b" onclick="requestPay()">구매</button>
    </section>


    <!-- /main -->

    <footer>


    </footer>


</body>

</html>
<script>
    var IMP = window.IMP; 
    IMP.init("imp83237406"); 
      
    var today = new Date();   
    var hours = today.getHours(); // 시
    var minutes = today.getMinutes();  // 분
    var seconds = today.getSeconds();  // 초
    var milliseconds = today.getMilliseconds();
    var makeMerchantUid = hours +  minutes + seconds + milliseconds;
    
    function requestPay() {
        IMP.request_pay({
            pg : 'html5_inicis.INIBillTst',
            pay_method : 'card',
            merchant_uid: "IMP"+makeMerchantUid, 
            name : "${product.p_name}",
            amount : "${product.p_price2}",
            buyer_email : "${member.m_email}",
            buyer_name : "${member.m_name}",
            buyer_tel : "${member.m_phone}",
            buyer_addr : '서울특별시 강남구 삼성동',
            buyer_postcode : '123-456'
        }, function (rsp) { // callback
            if (rsp.success) {
                console.log(rsp);
                $.ajax({
                	type:"POST",
                	url:"/product/result.do"
                })
            } else {
                console.log(jyp);
                window.location='http://localhost/product/result.do?idx=${product.p_idx}'
            }
        });
    }
</script>

