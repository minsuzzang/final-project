<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>HYUNDAI CARD</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- css&font -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/media_query.css">
    <link rel="stylesheet" href="/resources/css/detail.css">
    <link rel="stylesheet" href="/resources/css/card.css">
    <link rel="stylesheet" href="/resources/css/popup.css">
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <!-- js -->
    <script src="/resources/lib/jquery-1.11.1.min.js"></script>
    <script src="/resources/lib/jquery.easing.1.3.min.js"></script>
    <script src="/resources/js/menuEffect.js"></script>
    <script src="/resources/js/mousecursor.js"></script>
    <script src="/resources/js/visual_slide.js"></script>
    <script src="/resources/js/password.js"></script>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body style="a {text-decoration-line: none;}">

    <header>
        <!-- 헤더 비디오 -->
        <video src="/resources/videos/header.mp4" muted autoplay loop preload width="100%"></video>
       	<%@ include file="/WEB-INF/views/common/header.jsp"%>  
    </header><br><br><br><br>
    <!-- main -->

<p class="egft1">My Info</p>
    <p class="egft2"></p>

    <div class="left13">
        <div class="dfjc6">
            <div class="shop2">
                <figure>
                    <img src="/resources/images/myinfo.png">
                </figure>
                <a href="javascript:void(0);" onclick="frmChk()">
                    <button type="submit" class="custom-btn-b3 btn-9-b">수정완료</button>
                </a>
                  <a href="/member/myinfoForm.do">
                    <button class="custom-btn-b3 btn-9-b">돌아가기</button>
                </a>
            </div>
        </div>
    </div><br><br><br>
    	 <form action="myinfoEdit.do" id="form" name="form" method="post">
    <div class="right13">
        <div class="yhb3">
            <div id="board-list">
                <table class="board-table">
                    <tr>
                        <th scope="col" class="th-num">이름</th>
                        <td><input type="text" name="m_name" style="width: 30%; background-color: rgb(239, 239, 239);" value="${memberinfo.m_name}"></td>
                    </tr>
                    <tr>
                        <th scope="col" class="th-num">영문이름</th>
                        <td>
                            <input type="text" name="m_english_first_name" style="width: 30%; background-color: rgb(239, 239, 239);" value="${memberinfo.m_english_first_name}">
                            <input type="text" name="m_english_last_name" style="width: 30%; background-color: rgb(239, 239, 239);" value="${memberinfo.m_english_last_name}">
                        </td>
                    </tr>
                    <tr>
                        <th scope="col" class="th-num">이메일</th>
                        <td><input type="text" name="m_email" style="width: 50%; background-color: rgb(239, 239, 239);" value="${memberinfo.m_email}"></td>
                    </tr>
                    <tr>
                        <th scope="col" class="th-num">비밀번호</th>
                        <td><input type="password" name="m_pwd" style="width: 50%; background-color: rgb(239, 239, 239);" value="${memberinfo.m_pwd}" disabled></td>
                    </tr>
                    <tr>
                        <th scope="col" class="th-num">주소</th>
                        <td><input type="text" name="m_address" style="width: 70%; background-color: rgb(239, 239, 239);" value="${memberinfo.m_address}"></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>     
</form>
    <br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br>
    <!-- /main -->

    <br><br><br><br><br><br>

    <!-- 푸터 -->
	<footer>
		
	</footer>
    <!-- /푸터 -->
<script>
function frmChk(){
	document.form.submit();
}
</script>
</body>
</html>