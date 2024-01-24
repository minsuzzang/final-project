<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <link rel="stylesheet" href="/resources/css/login.css">
    <!-- js -->
    <script src="/resources/lib/jquery-1.11.1.min.js"></script>
    <script src="/resources/lib/jquery.easing.1.3.min.js"></script>
    <script src="/resources/js/visual_slide.js"></script>
    <script src="/resources/js/menuEffect.js"></script>
    <script src="/resources/js/mousecursor.js"></script>
    <script src="/resources/js/login.js"></script>
</head>

<body class="ofh">
    <video muted autoplay loop preload>
        <source src="/resources/videos/login.mp4" type="video/mp4">
    </video>

    <header>
       <%@ include file="../common/header.jsp"%>
    </header>

    <!-- main -->
    <div class="page">
        <div class="container2">
            <div class="left2">
                <div class="login"><img src="/resources/images/logo.png" alt=""></div>
                <div class="eula"><b>Register</b></div>
            </div>
            <div class="right2">
                <svg viewBox="0 8 320 300">
                    <defs>
                        <linearGradient inkscape:collect="always" id="linearGradient" x1="13" y1="193.49992" x2="307"
                            y2="193.49992" gradientUnits="userSpaceOnUse">
                            <stop style="stop-color:#9e79aa;" offset="0" id="stop876" />
                            <stop style="stop-color:#320642;" offset="1" id="stop878" />
                        </linearGradient>
                    </defs>
                    <path
                        d="m 40,120.00016 239.99984,-3.2e-4 c 0,0 24.99263,0.79932 25.00016,35.00016 0.008,34.20084 -25.00016,35 -25.00016,35 h -239.99984 c 0,-0.0205 -25,4.01348 -25,38.5 0,34.48652 25,38.5 25,38.5 h 215 c 0,0 20,-0.99604 20,-25 0,-24.00396 -20,-25 -20,-25 h -190 c 0,0 -20,1.71033 -20,25 0,24.00396 20,25 20,25 h 168.57143" />
                </svg>
                <svg viewBox="0 -65 320 300">
                    <path
                        d="m 40,120.00016 239.99984,-3.2e-4 c 0,0 24.99263,0.79932 25.00016,35.00016 0.008,34.20084 -25.00016,35 -25.00016,35 h -239.99984 c 0,-0.0205 -25,4.01348 -25,38.5 0,34.48652 25,38.5 25,38.5 h 215 c 0,0 20,-0.99604 20,-25 0,-24.00396 -20,-25 -20,-25 h -190 c 0,0 -20,1.71033 -20,25 0,24.00396 20,25 20,25 h 168.57143" />
                </svg>
                <svg viewBox="0 -139 320 300">
                    <path
                        d="m 40,120.00016 239.99984,-3.2e-4 c 0,0 24.99263,0.79932 25.00016,35.00016 0.008,34.20084 -25.00016,35 -25.00016,35 h -239.99984 c 0,-0.0205 -25,4.01348 -25,38.5 0,34.48652 25,38.5 25,38.5 h 215 c 0,0 20,-0.99604 20,-25 0,-24.00396 -20,-25 -20,-25 h -190 c 0,0 -20,1.71033 -20,25 0,24.00396 20,25 20,25 h 168.57143" />
                </svg>
                <svg viewBox="0 -212 320 500">
                    <path
                        d="m 40,120.00016 239.99984,-3.2e-4 c 0,0 24.99263,0.79932 25.00016,35.00016 0.008,34.20084 -25.00016,35 -25.00016,35 h -239.99984 c 0,-0.0205 -25,4.01348 -25,38.5 0,34.48652 25,38.5 25,38.5 h 215 c 0,0 20,-0.99604 20,-25 0,-24.00396 -20,-25 -20,-25 h -190 c 0,0 -20,1.71033 -20,25 0,24.00396 20,25 20,25 h 168.57143" />
                </svg>
                <svg viewBox="0 -285 320 600">
                    <path
                        d="m 40,120.00016 239.99984,-3.2e-4 c 0,0 24.99263,0.79932 25.00016,35.00016 0.008,34.20084 -25.00016,35 -25.00016,35 h -239.99984 c 0,-0.0205 -25,4.01348 -25,38.5 0,34.48652 25,38.5 25,38.5 h 215 c 0,0 20,-0.99604 20,-25 0,-24.00396 -20,-25 -20,-25 h -190 c 0,0 -20,1.71033 -20,25 0,24.00396 20,25 20,25 h 168.57143" />
                </svg>
                <form action="/member/register.do" method="post">
                    <div class="form">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="m_email" required>
                        <label for="password">Password</label>
                        <input type="password" id="password" name="m_pwd" required>
                        <label for="password">PasswordCheck</label>
                        <input type="password" id="password" name="pwdchk" required>
                        <label for="name">Name</label>
                        <input type="text" id="name" name="m_name" required>
                        <label for="phone">Phone</label>
                        <input type="text" id="phone" name="m_phone" required>
                        <input type="submit" id="submit" value="Submit">
                        <a class="aaa" href="/member/loginForm.do">Login</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- /main -->

    <!--푸터 영역-->
    <footer>
     
    </footer>

</body>

</html>