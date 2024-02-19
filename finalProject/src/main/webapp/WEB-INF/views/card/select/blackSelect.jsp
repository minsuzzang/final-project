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
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet" href="/resources/css/media_query.css">
<link rel="stylesheet" href="/resources/css/detail.css">
<link rel="stylesheet" href="/resources/css/card.css">
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<!-- js -->
<script src="/resources/lib/jquery-1.11.1.min.js"></script>
<script src="/resources/lib/jquery.easing.1.3.min.js"></script>
<script src="/resources/js/menuEffect.js"></script>
<script src="/resources/js/mousecursor.js"></script>
<script src="/resources/js/visual_slide.js"></script>
<script src="/resources/js/card/cardApply.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/resources/js/card/mapAPI.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>

</head>

<body>

	<header>
        <!-- 헤더 비디오 -->
        <video class="vd" src="/resources/videos/header.mp4" muted autoplay loop preload width="100%"></video>
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
	</header>

	<!-- main -->
	<br>
	<br>
	<br>


	<div class="left1">
		<div class="slider">
			<input type="radio" name="testimonial" id="t-3" value="design1" checked>
			<div class="testimonials">
				<label class="item" for="t-3">
					<p class="fff2">Design 1</p> <img
					src="/resources/images/theBlack/theBlack1.png" alt="" onclick="radioCheck('t-3')">
				</label>
			</div>
			<br />
			<div class="dots">
				<label for="t-3"></label>
			</div>
		</div>
	</div>
	<div class="right1">
		<br>
		<br>
		<p class="egft1">카드 신청</p>
		<br>
		<br>
		<br>
		<div class="yhb2">
			<div class="dv">
                <input class="ipp" type="text" name="englishFirstName" required>
                <label class="lb">English First Name</label>
                <span class="sp"></span>
            </div>
            <div class="dv">
                <input class="ipp" type="text" name="englishLastName" required>
                <label class="lb">English Last Name</label>
                <span class="sp"></span>
            </div>
            <div class="dv">
                <input class="ipp" type="text" id="address_kakao" name="address" readonly placeholder="Address" required>
                <span class="sp"></span>
            </div>
            
            <!-- 상세주소 입력칸 -->
            <div class="dv">
                <input class="ipp" type="text" name="address_detail" required>
                <label class="lb">Detailed Address</label>
                <span class="sp"></span>
            </div>
            
            
            <br><br><br>
            <button class="custom-btn-b btn-9-b" id="custom-btn-b">신청</button>
		</div>
	</div>

	<!-- /main -->
	
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>


</body>

</html>