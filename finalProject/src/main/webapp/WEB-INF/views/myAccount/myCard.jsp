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
        <video src="/resources/videos/header.mp4" muted autoplay loop preload width="100%"></video>
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
    </header><br><br><br><br>
    <!-- main -->

	  <p class="egft1">My Card</p>
    <p class="egft2"></p>

    <div class="left13">
        <div class="dfjc5">
            <div class="shop2">
                <p class="egft3-1">Card 1</p>
                <figure>
                  <a href="#"><img
						class="imgggg" src="/resources/images/the${card.cd_color}/the${card.cd_color}${card.cd_design}.png"></a>
                </figure>
            </div>
        </div>
    </div><br><br><br>
    <div class="right13">
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
							<td>${card.cd_number}</td>
						</tr>
						<tr>
							<th scope="col" class="th-num">유효기간</th>
							<td>${card.cd_expired_date}</td>
						</tr>
						<tr>
							<th scope="col" class="th-num">CVC</th>
							<td>${card.cd_cvc}</td>
						</tr>
						<tr>
							<th scope="col" class="th-num">비밀번호</th>
							<td>${card.cd_pwd}</td>
						</tr>
					</table>


            </div>
        </div>
    </div>
    <div class="bbbtn">
        <a href="/member/MyCardForm.do">
            <button class="custom-btn-b3 btn-9-b">돌아가기</button>
        </a>
    </div>
    <br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br>
	<!-- /main -->

	<footer>
		<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	</footer>

</body>
</html>