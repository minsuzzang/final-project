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
    <p class="egft2">
        Affiliate Product</p><br><br><br><br><br><br><br><br>
    <div class="products">
        <div class="product-list">

            <div class="product">
                <div class="imgBox">
                    <a href="/productDetail.html"><img src="/resources/images/product/samsung1.png"></a>
                </div>
                <div class="textBox">
                    <p class="textBox__name"><img src="/resources/images/product/samsungLogo1.png" alt=""></p><br><br>
                    <p class="textBox__price">기준가 3,108,000</p>
                    <p class="textBox__price">할인가 1,949,000</p>
                </div>
                <h3 class="pname">BESPOKE 그랑데</h3>
            </div>



            <div class="product">
                <div class="imgBox">
                    <a href="/productDetail.html"><img src="/resources/images/product/samsung2.png"></a>
                </div>
                <div class="textBox">
                    <p class="textBox__name"><img src="/resources/images/product/samsungLogo1.png" alt=""></p><br><br>
                    <p class="textBox__price">기준가 590,000</p>
                    <p class="textBox__price">할인가 429,000</p>
                </div>
                <h3 class="pname">BESPOKE 큐커 멀티</h3>
            </div>


            <div class="product">
                <div class="imgBox">
                    <a href="/productDetail.html"><img src="/resources/images/product/samsung3.png"></a>
                </div>
                <div class="textBox">
                    <p class="textBox__name"><img src="/resources/images/product/samsungLogo1.png" alt=""></p><br><br>
                    <p class="textBox__price">기준가 3,240,700</p>
                    <p class="textBox__price">할인가 2,040,000</p>
                </div>
                <h3 class="pname">BESPOKE 냉장고</h3>
            </div>


            <div class="product">
                <div class="imgBox">
                    <a href="/productDetail.html"><img src="/resources/images/product/samsung4.png"></a>
                </div>
                <div class="textBox">
                    <p class="textBox__name"><img src="/resources/images/product/samsungLogo1.png" alt=""></p><br><br>
                    <p class="textBox__price">기준가 2,640,000</p>
                    <p class="textBox__price">할인가 1,699,000</p>
                </div>
                <h3 class="pname">에어컨 Q9000</h3>
            </div>


            <div class="product">
                <div class="imgBox">
                    <a href="/productDetail.html"><img src="/resources/images/product/lg1.png"></a>
                </div>
                <div class="textBox">
                    <p class="textBox__name"><img src="/resources/images/product/lgLogo1.png" alt=""></p><br><br>
                    <p class="textBox__price">기준가 3,290,000</p>
                    <p class="textBox__price">할인가 2,340,000</p>
                </div>
                <h3 class="pname">울트라 HD TV</h3>
            </div>


            <div class="product">
                <div class="imgBox">
                    <a href="/productDetail.html"><img src="/resources/images/product/lg2.png"></a>
                </div>
                <div class="textBox">
                    <p class="textBox__name"><img src="/resources/images/product/lgLogo1.png" alt=""></p><br><br>
                    <p class="textBox__price">기준가 3,930,000</p>
                    <p class="textBox__price">할인가 2,800,000</p>
                </div>
                <h3 class="pname">트롬 오브제컬렉션</h3>
            </div>


            <div class="product">
                <div class="imgBox">
                    <a href="/productDetail.html"><img src="/resources/images/product/lg3.png"></a>
                </div>
                <div class="textBox">
                    <p class="textBox__name"><img src="/resources/images/product/lgLogo1.png" alt=""></p><br><br>
                    <p class="textBox__price">기준가 4,990,000</p>
                    <p class="textBox__price">할인가 3,690,000</p>
                </div>
                <h3 class="pname">그램 Fold</h3>
            </div>


            <div class="product">
                <div class="imgBox">
                    <a href="/productDetail.html"><img src="/resources/images/product/lg4.png"></a>
                </div>
                <div class="textBox">
                    <p class="textBox__name"><img src="/resources/images/product/lgLogo1.png" alt=""></p><br><br>
                    <p class="textBox__price">기준가 6,660,000</p>
                    <p class="textBox__price">할인가 6,000,000</p>
                </div>
                <h3 class="pname">디오스 오브제컬렉션</h3>
            </div>
        </div>
    </div>


    <!-- /main -->

    <footer>


    </footer>


</body>

</html>