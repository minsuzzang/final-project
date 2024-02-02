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
    <link rel="stylesheet" href="/resources/css/table.css">
    <link rel="stylesheet" href="/resources/css/popup.css">
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <!-- js -->
    <script src="/resources/lib/jquery-1.11.1.min.js"></script>
    <script src="/resources/lib/jquery.easing.1.3.min.js"></script>
    <script src="/resources/js/menuEffect.js"></script>
    <script src="/resources/js/mousecursor.js"></script>
    <script src="/resources/js/visual_slide.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
    <!-- <script src="http://s1.daumcdn.net/svc/original/U03/cssjs/jquery/jquery-1.8.3.min.js"></script> -->
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
            <p class="egft1">카드신청 승인</p>
            <p class="egft2">CardApplication Approval</p>
        </div>
        <br><br><br>

        <div id="board-list">
            <table class="board-table">
                <thead>
                    <tr>
                        <th scope="col" class="th-num tdtd">번호</th>
                        <th scope="col" class="th-num tdtd">신청자</th>
                        <th scope="col" class="th-num tdtd">이메일</th>
                        <th scope="col" class="th-num tdtd">카드</th>
                        <th scope="col" class="th-num tdtd">승인여부</th>
                        <th scope="col" class="th-num tdtd">상세정보</th>
                    </tr>
                </thead>
                <tbody class="ttbb">
                    <tr>
                        <td style="padding: 10px 0;">1</td>
                        <td>손민수</td>
                        <td>sexyson@naver.com</td>
                        <td>액션가면카드</td>
                        <td>승인완료</td>
                        <td>
                            <a href="#popupA" class="custom-btn-b btn-9-b jbjbj"
                                style="text-decoration-line: none;">정보보기</a>
                        </td>
                    </tr>
                    <!-- Modal -->

                    <div id="popupA" class="layer">
                        <div class="box">
                            <a href="#" class="close" style="font-size: 30px;">x</a>
                            <div class="left10 yhbb">
                                <img class="imgg12" src="/resources/images/theBlack/theBlack1.png" alt="">
                            </div>
                            <div class="right10 yhbb">
                                <img src="/resources/images/logo2.png" alt="" style="width: 30%;"><br><br><br>
                                <p class="fff3"><b>카드정보</b></p><br>
                                <pre class="fff1">        카 드 : <b>the Black</b></pre>
                                <pre class="fff1">    디 자 인 : <b>디자인 1</b></pre><br><br>
                                <p class="fff3"><b>회원정보</b></p><br>
                                <pre class="fff1">        성 함 : <b>손민수</b></pre>
                                <pre class="fff1">        주 소 : <b>안양역 1번출구 58번째 계단</b></pre>
                                <pre class="fff1">    이 메 일 : <b>sexyson@naver.com</b></pre>
                                <pre class="fff1">영 문 이 름 : <b>Sexy Son</b></pre>
                                <pre class="fff1">전 화 번 호 : <b>010-6969-7474</b></pre>
                            </div>
                            <div>
                                <a href="#" class="custom-btn-r btn-9-b jbjb fr"
                                    style="text-decoration-line: none;">거절</a>
                                <a href="#" class="custom-btn-b btn-9-b jbjb fr"
                                    style="text-decoration-line: none;">승인</a>
                            </div>
                        </div>
                    </div>

                    <!-- Modal -->
                </tbody>
            </table>
        </div>
    </section>

    <!-- /main -->

    <footer>


    </footer>


</body>

</html>