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
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <!-- js -->
    <script src="/resources/lib/jquery-1.11.1.min.js"></script>
    <script src="/resources/lib/jquery.easing.1.3.min.js"></script>
    <script src="/resources/js/visual_slide.js"></script>
    <script src="/resources/js/menuEffect.js"></script>
    <script src="/resources/js/mousecursor.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
	<%@ include file="/WEB-INF/views/common/alert.jsp"%>
</head>

<body>

    <header>
        <!-- 헤더 비디오 -->
        <video src="/resources/videos/header.mp4" muted autoplay loop preload width="100%"></video>
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
    </header>

    <!-- main -->
    <div class="right">
        <form action="/notice/edit.do" method="post">
            <section class="notice">
                <div>
                    <p class="egft1">공지사항</p>
                    <p class="egft2">Announcement</p>
                </div>
                <br><br><br>
                <table class="board-table">
                <input type="hidden" name="n_idx" value="${board.n_idx}">
                    <tr>
                        <th width=20% class="text-center">Number</th>
                        <td width=30% class="text-center">${board.n_idx}</td>
                        <th width=20% class="text-center">Views</th>
                        <td width=30% class="text-center">${board.n_views}</td>
                    </tr>
                    <tr>
                        <th width=20% class="text-center">Writer</th>
                        <td width=30% class="text-center">${board.m_name}</td>
                        <th width=20% class="text-center">Date Created</th>
                        <td width=30% class="text-center">${board.n_in_date}</td>
                    </tr>
                    <tr>
                        <th width=20% class="text-center">Title</th>
                        <td colspan="3" width=30% class="text-center" style="text-align: left;">
                        <input class="ip1" name="n_title" type="text" value="${board.n_title}" minlength="1" maxlength="30"></td>
                    </tr>
                    <tr>
                    <tr>
                        <th width=20% class="text-center">Content</th>
                        <td colspan="4" class="text-left" valign="top" height="280">
                            <div class="text-left">
                                <textarea id="summernote" name="n_content" minlength="1" maxlength="1000">${board.n_content}</textarea>
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
                <button class="custom-btn-b btn-9-b" type="submit" onclick="save()">수정완료</button>
                <button class="custom-btn-r btn-9-r" type="button" onclick="history.back()">돌아가기</button>
            </section>
        </form>
    </div>
    <div class="left">
        <br><br><br><br><br>
        <p class="egft3">HyundaiCard</p><br>
        <p class="egft4">Click Card</p>
        <div>
            <figure class="slide1">
                <a href="/card/cardApplyForm.do">
                    <img class="imgg" src="/resources/images/theBlack1.png">
                </a>
                <p class="egft3" style="color: black;">The Black</p>
            </figure>
            <figure class="slide1">
                <a href="/card/cardApplyForm.do">
                    <img class="imgg" src="/resources/images/thePurple1.png">
                </a>
                <p class="egft3" style="color: rgb(95, 0, 95);">The Purple</p>
            </figure>
            <figure class="slide1">
                <a href="/card/cardApplyForm.do">
                    <img class="imgg" src="/resources/images/theRed1.png">
                </a>
                <p class="egft3" style="color: rgb(187, 0, 0);">The Red</p>
            </figure>
            <figure class="slide1">
                <a href="/card/cardApplyForm.do">
                    <img class="imgg" src="/resources/images/theGreen1.png">
                </a>
                <p class="egft3" style="color: green;">The Green</p>
            </figure>
            <figure class="slide1">
                <a href="/card/cardApplyForm.do">
                    <img class="imgg" src="/resources/images/thePink1.png">
                </a>
                <p class="egft3" style="color: rgb(252, 71, 102);">The Pink</p>
            </figure>
        </div>
    </div>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <!-- /main -->

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>


</body>

</html>