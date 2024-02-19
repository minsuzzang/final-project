<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<footer class="footer">
        <!-- top버튼 -->
        <button onclick="backToTop()" id="btn-back-to-top" title="위로 가기">Top</button>

        <div class="waves">
            <div class="wave" id="wave1"></div>
            <div class="wave" id="wave2"></div>
            <div class="wave" id="wave3"></div>
            <div class="wave" id="wave4"></div>
        </div>
        <ul class="social-icon">
            <li class="social-icon__item">
                <img src="/resources/images/logo.png" alt="">
            </li>
        </ul><br><br>
        <p>2024 Final Project | JESS FOUR CARDS</p>
        <ul class="menu">
            <li class="menu__item"><a class="menu__link" href="/">홈</a></li>
            <li class="menu__item"><a class="menu__link" href="/introduce/hyundaiCard.do">기업소개</a></li>
            <li class="menu__item"><a class="menu__link" href="/introduce/culture.do">기업문화</a></li>
            <li class="menu__item"><a class="menu__link" href="/introduce/philosophy.do">인사철학</a></li>
            <li class="menu__item"><a class="menu__link" href="/customerboard/list.do">고객센터</a></li>

        </ul>
        <div id="sns">
            <ul id="icon_list">
                <li><a href="https://www.instagram.com"><img src="/resources/images/icon_01.png" alt="인스타그램 바로가기"></a></li>
                <li><a href="https://www.facebook.com"><img src="/resources/images/icon_02.png" alt="페이스북 바로가기"></a></li>
                <li><a href="https://www.twitter.com"><img src="/resources/images/icon_03.png" alt="트위터 바로가기"></a></li>
                <li><a href="https://www.youtube.com"><img src="/resources/images/icon_04.png" alt="유투브 바로가기"></a></li>
            </ul>
        </div>
</footer>