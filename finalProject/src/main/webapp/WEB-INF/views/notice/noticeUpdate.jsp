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
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/media_query.css">
    <link rel="stylesheet" href="/css/detail.css">
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <!-- js -->
    <script src="/lib/jquery-1.11.1.min.js"></script>
    <script src="/lib/jquery.easing.1.3.min.js"></script>
    <script src="/js/visual_slide.js"></script>
    <script src="/js/menuEffect.js"></script>
    <script src="/js/mousecursor.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>


</head>

<body>

    <header>
        <!-- 헤더 비디오 -->
        <video src="/resources/videos/header.mp4" muted autoplay loop preload width="100%"></video>
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
    </header>

    <!-- main -->
    <div class="right">
        <form action="">
            <section class="notice">
                <div>
                    <p class="egft1">공지사항</p>
                    <p class="egft2">Announcement</p>
                </div>
                <br><br><br>
                <table class="board-table">
                    <tr>
                        <th width=20% class="text-center">Number</th>
                        <td width=30% class="text-center">#</td>
                        <th width=20% class="text-center">Views</th>
                        <td width=30% class="text-center">#</td>
                    </tr>
                    <tr>
                        <th width=20% class="text-center">Writer</th>
                        <td width=30% class="text-center">#</td>
                        <th width=20% class="text-center">Date Created</th>
                        <td width=30% class="text-center">#</td>
                    </tr>
                    <tr>
                        <th width=20% class="text-center">Title</th>
                        <td colspan="3" width=30% class="text-center" style="text-align: left;"><input class="ip1"
                                type="text" value="#"></td>
                    </tr>
                    <tr>
                    <tr>
                        <th width=20% class="text-center">Content</th>
                        <td colspan="4" class="text-left" valign="top" height="280">
                            <div class="text-left">
                                <textarea id="summernote" name="contents">#</textarea>
                            </div>
                            <script>
                                $('#summernote').summernote({
                                    placeholder: '내용을 입력해주세요',
                                    tabsize: 2,
                                    height: 190
                                });
                            </script>
                        </td>
                    </tr>
                </table>
                <button class="custom-btn-b btn-9-b" formaction="/announcementDetail.html">수정완료</button>
                <button class="custom-btn-r btn-9-r" formaction="/announcement.html">돌아가기</button>
            </section>
        </form>
    </div>
    <div class="left">
        <br><br><br><br><br>
        <p class="egft3">HyundaiCard</p><br>
        <p class="egft4">Click Card</p>
        <div>
            <figure class="slide1">
                <a href="/cardApplication.html">
                    <img class="imgg" src="/images/theBlack1.png">
                </a>
                <p class="egft3" style="color: black;">The Black</p>
            </figure>
            <figure class="slide1">
                <a href="/cardApplication.html">
                    <img class="imgg" src="/images/thePurple1.png">
                </a>
                <p class="egft3" style="color: rgb(95, 0, 95);">The Purple</p>
            </figure>
            <figure class="slide1">
                <a href="/cardApplication.html">
                    <img class="imgg" src="/images/theRed1.png">
                </a>
                <p class="egft3" style="color: rgb(187, 0, 0);">The Red</p>
            </figure>
            <figure class="slide1">
                <a href="/cardApplication.html">
                    <img class="imgg" src="/images/theGreen1.png">
                </a>
                <p class="egft3" style="color: green;">The Green</p>
            </figure>
            <figure class="slide1">
                <a href="/cardApplication.html">
                    <img class="imgg" src="/images/thePink1.png">
                </a>
                <p class="egft3" style="color: rgb(252, 71, 102);">The Pink</p>
            </figure>
        </div>
    </div>

    <!-- /main -->

    <footer>


    </footer>


</body>

</html>