<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>HYUNDAI CARD</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/media_query.css">
    <script src="/resources/lib/jquery-1.11.1.min.js"></script>
    <script src="/resources/lib/jquery.easing.1.3.min.js"></script>
    <script src="/resources/js/visual_slide.js"></script>
    <script src="/resources/js/menuEffect.js"></script>
    <script src="/resources/js/mousecursor.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
    <script src="/resources/js/common/alert.js"></script>	
	<script>
		/* const msg = "로그인 되었습니다."; */
		const msg='<%= request.getAttribute("msg") %>';
		const status='<%= request.getAttribute("status") %>';
		
		if(msg !== "null" && status !== "null") {
			$(document).ready(function() {
				alertFunc(msg, status);
			})
		}
	</script>
</head>

<body class="ofh">
    <!--로딩화면-->
    <!-- <div class="loader_bg">
        <div class="loader"></div>
        <p>페이지 로딩중</p>
    </div> -->

    <header>
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
            <a href="/member/loginForm.do">로그인</a>
            <a href="/member/registerForm.do">회원가입</a>
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
                        </ul>
                    </li>

                    <li><a style="font-family: 'YouandiModernTR', sans-serif; font-weight: bold;">My Account</a>
                        <ul id="sub_menu">
                            <li><a href="#">내 정보</a></li>
                            <li><a href="#">내 카드</a></li>
                            <li><a href="#">내 등급</a></li>
                            <li><a href="#">이용내역</a></li>
                            <li><a href="#">마일리지</a></li>
                        </ul>
                    </li>

                    <li><a>카드</a>
                        <ul id="sub_menu">
                            <li><a href="#">카드 안내</a></li>
                            <li><a href="#">카드 신청</a></li>
                            <li><a href="#">카드 신청 조회</a></li>
                        </ul>
                    </li>

                    <li><a>혜택</a>
                        <ul id="sub_menu">
                            <li><a href="#">할인 혜택</a></li>
                            <li><a href="#">적립 혜택</a></li>
                            <li><a href="#">제휴 상품</a></li>
                        </ul>

                    </li>

                    <li><a>고객 지원</a>
                        <ul id="sub_menu">
                            <li><a href="#">공지사항</a></li>
                            <li><a href="/userService.jsp">고객 문의</a></li>
                            <li><a href="#" style="font-family: 'YouandiModernTR', sans-serif;">FAQ</a></li>
                            <li><a href="#">카드 도난 • 분실신고</a></li>
                        </ul>
                    </li>

                </ul>
            </nav>

            <!--SNS 아이콘 영역-->
            <div id="sns">
                <ul id="icon_list">
                    <li><a href="#"><img src="/resources/images/icon_01.png" alt="인스타그램 바로가기"></a></li>
                    <li><a href="#"><img src="/resources/images/icon_02.png" alt="페이스북 바로가기"></a></li>
                    <li><a href="#"><img src="/resources/images/icon_03.png" alt="트위터 바로가기"></a></li>
                    <li><a href="#"><img src="/resources/images/icon_04.png" alt="유투브 바로가기"></a></li>
                </ul>
            </div>
        </div>
    </header>
    <div id="visual_wrap">
        <!--비주얼 버튼(공통영역)-->
        <div id="visual_btn">
            <div id="prev"><a href="#">
                    <span class="line"></span>
                    <span id="prev_btn">Prev</span></a>
            </div>

            <div id="next"><a href="#">
                    <span id="next_btn">Next</span>
                    <span class="line"></span></a>
            </div>
        </div>


        <!--비주얼 슬라이드 영역-->
        <ul id="visual_list">
            <!--블랙카드-->
            <li id="visual_black">
                <img src="/resources/images/visual_black_01.png" alt="블랙카드 사진">
                <img src="/resources/images/visual_black_02.png" alt="블랙카드 사진">
            </li>

            <!--그린 카드-->
            <li id="visual_green">
                <img src="/resources/images/visual_green_01.png" alt="그린카드 사진">
                <img src="/resources/images/visual_green_02.png" alt="그린카드 사진">
                <img src="/resources/images/visual_green_03.png" alt="그린카드 사진">
            </li>

            <!--퍼플 카드-->
            <li id="visual_purple">
                <img src="/resources/images/visual_purple_01.png" alt="퍼플카드 사진">
                <img src="/resources/images/visual_purple_02.png" alt="퍼플카드 사진">
            </li>

            <!--레드 카드-->
            <li id="visual_red">
                <img src="/resources/images/visual_red_01.png" alt="레드카드 사진">
                <img src="/resources/images/visual_red_02.png" alt="레드카드 사진">
            </li>

        </ul>


        <!--텍스트 영역-->
        <ul id="text_list">
            <li class="txt_box_left">
                <span class="sub_tit">Invitation Only</span>
                <h1 class="tit"><a href="#">상위 0.05%를 위한<br>국내 최초 VVIP카드</a></h1>
                <span class="txt">오직 9999명에게만 주어지는 한정혜택</span>
                <span class="more_btn">
                    <a href="#">
                        <p>자세히 보기</p>
                    </a>
                </span>
            </li>



            <li class="txt_box_left">
                <span class="sub_tit">My First Luxury</span>
                <h1 class="tit"><a href="#">갖고 싶지만, 존재하지 않았던<br>Entry 럭셔리카드</a></h1>
                <span class="txt">여행, 고메, 해외쇼핑 영역 결제 시 5% M포인트 특별 적립</span>
                <span class="more_btn">
                    <a href="#">
                        <p>자세히 보기</p>
                    </a>
                </span>
            </li>

            <li class="txt_box_right">
                <span class="sub_tit">Qualified Only</span>
                <h1 class="tit"><a href="#">프리미엄 바우처와<br>마일리지 / 포인트 적립 혜택</a></h1>
                <span class="txt">대한항공형 / 아시아나형 / M포인트형<br>마일리지와 포인트 중 선택하여 적립/사용 가능</span>
                <span class="more_btn">
                    <a href="#">
                        <p>자세히 보기</p>
                    </a>
                </span>
            </li>


            <li class="txt_box_right">
                <span class="sub_tit">My Hot Luxury</span>
                <h1 class="tit"><a href="#">온라인 전용 신청으로<br>더 핫하게 돌아온 the Red</a></h1>
                <span class="txt">쓰면 쓸수록 커지는 M포인트</span>
                <span class="more_btn">
                    <a href="#">
                        <p>자세히 보기</p>
                    </a>
                </span>
            </li>
        </ul>


        <!--페이저 버튼(공통영역)-->
        <ul id="visual_pager">
            <li><a href="#" class="active">01</a></li>
            <li><a href="#">02</a></li>
            <li><a href="#">03</a></li>
            <li><a href="#">04</a></li>
        </ul>
    </div>

    <!--푸터 영역-->
    <footer>
	    
    </footer>

</body>
</html>

