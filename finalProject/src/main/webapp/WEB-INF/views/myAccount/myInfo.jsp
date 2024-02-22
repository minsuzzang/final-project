<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="/resources/css/password.css">
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
                <a href="myinfoEditForm.do">
                    <button class="custom-btn-b3 btn-9-b" >수정하기</button>
                </a>
                <a href="memberdelete.do">
                    <button class="custom-btn-b3 btn-9-b">회원탈퇴</button>

                </a>
               
            </div>
        </div>
    </div><br><br><br>
    <div class="right13">
        <div class="yhb3">
            <div id="board-list">
                <table class="board-table">
                    <tr>
                        <th scope="col" class="th-num">이름</th>
                        <td>${memberinfo.m_name}</td>
                    </tr>
                    <tr>
                        <th scope="col" class="th-num">영문이름</th>
                        <td><b>${memberinfo.m_english_first_name}</b> <b>${memberinfo.m_english_last_name}</b></td>
                    </tr>
                    <tr>
                        <th scope="col" class="th-num">이메일</th>
                        <td>${memberinfo.m_email}</td>
                    </tr>
                    <tr>
                        <th scope="col" class="th-num">비밀번호</th>
                        <td><input class="ininp" type="password" disabled value="${memberinfo.m_pwd}"></td>
                    </tr>
                    <tr>
                        <th scope="col" class="th-num">주소</th>
                        <td>${memberinfo.m_address}</td>
                    </tr>
                    <tr>
                        <th scope="col" class="th-num">마일리지</th>
                        <td>${memberinfo.m_mileage}</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    
    <br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br>
    <!-- /main -->

    <br><br><br><br><br><br>
 
    <!-- 푸터 -->
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
    <!-- /푸터 -->


</body>

</html>