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
    <link rel="stylesheet" href="/resources/css/popup.css">
    <!-- js -->
    <script src="/resources/lib/jquery-1.11.1.min.js"></script>
    <script src="/resources/lib/jquery.easing.1.3.min.js"></script>
    <script src="/resources/js/visual_slide.js"></script>
    <script src="/resources/js/menuEffect.js"></script>
    <script src="/resources/js/mousecursor.js"></script>
    <script src="/resources/js/purchase/modal2.js"></script>
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
                    <a href="#popupA" onclick="purchase(${sessionScope.m_idx})" class="custom-btn-b btn-9-b jbjbjb" style="text-decoration-line: none;">할인구매</a>
                    <button onclick="requestPay()" class="custom-btn-b btn-9-b jbjbjb" style="text-decoration-line: none;">일반구매</button>

                    
    </section>
    <!-- Modal -->

    <div id="popupA" class="layer">
        <div class="box2">
            <a href="#" class="close fr" style="font-size: 30px;">x</a><br><br>
            <p class="tddd">결제방법을 선택해주세요</p>
            <div id="board-list">
                <table class="board-table">
                    <tr>
                        <th scope="col" class="th-num">결제수단</th>
                        <td class="tdd2">
                            <select name="cardSelect" id="cardSelect" required>
                                <option value="" selected disabled hidden>결제수단을 선택해주세요.</option>
                            </select>
                        </td>
                    </tr>
                </table>
            </div>
            <p class="tddd">카드정보를 입력해주세요</p>
            <div id="board-list">
                <table class="board-table">
                    <tr>
                        <th scope="col" class="th-num">카드번호</th>
                        <td>
                            <input type="text" placeholder="****-****-****-****" maxlength="19" style="width: 45%;"
                                id="cardNumber" onkeyup="formatCardNumber(this)" required>
                        </td>
                    </tr>
                    <tr>
                        <th scope="col" class="th-num">유효기간</th>
                        <td>
                            <input type="text" placeholder="00/00" maxlength="5" style="width: 12%;" id="expiredDate"
                                onkeyup="formatExpiryDate(this)" required>
                        </td>
                    </tr>
                    <tr>
                        <th scope="col" class="th-num">CVC</th>
                        <td>
                            <input type="text" placeholder="000" maxlength="3" style="width: 8%;" id="cvc" required>
                            ※ 카드 뒷면의 숫자 중 마지막 3자리
                        </td>
                    </tr>
                    <tr>
                        <th scope="col" class="th-num">카드 비밀번호</th>
                        <td>
                            <input type="password" placeholder="****" maxlength="4" style="width: 9%;" id="cardPwd" required>
                            ※ 네자리 숫자
                        </td>
                    </tr>
                </table>
            </div><br>
            <div class="dfjc">
                <a href="#popupB" onclick="nextBtn()" id="next" class="custom-btn-b btn-9-b jbjb" style="text-decoration-line: none;">다음</a>
            </div>
        </div>
    </div>

    <div id="popupB" class="layer">
        <div class="box2">
            <a href="#" class="close fr" style="font-size: 30px;">x</a><br><br>
            <p class="tddd">제품정보</p>
            <div id="board-list">
                <table class="board-table">
                    <tr>
                        <th scope="col" class="th-num">제품</th>
                        <td class="tdd2">${product.p_name}</td>
                    </tr>
                    <tr>
                        <th scope="col" class="th-num">가격</th>
                        <td class="tdd2" id="p_price2">${product.p_price2}</td>
                    </tr>
                    <tr>
                        <th scope="col" class="th-num">적립율</th>
                        <td class="tdd2"><b id="accumulation">#</b> %</td>
                    </tr>
                    <tr>
                        <th scope="col" class="th-num">마일리지</th>
                        <td class="tdd2">
							<b id="mileage">#</b>
                            <button class="custom-btn-b btn-9-b jbjb tdd3" onclick="mileageUse()">모두사용</button>
                        </td>
                    </tr>
                </table>
            </div>
            <p class="tddd">최종가격</p>
            <div id="board-list">
                <table class="board-table">
                    <tr>
                        <th scope="col" class="th-num">최종가격</th>
                        <td class="tdd2" id="totalPrice">${product.p_price2}</td>
                    </tr>

                </table>
            </div><br>
				<p class="chk_box">
                <input type="checkbox" id="chk_top" />
                <label for="chk_top"> 결제동의</label>
            </p>
            <div class="dfjc">
                <a type="submit" href="#" class="custom-btn-b btn-9-b jbjb"
                    style="text-decoration-line: none;" onclick="payment(${product.p_idx})">결제</a>
            </div>
        </div>
    </div>

    <!-- Modal -->


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
            pg : 'kakaopay.TC0ONETIME',
            pay_method : 'kakaopay',
            merchant_uid: "IMP"+makeMerchantUid, 
            name : "${product.p_name}",
            amount : "${product.p_price1}",
            buyer_email : "${member.m_email}",
            buyer_name : "${member.m_name}",
            buyer_tel : "${member.m_phone}",
            buyer_addr : '안양시 만안구',
            buyer_postcode : '123-456'
        }, function (rsp) { // callback
            if (rsp.success) {
                window.location='http://localhost/product/result.do?idx=${product.p_idx}'
                $.ajax({
                	type:"POST",
                	url:"/purchase/history.do",
                	data: {
                		p_idx: ${product.p_idx},
                		m_idx: ${member.m_idx},
                		ph_total_price: ${product.p_price1}
                	}
                })
            } else {
                console.log(jyp);
                window.location='http://localhost/product/result.do?idx=${product.p_idx}'
            }
        });
    }
</script>

