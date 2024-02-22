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
<link rel="stylesheet" href="/resources/css/popup.css">
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
        <video class="vd" src="/resources/videos/header.mp4" muted autoplay loop preload width="100%"></video>
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
    </header><br><br><br><br>
    <!-- main -->
	<p class="egft1">카드 도난 • 분실신고</p>
	<p class="egft2">Report Theft • Loss Of Card</p>
	<div class="dvdv">
		<div class="l1l1">
			<div class="dvdv">
				<ol class="ool">
					<li class="lli"><span class="sspan">현대카드 도난 및 분실</span><br>
					<br>
						<p class="pp">
							<br>
							<br> <b style="font-size: 25px;"> 누구보다 삐르게 신고하세요!<br>
							<br>
							</b><br>
							<br> • 분실한 신용카드 회사 중 한 곳에 분실신고<br>
							<br> • 접수 카드사에 분실한 타사 카드도 분실신고 요청<br>
							<br> • 신고 요청을 받은 카드사는 분실 신고가 정상 접수되었음을<br> 문자메시지를 통해 고지<br>
							<br>
						</p></li>
				</ol>
			</div>
		</div>
		<div class="r1r1">
			<img src="/resources/images/hdch6.png" alt="" style="width: 70%;">
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
	<hr>
	<br>
	<div class="dvdv">
		<div class="l1l11">
			<div class="dvdv">
				<ol class="ool">
					<span class="sspan">the <b>${cardDTO.cd_color}</b></span>
					<br>
					<br>
					<br>
					<br>
					<li class="lli"><span class="sssspan">영문이름 : <b>${memberDTO.m_english_first_name}
								${memberDTO.m_english_last_name}</b></span><br></li>
					<li class="lli"><span class="sssspan">카드번호 : <b>${cardDTO.cd_number}</b></span><br>
					</li>
					<li class="lli"><span class="sssspan">유효기간 : <b>${cardDTO.cd_expired_date}</b></span><br>
					</li>
					<li class="lli"><span class="sssspan">CVC : <b>${cardDTO.cd_cvc}</b></span><br>
					</li>
				</ol>
			</div>
		</div>
		<div class="r1r11">
			<div class="dfjc">
				<img class="imgg999"
					src="/resources/images/the${cardDTO.cd_color}/the${cardDTO.cd_color}${cardDTO.cd_design}.png"
					alt="">
				<form id="reportForm" action="/card/report/${cardDTO.cd_idx}"
					method="GET">
					<button class="custom-btn-r btn-9-r" onclick="submitForm()">도난
						및 분실신고</button>
				</form>
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
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- /main -->

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>


</body>

<script>
	function submitForm() {
		if (confirm('도난 및 분실신고를 하시겠습니까?')) {
			document.getElementById('reportForm').submit();
		} else {
			alert('취소 되었습니다.');
		}
	}
</script>

</html>