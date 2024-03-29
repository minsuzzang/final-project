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
        <video class="vd" src="/resources/videos/header.mp4" muted autoplay loop preload width="100%"></video>
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
    </header>

    <!-- main -->
    <br><br><br>
   
    <form action="">
        <div class="left2">
            <img class="dimg" src="/resources/images/thePurple/purpleBack.png" alt="">
        </div>
        <div class="right2">
            <br><br><br><br>
            <p class="fff3"><b>the Purple</b></p><br><br>
            <p class="fff1">취향에 따라 설계·사용하는 바우처 네트워크</p>
            <p class="fff1">항공 마일리지와 M포인트 중 선택 적립</p>
            <p class="fff1">기본 리워드에 추가로 제공되는 로열티 보너스</p><br><br><br>
                <button class="custom-btn-b btn-9-b" formaction="/card/design/purple">신청하기</button>
            <br><br><br><br>
            <div class="yhb">
                <p class="fff1">연회비 800,000</p><br>
                <p class="fff0">국내전용</p>
                <p class="fff0-1">기본연회비 200,000원 + 제휴연회비 600,000원</p>
                <p class="fff0">국내외겸용(VISA)</p>
                <p class="fff0-1">기본연회비 200,000원 + 제휴연회비 600,000원</p>
            </div>
        </div>
    </form>

    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>

    <!-- /main -->

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>


</body>

</html>