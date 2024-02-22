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
<link rel="stylesheet" href="/resources/css/password.css">
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<!-- js -->
<script src="/resources/lib/jquery-1.11.1.min.js"></script>
<script src="/resources/lib/jquery.easing.1.3.min.js"></script>
<script src="/resources/js/menuEffect.js"></script>
<script src="/resources/js/mousecursor.js"></script>
<script src="/resources/js/visual_slide.js"></script>
<script src="/resources/js/password.js"></script>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

<body style="a {text-decoration-line: none;">

	<header>
		<!-- 헤더 비디오 -->
		<video src="/resources/videos/header.mp4" muted autoplay loop preload
			width="100%"></video>
		<!--로고삽입-->
		<h1 id="logo">
			<a class="a2" href="/"><img src="/resources/images/logo.png"
				alt="로고"></a>
		</h1>

		<!--메뉴 버튼-->
		<h2 id="menu_btn">
			<span id="t_stick"></span> <span id="m_stick"></span> <span
				id="b_stick"></span>
		</h2>

		<!--메뉴-->
		<div id="menu_wrap">
			<nav id="main_nav">
				<h2 class="hidden">메인메뉴</h2>
				<ul id="menu">
					<li><a>기업 소개</a>
						<ul id="sub_menu">
							<li><a href="/introduce/hyundaiCard.do">현대카드 소개</a></li>
							<li><a href="/introduce/culture.do">기업 문화</a></li>
							<li><a href="/introduce/philosophy.do">인사 철학</a></li>
						</ul></li>

					<li><a
						style="font-family: 'YouandiModernTR', sans-serif; font-weight: bold;">My
							Account</a>
						<ul id="sub_menu">
							<li><a href="/member/myinfoForm.do">내 정보</a></li>
							<li><a href="/member/MyCardForm.do">내 카드</a></li>
							<li><a href="/member/UsageHistoryForm.do">이용내역</a></li>
							<li><a href="#">마일리지</a></li>
						</ul></li>

					<li><a>카드</a>
						<ul id="sub_menu">
							<li><a href="/card/cardGuide.do">카드 안내</a></li>
							<li><a href="/card/cardApplyForm.do">카드 신청</a></li>
							<li><a href="/card/cardInfo">카드 신청 조회</a></li>
						</ul></li>

					<li><a>혜택</a>
						<ul id="sub_menu">
							<li><a href="/product/discount.do">할인 혜택</a></li>
							<li><a href="/product/accumulate.do">적립 혜택</a></li>
							<li><a href="/product/list.do">제휴 상품</a></li>
						</ul></li>

					<li><a>고객 지원</a>
						<ul id="sub_menu">
							<li><a href="/notice/list.do">공지사항</a></li>
							<li><a href="/customerboard/list.do">고객 문의</a></li>
							<li><a href="/customerboard/FAQ.do"
								style="font-family: 'YouandiModernTR', sans-serif;">FAQ</a></li>
							<li><a href="/card/lost">카드 도난 • 분실신고</a></li>
						</ul></li>

				</ul>
			</nav>


			<!--SNS 아이콘 영역-->
			<div id="sns">
				<ul id="icon_list">
					<li><a href="https://www.instagram.com"><img
							src="/resources/images/icon_01.png" alt="인스타그램 바로가기"></a></li>
					<li><a href="https://www.facebook.com"><img
							src="/resources/images/icon_02.png" alt="페이스북 바로가기"></a></li>
					<li><a href="https://www.twitter.com"><img
							src="/resources/images/icon_03.png" alt="트위터 바로가기"></a></li>
					<li><a href="https://www.youtube.com"><img
							src="/resources/images/icon_04.png" alt="유투브 바로가기"></a></li>
				</ul>
			</div>
		</div>
	</header>
	<br>
	<br>
	<br>
	<br>
	<!-- main -->

	<p class="egft1">My Card</p>
	<p class="egft2"></p>
	</div>
	<br>
	<br>
	<br>
	<div class="right12">
		<div class="yhb3">
			<div id="board-list">
					<table class="board-table">
						<tr>
							<th scope="col" class="th-num">영문이름</th>
							<td>${memberinfo.m_english_first_name}</td>
							<td>${memberinfo.m_english_last_name}</td>
						</tr>
						<tr>
							<th scope="col" class="th-num">카드번호</th>
							<td>${cardDetail.cd_number}</td>
						</tr>
						<tr>
							<th scope="col" class="th-num">유효기간</th>
							<td>${cardDetail.cd_expired_date}</td>
						</tr>
						<tr>
							<th scope="col" class="th-num">CVC</th>
							<td>${cardDetail.cd_cvc}</td>
						</tr>
						<tr>
							<th scope="col" class="th-num">비밀번호</th>
							<td>${cardDetail.cd_pwd}</td>
						</tr>
					</table>

			</div>
		</div>
	</div>
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
	<br>
	<br>
	<!-- /main -->
	<footer> </footer>
</body>
</html>