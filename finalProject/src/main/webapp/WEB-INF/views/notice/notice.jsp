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
    <link rel="stylesheet" href="/resources/css/table.css">
    <!-- js -->
    <script src="/resources/lib/jquery-1.11.1.min.js"></script>
    <script src="/resources/lib/jquery.easing.1.3.min.js"></script>
    <script src="/resources/js/visual_slide.js"></script>
    <script src="/resources/js/menuEffect.js"></script>
    <script src="/resources/js/mousecursor.js"></script>
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
        <section class="notice">
            <div>
                <p class="egft1">공지사항</p>
                <p class="egft2">Announcement</p>
            </div>
            <br><br><br>
            <div id="board-search">
                <div class="search-window">
                    <form action="/notice/list.do" method="get">
                        <div class="search-wrap">
                            <input id="search" type="search" name="searchText" placeholder="검색어를 입력해주세요." value="">
                            <button type="submit" class="btn btn-dark">Search</button>
                        </div>
                    </form>
                </div>
            </div>
            <div id="board-list">
                <table class="board-table">
                    <thead>
                        <tr>
                            <th scope="col" class="th-num">Number</th>
                            <th scope="col" class="th-title">Title</th>
                            <th scope="col" class="th-num">Writer</th>
                            <th scope="col" class="th-num">Views</th>
                        </tr>
                    </thead>
                    <tbody>
						<c:choose>
							<c:when test="${empty list}">
								<tr>
									<td colspan="4">
										<h3 class="text-center">등록된 글이 없습니다.</h3>
									</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="item" items="${list}">
									<tr onclick="location.href='/notice/detail.do?idx='+${item.n_idx}">
										<td>${row}</td>
										<th>${item.n_title}</th>
										<td>${item.m_name}</td>
										<td>${item.n_views}</td>
									</tr>
									<c:set var="row" value="${row-1}"/>
								</c:forEach>
							</c:otherwise>
						</c:choose>
                    </tbody>
                </table>
            </div>
            <a href="enrollForm.do">
            	<c:if test="${sessionScope.m_type eq 'ADMIN'}">
            	    <button class="custom-btn-b btn-9-b">공지등록</button>
            	</c:if>              
            </a>
            <!-- <button class="custom-btn-r btn-9-r">Delete</button> -->
            <div class="pagination dfjc">
						<c:choose>
							<c:when test="${pi.cpage eq 1}">
								<a class="page-link" href="#" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
								</a>
							</c:when>
							<c:otherwise>
								<a href="list.do?cpage=${pi.cpage-1}" aria-label="Previous"> 
								<span aria-hidden="true">&laquo;</span>
								</a>
							</c:otherwise>
						</c:choose>

						<c:forEach var="page" begin="${pi.startPage}" end="${pi.endPage}">
							<a class="page-link" href="list.do?cpage=${page}">${page}</a>
						</c:forEach>

						<c:choose>
							<c:when test="${pi.cpage eq pi.maxPage}">
								<a class="page-link" href="#" aria-label="Next"> 
									<span aria-hidden="true">&raquo;</span>
								</a>
							</c:when>
							<c:otherwise>
								<a class="page-link" href="list.do?cpage=${pi.cpage+1}" aria-label="Next"> 
									<span aria-hidden="true">&raquo;</span>
								</a>
							</c:otherwise>
						</c:choose>
            </div>
        </section>
    </div>
    <div class="left">
        <br><br><br><br><br>
        <p class="egft3">HyundaiCard</p><br>
        <p class="egft4">Click Card</p>
        <div>
            <figure class="slide1">
                <a href="/cardApplication.html">
                    <img class="imgg" src="/resources/images/theBlack1.png">
                </a>
                <p class="egft3" style="color: black;">The Black</p>
            </figure>
            <figure class="slide1">
                <a href="/cardApplication.html">
                    <img class="imgg" src="/resources/images/thePurple1.png">
                </a>
                <p class="egft3" style="color: rgb(95, 0, 95);">The Purple</p>
            </figure>
            <figure class="slide1">
                <a href="/cardApplication.html">
                    <img class="imgg" src="/resources/images/theRed1.png">
                </a>
                <p class="egft3" style="color: rgb(187, 0, 0);">The Red</p>
            </figure>
            <figure class="slide1">
                <a href="/cardApplication.html">
                    <img class="imgg" src="/resources/images/theGreen1.png">
                </a>
                <p class="egft3" style="color: green;">The Green</p>
            </figure>
            <figure class="slide1">
                <a href="/cardApplication.html">
                    <img class="imgg" src="/resources/images/thePink1.png">
                </a>
                <p class="egft3" style="color: rgb(252, 71, 102);">The Pink</p>
            </figure>
        </div>
    </div>

    <!-- /main -->

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>


</body>

</html>