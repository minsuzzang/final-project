<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


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
<link rel="stylesheet" href="/resources/css/table.css">

<!-- js -->
<script src="/resources/lib/jquery-1.11.1.min.js"></script>
<script src="/resources/lib/jquery.easing.1.3.min.js"></script>
<script src="/resources/js/visual_slide.js"></script>
<script src="/resources/js/menuEffect.js"></script>
<script src="/resources/js/mousecursor.js"></script>
</head>

<body>

	<header>
		<!-- 헤더 비디오 -->
		<video src="/resources/videos/header.mp4" muted autoplay loop preload
			width="100%"></video>
		<!--로고삽입-->
		<h1 id="logo">
			<a class="a2" href="/index.html"><img
				src="/resources/images/logo.png" alt="로고"></a>
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
							<li><a href="/aboutUs.html">현대카드 소개</a></li>
							<li><a href="/corporateCulture.html">기업 문화</a></li>
							<li><a href="/personnelPhilosophy.html">인사 철학</a></li>
						</ul></li>

					<li><a
						style="font-family: 'YouandiModernTR', sans-serif; font-weight: bold;">My
							Account</a>
						<ul id="sub_menu">
							<li><a href="/myInfo.html">내 정보</a></li>
							<li><a href="/myCard.html">내 카드</a></li>
							<li><a href="/myhistory.html">이용내역</a></li>
						</ul></li>

					<li><a>카드</a>
						<ul id="sub_menu">
							<li><a href="/cardInformation.html">카드 안내</a></li>
							<li><a href="/cardApplication.html">카드 신청</a></li>
							<li><a href="/cardInquiry.html">카드 신청 조회</a></li>
						</ul></li>

					<li><a>혜택</a>
						<ul id="sub_menu">
							<li><a href="/DiscountBenefits.html">할인 혜택</a></li>
							<li><a href="/AccumulatedBenefits.html">적립 혜택</a></li>
							<li><a href="/product.html">제휴 상품</a></li>
						</ul></li>

					<li><a>고객 지원</a>
						<ul id="sub_menu">
							<li><a href="/announcement.html">공지사항</a></li>
							<li><a href="/userService.html">고객 문의</a></li>
							<li><a href="/faq.html"
								style="font-family: 'YouandiModernTR', sans-serif;">FAQ</a></li>
							<li><a href="/cardLost.html">카드 도난 • 분실신고</a></li>
						</ul></li>

				</ul>
			</nav>


			<!--SNS 아이콘 영역-->
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
		</div>
	</header>

	<!-- main -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="dvdvdv">
		<div>
			<p class="egft1">이용내역</p>
			<p class="egft2">Usage History</p>
		</div>
		<br> <br> <br>
		<div id="board-list">
			<table class="board-table">

				<thead>
					<tr>
						<th scope="col" class="th-nnum">번호</th>
						<th scope="col" class="th-ttitle">상품</th>
						<th scope="col" class="th-nnum">구매자</th>
						<th scope="col" class="th-nnum">구매가격</th>
						<th scope="col" class="th-nnum">구매일자</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="purchase" items="${purchasesinfo}">
						<tr>
							<td>${purchase.ph_idx}</td>
							<td>${purchase.productinfo.p_name}</td>
							<!-- 각 구매에 해당하는 상품 이름 출력 -->
							<td>${memberinfo.m_name}</td>
							<td>${purchase.ph_total_price}</td>
							<td>${purchase.ph_in_date}</td>
						</tr>
					</c:forEach>
					
				</tbody>
			</table>
		</div>
		<div class="pagination dfjc">
			<a href="#">&laquo;</a> <a href="#">1</a> <a href="#">2</a> <a
				href="#">3</a> <a href="#">4</a> <a href="#">5</a> <a href="#">&raquo;</a>
		</div>
	</div>

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
			<li class="social-icon__item"><img src="/images/logo.png" alt="">
			</li>
		</ul>
		<br> <br>
		<p>2024 Final Project | JESS FOUR CARDS</p>
		<ul class="menu">
			<li class="menu__item"><a class="menu__link" href="/index.html">홈</a></li>
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