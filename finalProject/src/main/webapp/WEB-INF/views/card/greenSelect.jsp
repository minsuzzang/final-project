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
<link rel="stylesheet" href="/css/reset.css">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/media_query.css">
<link rel="stylesheet" href="/css/detail.css">
<link rel="stylesheet" href="/css/card.css">
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<!-- js -->
<script src="/lib/jquery-1.11.1.min.js"></script>
<script src="/lib/jquery.easing.1.3.min.js"></script>
<script src="/js/menuEffect.js"></script>
<script src="/js/mousecursor.js"></script>
<script src="/js/visual_slide.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>

<!-- 구글 폰트 불러오기 -->
<!-- rotobo(400/700/900), notosanskr(400/600/900) -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700;900&family=Roboto:wght@400;700;900&display=swap"
	rel="stylesheet">

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">

<!-- 제이쿼리 불러오기 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- 슬릭 슬라이더 불러오기 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
</head>

<body>

	<header>
		<!-- 헤더 비디오 -->
		<video class="vd" src="./videos/header.mp4" muted autoplay loop
			preload width="100%"></video>
		<!--로고삽입-->
		<h1 id="logo">
			<a class="a2" href="/index.html"><img src="images/logo.png"
				alt="로고"></a>
		</h1>



		<!--메뉴 버튼-->
		<h2 id="menu_btn">
			<span id="t_stick"></span> <span id="m_stick"></span> <span
				id="b_stick"></span>

			<!--메뉴-->
			<div id="menu_wrap">
				<nav id="main_nav">
					<h2 class="hidden">메인메뉴</h2>
					<ul id="menu">
						<li><a>기업 소개</a>
							<ul id="sub_menu">
								<li><a href="#">현대카드 소개</a></li>
								<li><a href="#">기업 문화</a></li>
								<li><a href="#">인사 철학</a></li>
							</ul></li>

						<li><a
							style="font-family: 'YouandiModernTR', sans-serif; font-weight: bold;">My
								Account</a>
							<ul id="sub_menu">
								<li><a href="#">내 정보</a></li>
								<li><a href="#">내 카드</a></li>
								<li><a href="#">내 등급</a></li>
								<li><a href="#">이용내역</a></li>
								<li><a href="#">마일리지</a></li>
							</ul></li>

						<li><a>카드</a>
							<ul id="sub_menu">
								<li><a href="#">카드 안내</a></li>
								<li><a href="#">카드 신청</a></li>
								<li><a href="#">카드 신청 조회</a></li>
							</ul></li>

						<li><a>혜택</a>
							<ul id="sub_menu">
								<li><a href="#">할인 혜택</a></li>
								<li><a href="#">적립 혜택</a></li>
								<li><a href="#">제휴 상품</a></li>
							</ul></li>

						<li><a>고객 지원</a>
							<ul id="sub_menu">
								<li><a href="#">공지사항</a></li>
								<li><a href="/userService.html">고객 문의</a></li>
								<li><a href="#"
									style="font-family: 'YouandiModernTR', sans-serif;">FAQ</a></li>
								<li><a href="#">카드 도난 • 분실신고</a></li>
							</ul></li>

					</ul>
				</nav>


				<!--SNS 아이콘 영역-->
				<div id="sns">
					<ul id="icon_list">
						<li><a href="#"><img src="images/icon_01.png"
								alt="인스타그램 바로가기"></a></li>
						<li><a href="#"><img src="images/icon_02.png"
								alt="페이스북 바로가기"></a></li>
						<li><a href="#"><img src="images/icon_03.png"
								alt="트위터 바로가기"></a></li>
						<li><a href="#"><img src="images/icon_04.png"
								alt="유투브 바로가기"></a></li>
					</ul>
				</div>
			</div>
	</header>

	<!-- main -->
	<br>
	<br>
	<br>


	<div class="left1">
		<div class="slider">
			<input type="radio" name="testimonial" id="t-1"> <input
				type="radio" name="testimonial" id="t-2"> <input
				type="radio" name="testimonial" id="t-3" checked> <input
				type="radio" name="testimonial" id="t-4"> <input
				type="radio" name="testimonial" id="t-5">
			<div class="testimonials">
				<label class="item" for="t-1">
					<p class="fff2">Design 4</p> <img
					src="./images/theGreen/theGreen1.png" alt="">
				</label> <label class="item" for="t-2">
					<p class="fff2">Design 5</p> <img
					src="./images/theGreen/theGreen2.png" alt="">
				</label> <label class="item" for="t-3">
					<p class="fff2">Design 1</p> <img
					src="./images/theGreen/theGreen3.png" alt="">
				</label> <label class="item" for="t-4">
					<p class="fff2">Design 2</p> <img
					src="./images/theGreen/theGreen4.png" alt="">
				</label> <label class="item" for="t-5">
					<p class="fff2">Design 3</p> <img
					src="./images/theGreen/theGreen5.png" alt="">
				</label>
			</div>
			<br />
			<div class="dots">
				<label for="t-1"></label> <label for="t-2"></label> <label for="t-3"></label>
				<label for="t-4"></label> <label for="t-5"></label>
			</div>
		</div>
	</div>
	<div class="right1">
		<select name="" id="">
			<option value="" selected disabled hidden>선택해주세요.</option>
			<option value="">디자인 1</option>
			<option value="">다자인 2</option>
			<option value="">디자인 3</option>
			<option value="">디자인 4</option>
			<option value="">디자인 5</option>
		</select><br>
		<br>
		<p class="fff1">영문이름</p>
		<br> <input type="text"><br>
		<br>
		<p class="fff1">카드받을주소</p>
		<br> <input type="text"> <br>
		<br>
		<br>
		<button>신청</button>
	</div>

	<!-- /main -->

	<footer> </footer>


</body>

</html>