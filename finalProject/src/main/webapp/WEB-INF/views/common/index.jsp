<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<script>
	var alertMsg = '${alertMsg}';
	if (alertMsg) {
		alert(alertMsg);
	}
</script>

<head>
<meta charset="UTF-8">
<title>HYUNDAI CARD</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet" href="/resources/css/media_query.css">
<script src="/resources/lib/jquery-1.11.1.min.js"></script>
<script src="/resources/lib/jquery.easing.1.3.min.js"></script>
<script src="/resources/js/visual_slide.js"></script>
<script src="/resources/js/menuEffect.js"></script>
<script src="/resources/js/mousecursor.js"></script>
</head>

<body class="ofh">

	<header>
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
	</header>

	<div id="visual_wrap">
		<!--비주얼 버튼(공통영역)-->
		<div id="visual_btn">
			<div id="prev">
				<a href="#"> <span class="line"></span> <span id="prev_btn">Prev</span></a>
			</div>

			<div id="next">
				<a href="#"> <span id="next_btn">Next</span> <span class="line"></span></a>
			</div>
		</div>


		<!--비주얼 슬라이드 영역-->
		<ul id="visual_list">
			<!--블랙카드-->
			<li id="visual_black"><img
				src="/resources/images/visual_black_01.png" alt="블랙카드 사진"> <img
				src="/resources/images/visual_black_02.png" alt="블랙카드 사진"></li>

			<!--그린 카드-->
			<li id="visual_green"><img
				src="/resources/images/visual_green_01.png" alt="그린카드 사진"> <img
				src="/resources/images/visual_green_02.png" alt="그린카드 사진"> <img
				src="/resources/images/visual_green_03.png" alt="그린카드 사진"></li>

			<!--퍼플 카드-->
			<li id="visual_purple"><img
				src="/resources/images/visual_purple_01.png" alt="퍼플카드 사진"> <img
				src="/resources/images/visual_purple_02.png" alt="퍼플카드 사진"></li>

			<!--레드 카드-->
			<li id="visual_red"><img
				src="/resources/images/visual_red_01.png" alt="레드카드 사진"> <img
				src="/resources/images/visual_red_02.png" alt="레드카드 사진"></li>

		</ul>


		<!--텍스트 영역-->
		<ul id="text_list">
			<li class="txt_box_left"><span class="sub_tit">Invitation
					Only</span>
				<h1 class="tit">
					<a href="#">상위 0.05%를 위한<br>국내 최초 VVIP카드
					</a>
				</h1> <span class="txt">오직 9999명에게만 주어지는 한정혜택</span> <span
				class="more_btn"> <a href="#">
						<p>자세히 보기</p>
				</a>
			</span></li>



			<li class="txt_box_left"><span class="sub_tit">My First
					Luxury</span>
				<h1 class="tit">
					<a href="#">갖고 싶지만, 존재하지 않았던<br>Entry 럭셔리카드
					</a>
				</h1> <span class="txt">여행, 고메, 해외쇼핑 영역 결제 시 5% M포인트 특별 적립</span> <span
				class="more_btn"> <a href="#">
						<p>자세히 보기</p>
				</a>
			</span></li>

			<li class="txt_box_right"><span class="sub_tit">Qualified
					Only</span>
				<h1 class="tit">
					<a href="#">프리미엄 바우처와<br>마일리지 / 포인트 적립 혜택
					</a>
				</h1> <span class="txt">대한항공형 / 아시아나형 / M포인트형<br>마일리지와 포인트 중
					선택하여 적립/사용 가능
			</span> <span class="more_btn"> <a href="#">
						<p>자세히 보기</p>
				</a>
			</span></li>


			<li class="txt_box_right"><span class="sub_tit">My Hot
					Luxury</span>
				<h1 class="tit">
					<a href="#">온라인 전용 신청으로<br>더 핫하게 돌아온 the Red
					</a>
				</h1> <span class="txt">쓰면 쓸수록 커지는 M포인트</span> <span class="more_btn">
					<a href="#">
						<p>자세히 보기</p>
				</a>
			</span></li>
		</ul>


		<!--페이저 버튼(공통영역)-->
		<ul id="visual_pager">
			<li><a href="#" class="active">01</a></li>
			<li><a href="#">02</a></li>
			<li><a href="#">03</a></li>
			<li><a href="#">04</a></li>
		</ul>
	</div>

	<!--푸터 영역-->
	<footer> </footer>

</body>

</html>