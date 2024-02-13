<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!-- 헤더시작 -->
        <!--로고삽입-->
        <h1 id="logo">
            <a href="/"><img src="/resources/images/logo.png" alt="로고"></a>
        </h1>

        <!--메뉴 버튼-->
        <h2 id="menu_btn">
            <span id="t_stick"></span>
            <span id="m_stick"></span>
            <span id="b_stick"></span>
        </h2>

     	<h2 id="log_btn">
	        <c:choose>
		       	<c:when test="${sessionScope.m_idx != null && sessionScope.m_type == 'BASIC'}">
		           		<a href="/member/logout.do">로그아웃</a>
		       	</c:when>
		        <c:when test="${sessionScope.m_idx != null && sessionScope.m_type == 'ADMIN'}">
		           		<a href="/admin">관리자</a>
		           		<a href="/member/logout.do">로그아웃</a>
		       	</c:when>
		       	<c:otherwise>
		           		<a href="/member/loginForm.do">로그인</a>
		           		<a href="/member/registerForm.do">회원가입</a>
		       	</c:otherwise>
	        </c:choose>
      	</h2>

        <!--메뉴-->
        <div id="menu_wrap">
            <nav id="main_nav">
                <h2 class="hidden">메인메뉴</h2>
                <ul id="menu">
                    <li><a>기업 소개</a>
                        <ul id="sub_menu">
                            <li><a href="/introduce/hyundaiCard.do">현대카드 소개</a></li>
                            <li><a href="/introduce/culture.do">기업 문화</a></li>
                            <li><a href="/introduce/philosophy.do">인사 철학</a></li>
                        </ul>
                    </li>

                    <li><a style="font-family: 'YouandiModernTR', sans-serif; font-weight: bold;">My Account</a>
                        <ul id="sub_menu">
                            <li><a href="/member/myinfoForm.do">내 정보</a></li>
                            <li><a href="#">내 카드</a></li>
                            <li><a href="#">내 등급</a></li>
                            <li><a href="#">이용내역</a></li>
                            <li><a href="#">마일리지</a></li>
                        </ul>
                    </li>

                    <li><a>카드</a>
                        <ul id="sub_menu">
                            <li><a href="/card/cardGuide.do">카드 안내</a></li>
                            <li><a href="/card/cardApplyForm.do">카드 신청</a></li>
                            <li><a href="/card/cardInfo">카드 신청 조회</a></li>
                        </ul>
                    </li>

                    <li><a>혜택</a>
                        <ul id="sub_menu">
                            <li><a href="/product/discount.do">할인 혜택</a></li>
                            <li><a href="/product/accumulate.do">적립 혜택</a></li>
                            <li><a href="/product/list.do">제휴 상품</a></li>
                        </ul>

                    </li>

                    <li><a>고객 지원</a>
                        <ul id="sub_menu">
                            <li><a href="/notice/list.do">공지사항</a></li>
                            <li><a href="/customerboard/list.do">고객 문의</a></li>
                            <li><a href="/customerboard/FAQ.do" style="font-family: 'YouandiModernTR', sans-serif;">FAQ</a></li>
                            <li><a href="#">카드 도난 • 분실신고</a></li>
                        </ul>
                    </li>

                </ul>
            </nav>


            <!--SNS 아이콘 영역-->
            <div id="sns">
                <ul id="icon_list">
                    <li><a href="https://www.instagram.com"><img src="/resources/images/icon_01.png" alt="인스타그램 바로가기"></a></li>
                    <li><a href="https://www.facebook.com"><img src="/resources/images/icon_02.png" alt="페이스북 바로가기"></a></li>
                    <li><a href="https://www.twitter.com"><img src="/resources/images/icon_03.png" alt="트위터 바로가기"></a></li>
                    <li><a href="https://www.youtube.com"><img src="/resources/images/icon_04.png" alt="유투브 바로가기"></a></li>
                </ul>
            </div>
        </div>