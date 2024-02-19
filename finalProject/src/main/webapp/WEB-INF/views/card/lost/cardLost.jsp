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
	<div class="tac">
		<p class="fff4">카드 도난 • 분실신고</p>
		<p class="fff5">Report Theft • Loss Of Card</p>
	</div>

	<div class="dvdv">
		<p class="fff5">신고하실 카드를 선택해주세요.</p>
		<br>
		<div class="dfjc4">

			<c:forEach var="card" items="${cards}">
				<img class="imgg14" src="/resources/images/the${card.cd_color}/the${card.cd_color}${card.cd_design}.png"
					alt="" >
				<a href="/card/lost/${card.cd_idx}">
					<button class="custom-btn-r btn-9-r" formaction="/userService.html">신고</button>
				</a>
			</c:forEach>

		</div>
	</div>
	<br>
	<br>
	<br>


	<!-- /main -->
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>


</body>

</html>