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
                <p class="pn">[ SAMSUNG ] BESPOKE 그랑데</p>
                <img src="/images/product/samsung1.png" alt="상품사진">
            </div>

            <div class="second"> <!--중반부 를 두개의 div태그로 나누어 오른쪾 절반의 구역으로 나눠줌-->
                    <br>

                    <div id="fifth">
                        <div class="emojiright">
                            <p class="ppnn1">BESPOKE 그랑데</p>
                            <p class="ppnn2">Bespoke Grande</p>
                        </div>
                        <div id="heart2">
                            <a href="#"><i class="far fa-heart" id="heart3"></i></a>
                        </div>
                    </div>

                    <p class="seconddetail">섬세하고 더 깨끗하게똑똑한 에코버블<br><br>
                                            세탁부터 탈수까지 알아서 AI 맞춤세탁</p>

                    <div class="productdetail">
                        <span>제품 브랜드</span>
                        <span>SAMSUNG</span>
                    </div>

                    <div class="productdetail2"> <!--영양정보를 담아주는 div 태그-->
                        <div class="boxone"> <!--영양 정보를 좌우로 반반 나눠주었으며, 왼쪽에 해당하는 div 태그-->
                            <ul>
                                <li>
                                    <span class="l">기준가</span>
                                    <span>3,108,000</span class="r">
                                </li>
                            </ul>
                        </div>

                        <div class="boxtwo"> <!--영양 정보를 좌우로 반반 나눠주었으며, 오른쪽에 해당하는 div 태그-->
                            <ul>
                                <li>
                                    <span class="l">할인가</span>
                                    <span>1,949,000</span class="r">
                                </li>
                            </ul>
                        </div>

                    </div>
                    <div class="jjpp">※ 교환 및 환불이 불가능합니다.</div><br><br><br>
                    <button class="custom-btn-b btn-9-b">구매</button>
    </section>


    <!-- /main -->

    <footer>


    </footer>


</body>

</html>