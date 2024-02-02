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
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/media_query.css">
    <link rel="stylesheet" href="/resources/css/detail.css">
    <link rel="stylesheet" href="/resources/css/card.css">
    <link rel="stylesheet" href="/resources/css/admin.css">
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <!-- js -->
    <script src="/resources/lib/jquery-1.11.1.min.js"></script>
    <script src="/resources/lib/jquery.easing.1.3.min.js"></script>
    <script src="/resources/js/menuEffect.js"></script>
    <script src="/resources/js/mousecursor.js"></script>
    <script src="/resources/js/visual_slide.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>

</head>

<body>

    <header>
        <!-- 헤더 비디오 -->
        <video class="vd" src="/resources/videos/header.mp4" muted autoplay loop preload width="100%"></video>
        <%@ include file="/WEB-INF/views/common/header.jsp"%>
    </header>

    <!-- main -->
    <br><br><br>

    <section class="notice">
        <div>
            <p class="egft1">관리자 페이지</p>
            <p class="egft2">Admin Page</p>
        </div>
        <br><br><br>
        
        <div id="board-list">
            <table class="board-table">
                <thead>
                    <tr>
                        <th scope="col" class="th-title" style="font-size: 30px; font-weight: bold;">고객문의 답변</th>
                        <th scope="col" class="th-title" style="font-size: 30px; font-weight: bold;">카드신청 승인</th>
                    </tr>
                </thead>
                <tbody class="ttbb">
                    <tr>
                        <td onclick="location.href='/customerboard/list.do'">
                            <img src="/resources/images/customerBoard.png" alt="" style="width: 50%;">
                        </td>
                        <td onclick="location.href='/admin/approveList.do'">
                            <img src="/resources/images/cardApprove.png" alt="" style="width: 50%;">
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </section>
    

    <!-- /main -->

    <footer>


    </footer>


</body>

</html>