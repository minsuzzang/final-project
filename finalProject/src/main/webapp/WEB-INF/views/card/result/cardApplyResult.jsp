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
    <link rel="stylesheet" href="/resources/css/popup.css">
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <!-- js -->
    <script src="/resources/lib/jquery-1.11.1.min.js"></script>
    <script src="/resources/lib/jquery.easing.1.3.min.js"></script>
    <script src="/resources/js/menuEffect.js"></script>
    <script src="/resources/js/mousecursor.js"></script>
    <script src="/resources/js/visual_slide.js"></script>
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
    <div class="tac">
	    <p class="fff4">카드 발급신청 완료</p><br>
	    <p class="fff5">승인을 기다려주세요.</p><br><br><br>
	    <p class="fff5">[ <b>the ${cd_color_upper}</b> ]</p><br><br>
    <button type="button" class="custom-btn-b btn-9-b" onclick="location.href='/'">홈으로</button>
    </div>
    <div class="dfjc3">
            <img class="imgggg" src="/resources/images/the${cd_color_upper}/the${cd_color_upper}${cd_design_num}.png" alt="">
            <img class="imgggg" src="/resources/images/the${cd_color_upper}/${cd_color_lower}b.png" alt="" style="margin-left: 50px;">
    </div>
    <br><br><br><br>
   

    <!-- /main -->

    <footer>


    </footer>


</body>

</html>