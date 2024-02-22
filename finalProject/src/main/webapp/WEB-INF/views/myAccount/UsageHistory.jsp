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
        <video src="/resources/videos/header.mp4" muted autoplay loop preload width="100%"></video>
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
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
							<th>${purchase.productinfo.p_name}</th> <!-- 각 구매에 해당하는 상품 이름 출력 -->
							<td>${memberinfo.m_name}</td>
							<td>${purchase.ph_total_price}</td> <!-- 구매 가격 출력 -->

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
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	<!-- /푸터 -->


</body>

</html>