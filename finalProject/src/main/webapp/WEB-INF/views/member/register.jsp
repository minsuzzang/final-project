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
      
   <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
                    <path d="m 40,120.00016 239.99984,-3.2e-4 c 0,0 24.99263,0.79932 25.00016,35.00016 0.008,34.20084 -25.00016,35 -25.00016,35 h -239.99984 c 0,-0.0205 -25,4.01348 -25,38.5 0,34.48652 25,38.5 25,38.5 h 215 c 0,0 20,-0.99604 20,-25 0,-24.00396 -20,-25 -20,-25 h -190 c 0,0 -20,1.71033 -20,25 0,24.00396 20,25 20,25 h 168.57143" />
                </svg>
                <svg viewBox="0 -65 320 300">
                    <path d="m 40,120.00016 239.99984,-3.2e-4 c 0,0 24.99263,0.79932 25.00016,35.00016 0.008,34.20084 -25.00016,35 -25.00016,35 h -239.99984 c 0,-0.0205 -25,4.01348 -25,38.5 0,34.48652 25,38.5 25,38.5 h 215 c 0,0 20,-0.99604 20,-25 0,-24.00396 -20,-25 -20,-25 h -190 c 0,0 -20,1.71033 -20,25 0,24.00396 20,25 20,25 h 168.57143" />
                </svg>
                <svg viewBox="0 -139 320 300">
                    <path d="m 40,120.00016 239.99984,-3.2e-4 c 0,0 24.99263,0.79932 25.00016,35.00016 0.008,34.20084 -25.00016,35 -25.00016,35 h -239.99984 c 0,-0.0205 -25,4.01348 -25,38.5 0,34.48652 25,38.5 25,38.5 h 215 c 0,0 20,-0.99604 20,-25 0,-24.00396 -20,-25 -20,-25 h -190 c 0,0 -20,1.71033 -20,25 0,24.00396 20,25 20,25 h 168.57143" />
                </svg>
                <svg viewBox="0 -212 320 500">
                    <path d="m 40,120.00016 239.99984,-3.2e-4 c 0,0 24.99263,0.79932 25.00016,35.00016 0.008,34.20084 -25.00016,35 -25.00016,35 h -239.99984 c 0,-0.0205 -25,4.01348 -25,38.5 0,34.48652 25,38.5 25,38.5 h 215 c 0,0 20,-0.99604 20,-25 0,-24.00396 -20,-25 -20,-25 h -190 c 0,0 -20,1.71033 -20,25 0,24.00396 20,25 20,25 h 168.57143" />
                </svg>
                <svg viewBox="0 -285 320 600">
                    <path d="m 40,120.00016 239.99984,-3.2e-4 c 0,0 24.99263,0.79932 25.00016,35.00016 0.008,34.20084 -25.00016,35 -25.00016,35 h -239.99984 c 0,-0.0205 -25,4.01348 -25,38.5 0,34.48652 25,38.5 25,38.5 h 215 c 0,0 20,-0.99604 20,-25 0,-24.00396 -20,-25 -20,-25 h -190 c 0,0 -20,1.71033 -20,25 0,24.00396 20,25 20,25 h 168.57143" />
                </svg>
                <form action="/member/register.do" method="post">
                    <div class="form">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="m_email" onkeyup="checkEmail()" placeholder="you@example.com">
                        <span id="emailMsg"></span>
                        
                        <label for="password">Password</label>
                        <input type="password" id="password" name="m_pwd" onkeyup="validatePassword()" required>
                        <span id="pwdMsg">대소문자 1개 이상, 특수문자 1개 이상, 6~20자리</span>
                        
                        <label for="password">PasswordCheck</label>
                        <input type="password" id="passwordcheck" name="pwdchk" onkeyup="validatePassword()" required>
                        <span id="pwdChkMsg"></span>
                        
                        <label for="name">Name</label>
                        <input type="text" id="name" name="m_name" onkeyup="validateName()" required>
                        <span id="nameMsg"></span>
                        
                        <label for="phone">Phone</label>
                        <input type="text" id="phone" name="m_phone" placeholder="'-'제외하고 숫자만 입력" maxlength="11" onkeyup="validatePhone()" required>
                        <span id="phoneMsg"></span>
                        
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

<script>
let pwdFlag = false;
let pwdCheckFlag = false;
let emailFlag = false;

function flagCheck() {
   let submitBtn = document.getElementById('submit');
    if (pwdFlag && emailFlag && pwdCheckFlag) {
        submitBtn.removeAttribute("disabled");
    } else {
        submitBtn.setAttribute("disabled", "true");
    }
}

// 비밀번호 유효성 검사
function validatePassword() {
   const passwordRegex = /^(?=.*[a-zA-Z])(?=.*[@$!%*?&\#])[A-Za-z\d@$!%*?&\#]{6,20}$/;
   const password = document.getElementById("password").value;
   const passwordChk = document.getElementById("passwordcheck").value;
   const msg = document.getElementById("pwdMsg");   
   const pwdChkMsg = document.getElementById("pwdChkMsg");
   
   if(passwordRegex.test(password)) {
      msg.innerHTML = "사용 가능한 비밀번호입니다.";
      msg.style.color = "green";
      pwdFlag = true;
   } else {
      msg.innerHTML = "패스워드 정책에 맞지 않습니다.";
      msg.style.color = "red";
      pwdFlag = false;
   }
   
   if(password === passwordChk) {
      pwdChkMsg.innerHTML = "패스워드가 동일합니다.";
      pwdChkMsg.style.color = "green";
      pwdCheckFlag = true;
   } else {
      pwdChkMsg.innerHTML = "패스워드가 동일하지 않습니다.";
      pwdChkMsg.style.color = "red";
      pwdCheckFlag = false;
   }
   
   flagCheck();
}

//이름 유효성 검사
function validateName() {   
   const nameRegex = /^[가-힣]{2,}$/;
   const name = document.getElementById("name").value;
   const nameMsg = document.getElementById("nameMsg");

   if(name == "") {
      nameMsg.innerHTML = "이름을 입력해주세요.";
      nameMsg.style.color = "red";
   } else if(nameRegex.test(name)) {
      nameMsg.innerHTML = "사용 가능한 이름입니다.";
      nameMsg.style.color = "green";
   } else {
      nameMsg.innerHTML = "이름은 한글만 가능합니다.";
      nameMsg.style.color = "red";
   }
}


//전화번호 유효성 검사     
function validatePhone() {
 const phoneRegex = /^\d{3}\d{4}\d{4}$/;
 const Phone = document.getElementById("phone").value;
 const msg = document.getElementById("phoneMsg");

 // 전화번호 유효성 검사 로직을 여기에 작성
 // 간단한 형식을 가정 (예: 1234567890)
 

 if(Phone == "") {
      msg.innerHTML = "전화번호를 입력하세요.";
      msg.style.color = "red";
  } else if(phoneRegex.test(Phone)) {
      msg.innerHTML = "유효한 전화번호입니다.";
      msg.style.color = "green";
  } else {
      msg.innerHTML = "유효하지 않은 전화번호입니다.";
      msg.style.color = "red";
  }
}

//이메일 중복 확인 Ajax
function checkEmail() {
   const email = $("#email").val();
   const emailMsg = $("#emailMsg");
   const emailRegex = /^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;
   
   if(emailRegex.test(email)) {
      $.ajax({
         type: "POST",
         url: "/member/checkEmail.do",
         /* dataType: 'json',
         contentType : 'application/json', */
         data: { email : email },
         success : function(response) { 
            if(response == "available") {
               emailMsg.html("사용 가능한 이메일입니다.").css("color", "green");
               emailFlag = true;
            } else {
               console.log(response);
               emailMsg.html("이미 사용중인 이메일입니다.").css("color", "red");
               emailFlag = false;
            }
         },
         error : function() { }
      });
   } else {
      emailMsg.html("이메일 형식이 맞지 않습니다.").css("color", "red");
      emailFlag = false;
   }
   
   flagCheck();
}

</script>