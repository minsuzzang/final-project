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
    
    <div class="rl">
        <div class="left7">
            <p class="fff6"><img src="${product.p_brand}" alt=""><b>${product.p_name}</b></p><br>
            <img src="${product.p_file_path}" alt="상품사진">
        </div>
        <div class="right7">
            <p class="fff4">상품주문 완료</p><br>
            <p class="fff5">고객님의 품으로 배송이 시작됩니다.</p>
            <div class="dfjc">
                <img src="/resources/images/delivery.png" alt="">
            </div>
            <div class="dfjc2">
                <button class="custom-btn-b btn-9-b" onclick="location.href='/product/list.do'">돌아가기</button>
            </div>
        </div>
    </div>








    <!-- /main -->

    <footer>


    </footer>


</body>

</html>