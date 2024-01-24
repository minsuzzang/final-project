<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="/resources/css/login.css">
<script src="/resources/lib/jquery-1.11.1.min.js"></script>
<script src="/resources/lib/jquery.easing.1.3.min.js"></script>
<script src="/resources/js/visual_slide.js"></script>
<script src="/resources/js/menuEffect.js"></script>
<script src="/resources/js/mousecursor.js"></script>
<script src="/resources/js/login.js"></script>
<script src="/resources/js/include.js"></script>
	
<!-- Sweetalert2 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
	<script>
		/* const msg = "로그인 되었습니다."; */
		const msg='<%= request.getAttribute("msg") %>';
		const status='<%= request.getAttribute("status") %>';
		
		if(msg !== "null" && status !== "null") {
			$(document).ready(function() {
				alertFunc(msg, status);
			})
		}
	</script>
</head>