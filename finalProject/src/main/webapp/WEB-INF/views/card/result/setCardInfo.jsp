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
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet" href="/resources/css/media_query.css">
<link rel="stylesheet" href="/resources/css/detail.css">
<link rel="stylesheet" href="/resources/css/card.css">
<link rel="stylesheet" href="/resources/css/popup.css">
<link rel="stylesheet" href="/resources/css/password.css">
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<!-- js -->
<script src="/resources/lib/jquery-1.11.1.min.js"></script>	
<script src="/resources/lib/jquery.easing.1.3.min.js"></script>
<script src="/resources/js/menuEffect.js"></script>
<script src="/resources/js/mousecursor.js"></script>
<script src="/resources/js/visual_slide.js"></script>
<script src="/resources/js/password.js"></script>

<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

<body>

	<header>
		<!-- 헤더 비디오 -->
		<video class="vd" src="/resources/videos/header.mp4" muted autoplay
			loop preload width="100%"></video>
		<!--로고삽입-->
		<h1 id="logo">
			<a class="a2" href="/index.html"><img
				src="/resources/images/logo.png" alt="로고"></a>
		</h1>



		<!--메뉴 버튼-->
		<h2 id="menu_btn">
			<span id="t_stick"></span> <span id="m_stick"></span> <span
				id="b_stick"></span>
		</h2>
		<!--메뉴-->
		<div id="menu_wrap">
			<nav id="main_nav">
				<h2 class="hidden">메인메뉴</h2>
				<ul id="menu">
					<li><a>기업 소개</a>
						<ul id="sub_menu">
							<li><a href="#">현대카드 소개</a></li>
							<li><a href="#">기업 문화</a></li>
							<li><a href="#">인사 철학</a></li>
						</ul></li>

					<li><a
						style="font-family: 'YouandiModernTR', sans-serif; font-weight: bold;">My
							Account</a>
						<ul id="sub_menu">
							<li><a href="#">내 정보</a></li>
							<li><a href="#">내 카드</a></li>
							<li><a href="#">내 등급</a></li>
							<li><a href="#">이용내역</a></li>
							<li><a href="#">마일리지</a></li>
						</ul></li>

					<li><a>카드</a>
						<ul id="sub_menu">
							<li><a href="#">카드 안내</a></li>
							<li><a href="/cardApplication.html">카드 신청</a></li>
							<li><a href="#">카드 신청 조회</a></li>
						</ul></li>

					<li><a>혜택</a>
						<ul id="sub_menu">
							<li><a href="#">할인 혜택</a></li>
							<li><a href="#">적립 혜택</a></li>
							<li><a href="#">제휴 상품</a></li>
						</ul></li>

					<li><a>고객 지원</a>
						<ul id="sub_menu">
							<li><a href="/announcement.html">공지사항</a></li>
							<li><a href="/userService.html">고객 문의</a></li>
							<li><a href="#"
								style="font-family: 'YouandiModernTR', sans-serif;">FAQ</a></li>
							<li><a href="#">카드 도난 • 분실신고</a></li>
						</ul></li>

				</ul>
			</nav>


			<!--SNS 아이콘 영역-->
			<div id="sns">
				<ul id="icon_list">
					<li><a href="#"><img src="/resources/images/icon_01.png"
							alt="인스타그램 바로가기"></a></li>
					<li><a href="#"><img src="/resources/images/icon_02.png"
							alt="페이스북 바로가기"></a></li>
					<li><a href="#"><img src="/resources/images/icon_03.png"
							alt="트위터 바로가기"></a></li>
					<li><a href="#"><img src="/resources/images/icon_04.png"
							alt="유투브 바로가기"></a></li>
				</ul>
			</div>
		</div>
	</header>


	<!-- main -->
	<br>
	<br>
	<br>
	<div class="tac">
		<p class="fff4">카드 신청 조회</p>
		<br>
		<p class="fff5">Card Application Inquiry</p>
		<br>
	</div>

	<div class="left11">
		<p class="fff5" style="margin-left: 5%;">[ 신청한 카드 ]</p>
		<br>
		<div class="dfjc4">

			<c:forEach var="card" items="${cards}">
				<img class="imgg13" id="${card.cd_idx}"
					src="/resources/images/the${card.cd_color}/the${card.cd_color}${card.cd_design}.png"
					alt="" onclick="showCardInfo(${card.cd_idx})">
				<br />
			</c:forEach>

		</div>
	</div>
	<br>
	<br>
	<br>
	<div class="right11">
		<div class="yhb3">
			<div id="board-list">
				<input type="hidden" id="idx">
				<table class="board-table">
					<tr>
						<th scope="col" class="th-num">신청날짜</th>
						<td id="apply_date">이미지를 클릭해주세요.</td>
					</tr>
					<tr>
						<th scope="col" class="th-num">승인여부</th>
						<td id="approval_status">이미지를 클릭해주세요.</td>
					</tr>
					<tr>
						<th scope="col" class="th-num">카드번호</th>
						<td id="number">이미지를 클릭해주세요.</td>
					</tr>
					<tr>
						<th scope="col" class="th-num">CVC</th>
						<td id="cvc">이미지를 클릭해주세요.</td>
					</tr>
					<tr>
						<th scope="col" class="th-num">유효기간</th>
						<td id="expired_date">이미지를 클릭해주세요.</td>
					</tr>
					<tr>
						<th scope="col" class="th-num">비밀번호</th>
						<td id="password"><input class="inpp" type="text"
							id="outer-input" value="" disabled maxlength="4"> <a
							href="#popupA" class="custom-btn-b btn-9-b jbjbj ttt"
							style="text-decoration-line: none;">비밀번호설정</a></td>
					</tr>
				</table>
			</div>
		</div>
		<br><br>
		<div class="dfjc55">
			<a href="#">
				<button class="custom-btn-b btn-9-b ttt" onclick="submitCardInfo()">저장</button>
			</a>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div id="jquery-script-menu"></div>



	<div id="popupA" class="layer">
		<div class="box1">
			<a href="#" class="close" style="font-size: 30px;">x</a>
			<div id="pinpad">
				<form class="ff11">
					<input type="password" id="password-input" maxlength="4" /></br> <input
						type="button" value="1" id="1" class="pinButton calc" /> <input
						type="button" value="2" id="2" class="pinButton calc" /> <input
						type="button" value="3" id="3" class="pinButton calc" /><br>
					<input type="button" value="4" id="4" class="pinButton calc" /> <input
						type="button" value="5" id="5" class="pinButton calc" /> <input
						type="button" value="6" id="6" class="pinButton calc" /><br>
					<input type="button" value="7" id="7" class="pinButton calc" /> <input
						type="button" value="8" id="8" class="pinButton calc" /> <input
						type="button" value="9" id="9" class="pinButton calc" /><br>
					<input type="button" value="clear" id="clear"
						class="pinButton clear" /> <input type="button" value="0" id="0 "
						class="pinButton calc" /> <a href="#"> <input type="button"
						value="enter" id="enter" class="pinButton enter" />
					</a>
				</form>
			</div>
			<script type="text/javascript">

                var _gaq = _gaq || [];
                _gaq.push(['_setAccount', 'UA-36251023-1']);
                _gaq.push(['_setDomainName', 'jqueryscript.net']);
                _gaq.push(['_trackPageview']);

                (function () {
                    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
                })();

            </script>
			<script>
                try {
                    fetch(new Request("https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js", { method: 'HEAD', mode: 'no-cors' })).then(function (response) {
                        return true;
                    }).catch(function (e) {
                        var carbonScript = document.createElement("script");
                        carbonScript.src = "//cdn.carbonads.com/carbon.js?serve=CK7DKKQU&placement=wwwjqueryscriptnet";
                        carbonScript.id = "_carbonads_js";
                        document.getElementById("carbon-block").appendChild(carbonScript);
                    });
                } catch (error) {
                    console.log(error);
                }
            </script>
			<script>
	    		    // 카드 이미지 클릭 시 호출할 함수
	    		    function showCardInfo(cardIdx) {
		    		    
	    		        var card = ${jsonCards}.find(function(card) {
	    		            return card.cd_idx === cardIdx;
	    		        });
	    		
	    		        if (card) {
	    		            document.getElementById('apply_date').innerText = card.cd_apply_date.year+'-'+card.cd_apply_date.month+'-'+card.cd_apply_date.day;
	    		            document.getElementById('approval_status').innerText = card.cd_approve;
	    		            document.getElementById('number').innerText = card.cd_number;
	    		            document.getElementById('cvc').innerText = card.cd_cvc;
	    		            document.getElementById('expired_date').innerText = card.cd_expired_date;
	    		            document.getElementById('idx').value = cardIdx;
	    		        }
		    		 }
	    		    
	    		    function submitCardInfo(){
	    		    	var apply_date = document.getElementById('apply_date').innerText;
	    		    	var idx =  document.getElementById('idx').value;
	    		    	var approval_status = document.getElementById('approval_status').innerText;
	    		    	var number = document.getElementById('number').innerText;
	    		    	var cvc = document.getElementById('cvc').innerText;
	    		    	var expired_date = document.getElementById('expired_date').innerText;
	    		    	var password = document.getElementById('outer-input').value;
	    		    	
	    		        if (apply_date == "이미지를 클릭해주세요." || approval_status == "심사중" || number == "이미지를 클릭해주세요." || 
	    		    		   cvc == "이미지를 클릭해주세요." || expired_date == "이미지를 클릭해주세요." || password.length < 4) {
	    		               alert("카드 등록에 실패했습니다.");
	    		   	    }
	    		        else{
		    		    	var date = new Date(Date.parse(apply_date.replace(/-/g, " ")))
		    		    	var formatted_date = date.toISOString().split('T')[0];
	    		        
		    		    	$.ajax({
		    		    		url: '/card/cardInfo/submit',
		    		    		type: 'POST',
		    		    		contentType: "application/json",
		    		    		data: JSON.stringify({
		    		    			'cd_idx' : idx,
			    		            'str_cd_apply_date': formatted_date,
			    		            'cd_approve': approval_status,
			    		            'cd_number': number,
			    		            'cd_cvc': cvc,
			    		            'cd_expired_date': expired_date,
			    		            'cd_pwd': password
		    		       	 	}),
			    		    	success: function(response){
									alert("최종신청이 완료되었습니다. 배송현황은 마이페이지에서 확인하실 수 있습니다.");    		  
									window.location.href = '/card/cardInfo';
			    		    	},
			    		    	error: function(xhr, status, error) {
			    		            // 서버에서 실패 상태 코드를 받았을 때의 처리
			    		            alert("카드 등록에 실패했습니다."); // "카드정보 제출 실패"
			    		        }
		    		    	});
	    		        }
	    		    }
            </script>

		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>

	<!-- /main -->

	<footer> </footer>

</body>

</html>