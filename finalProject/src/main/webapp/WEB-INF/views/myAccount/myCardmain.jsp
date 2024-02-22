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
						class="imgggg" src="/resources/images/the${row.cd_color}/the${row.cd_color}${row.cd_design}.png"></a>
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
	<footer>
		<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	</footer>
	<!-- /푸터 -->
</body>
</html>