<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

   <title>404 Error</title>

   <!-- Google font -->
   <link href="https://fonts.googleapis.com/css?family=Cabin:400,700" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Montserrat:900" rel="stylesheet">

   <!-- Custom stlylesheet -->
   <link type="text/css" rel="stylesheet" href="/resources/css/error.css" />
   <link type="text/css" rel="stylesheet" href="/resources/css/detail.css" />


</head>

<body>

   <div id="notfound">
      <div class="notfound">
         <div class="notfound-404">
                <img src="/images/logo2.png" alt="">
            <h3>Oops!</h3>
            <h1><span>E</span><span>r</span><span>r</span><span>o</span><span>r</span></h1>
         </div>
         <h2>${statement}</h2>
            <button type="button" class="custom-btn-b btn-9-b" onclick="location.href='/'">홈으로</button>
      </div>
   </div>


</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>