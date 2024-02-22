<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="/resources/css/popup.css">
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<!-- js -->
<script src="/resources/lib/jquery-1.11.1.min.js"></script>
<script src="/resources/lib/jquery.easing.1.3.min.js"></script>
<script src="/resources/js/visual_slide.js"></script>
<script src="/resources/js/menuEffect.js"></script>
<script src="/resources/js/mousecursor.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
</head>
<body>

	<header> </header>

	<!-- main -->
	<br>
	<br>
	<br>
	<p class="egft1">내카드</p>
	<p class="egft2">My Card Info</p>
	<div class="dfjc">
		<c:forEach var="row" items="${cards}" varStatus="status">
			<div class="shop">
				<p class="egft3-1">Card ${status.index + 1}</p>
				<figure>
					<a href="/member/MyCardinfoForm.do?idx=${row.cd_idx}"><img
						class="imgggg" src="/resources/images/theBlack/theBlack1.png"></a>
				</figure>
			</div>
		</c:forEach>

	</div>

	<br>
	<br>
	<br>
	<br>



	<!-- /main -->

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<!-- 푸터 -->
	<footer class="footer">
		<!-- top버튼 -->
		<button onclick="backToTop()" id="btn-back-to-top" title="위로 가기">Top</button>

		<div class="waves">
			<div class="wave" id="wave1"></div>
			<div class="wave" id="wave2"></div>
			<div class="wave" id="wave3"></div>
			<div class="wave" id="wave4"></div>
		</div>
		<ul class="social-icon">
			<li class="social-icon__item"><img
				src="/resources/images/logo.png" alt=""></li>
		</ul>
		<br>
		<br>
		<p>2024 Final Project | JESS FOUR CARDS</p>
		<ul class="menu">
			<li class="menu__item"><a class="menu__link" href="/">홈</a></li>
			<li class="menu__item"><a class="menu__link"
				href="/aboutUs.html">기업소개</a></li>
			<li class="menu__item"><a class="menu__link"
				href="/corporateCulture.html">기업문화</a></li>
			<li class="menu__item"><a class="menu__link"
				href="/personnelPhilosophy.html">인사철학</a></li>
			<li class="menu__item"><a class="menu__link"
				href="/userService.html">고객센터</a></li>

		</ul>
		<div id="sns">
			<ul id="icon_list">
				<li><a href="#"><img src="/resources/images/icon_01.png"
						alt="인스타그램 바로가기"></a></li>
				<li><a href="#"><img src="/resources/images/icon_02.png"
						alt="페이스북 바로가기"></a></li>
				<li><a href="#"><img src="/resources/images/icon_03.png"
						alt="트위터 바로가기"></a></li>
				<li><a href="#"><img src="/resources/images/icon_04.png"
						alt="유투브 바로가기"></a></li>
			</ul>
		</div>
	</footer>
	<!-- /푸터 -->


</body>

</html>