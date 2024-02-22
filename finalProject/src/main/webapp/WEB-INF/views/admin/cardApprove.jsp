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
                	<c:choose>
                		<c:when test="${empty list}">
                			<td colspan="6">
								<h3 class="text-center">등록된 글이 없습니다.</h3>
							</td>
                		</c:when>
	                	<c:otherwise>
	                		<c:forEach var="item" items="${list}">
	                		<input type="hidden" name="index" value="${item.cd_idx}">
			                    <tr>
			                        <td style="padding: 10px 0;">${row}</td>
			                        <td>${item.m_name}</td>
			                        <td>${item.m_email}</td>
			                        <td>${item.cd_color}</td>
			                        <td>${item.cd_approve}</td>
			                        <td>
			                        <a href="#popupA" onclick="getModalList(${item.cd_idx})"  class="custom-btn-b btn-9-b jbjbj"
			                         style="text-decoration-line: none;">정보보기</a>
			                        </td>
			                    </tr>
			                    <c:set var="row" value="${row-1}"/>
	                		</c:forEach>
	                	</c:otherwise>
                	</c:choose>
                	
                    <!-- Modal -->

                    <div id="popupA" class="layer">
                        <div class="box">
                            <a href="#" class="close" style="font-size: 30px;">x</a>
                            <div class="left10 yhbb">
                                <img id="img" class="imgg12" src="/resources/images/theBlack/theBlack1.png" alt="">
                            </div>
                            <div class="right10 yhbb">
                                <img src="/resources/images/logo2.png" alt="" style="width: 30%;"><br><br><br>
                                <p class="fff3"><b>카드정보</b></p><br>
                                <pre class="fff1">        카 드 : <b id="color"></b></pre>
                                <pre class="fff1">    디 자 인 : <b id="design"></b></pre><br><br>
                                <p class="fff3"><b>회원정보</b></p><br>
                                <pre class="fff1">        성 함 : <b id="name"></b></pre>
                                <pre class="fff1">        주 소 : <b id="address"></b></pre>
                                <pre class="fff1">    이 메 일 : <b id="email"></b></pre>
                                <pre class="fff1">전 화 번 호 : <b id="phone"></b></pre>
                            </div>
                            <div>
                                <a href="" class="custom-btn-r btn-9-b jbjb fr"
                                    id="no" style="text-decoration-line: none;">거절</a>
                                <a href="" class="custom-btn-b btn-9-b jbjb fr"
                                    id="yes" style="text-decoration-line: none;">승인</a>
								<a class="custom-btn-b btn-9-b jbjb fr"
								id="detail" onclick="getModalList2();" 
								style="text-decoration-line: none;">자세히보기</a>
								<span class="jbjb fr" id="timer"></span>
                            </div>
                        </div>
                    </div>
                    

                    <!-- Modal -->
                </tbody>
            </table>
        </div>
        
    </section>
                <div class="pagination dfjc">
						<c:choose>
							<c:when test="${pi.cpage eq 1}">
								<a class="page-link" href="#" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
								</a>
							</c:when>
							<c:otherwise>
								<a href="/admin/approveList.do?cpage=${pi.cpage-1}" aria-label="Previous"> 
								<span aria-hidden="true">&laquo;</span>
								</a>
							</c:otherwise>
						</c:choose>

						<c:forEach var="page" begin="${pi.startPage}" end="${pi.endPage}">
							<a class="page-link" href="/admin/approveList.do?cpage=${page}">${page}</a>
						</c:forEach>

						<c:choose>
							<c:when test="${pi.cpage eq pi.maxPage}">
								<a class="page-link" href="#" aria-label="Next"> 
									<span aria-hidden="true">&raquo;</span>
								</a>
							</c:when>
							<c:otherwise>
								<a class="page-link" href="/admin/approveList.do?cpage=${pi.cpage+1}" aria-label="Next"> 
									<span aria-hidden="true">&raquo;</span>
								</a>
							</c:otherwise>
						</c:choose>
           		 </div>

    <!-- /main -->
    
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
    <script src="/resources/js/admin/modal.js"></script>
</body>

</html>