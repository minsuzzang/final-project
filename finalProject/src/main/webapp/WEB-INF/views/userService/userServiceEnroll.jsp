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
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/media_query.css">
    <link rel="stylesheet" href="/css/table.css">
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <!-- js -->
    <script src="/lib/jquery-1.11.1.min.js"></script>
    <script src="/lib/jquery.easing.1.3.min.js"></script>
    <script src="/js/visual_slide.js"></script>
    <script src="/js/menuEffect.js"></script>
    <script src="/js/mousecursor.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>


</head>

<body>

    <header>
        <!-- 헤더 비디오 -->
        <video class="vd" src="./videos/header.mp4" muted autoplay loop preload width="100%"></video>
        <!--로고삽입-->
        <h1 id="logo">
            <a class="a2" href="/index.html"><img src="images/logo.png" alt="로고"></a>
        </h1>



        <!--메뉴 버튼-->
        <h2 id="menu_btn">
            <span id="t_stick"></span>
            <span id="m_stick"></span>
            <span id="b_stick"></span>
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
                            <li><a href="/userService.html">고객 문의</a></li>
                            <li><a href="#" style="font-family: 'YouandiModernTR', sans-serif;">FAQ</a></li>
                            <li><a href="#">카드 도난 • 분실신고</a></li>
                        </ul>
                    </li>

                </ul>
            </nav>


            <!--SNS 아이콘 영역-->
            <div id="sns">
                <ul id="icon_list">
                    <li><a href="#"><img src="images/icon_01.png" alt="인스타그램 바로가기"></a></li>
                    <li><a href="#"><img src="images/icon_02.png" alt="페이스북 바로가기"></a></li>
                    <li><a href="#"><img src="images/icon_03.png" alt="트위터 바로가기"></a></li>
                    <li><a href="#"><img src="images/icon_04.png" alt="유투브 바로가기"></a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- main -->
    <div class="right">
        <form action="">
            <section class="notice">
                <div>
                    <p class="egft1">고객 문의</p>
                    <p class="egft2">Customer Inquiries</p>
                </div>
                <br><br>
                <main role="main" class="container wsm">
                    <form name="form" action="" method="">
                        <p class="egft5">Title</p><br>
                        <div class="dfjc">
                            <input type="text" class="ip" placeholder="제목을 입력해주세요.">
                        </div>
                        <br>
                        <p class="egft5">Content</p><br>
                        <div>
                            <textarea id="summernote" name="contents"></textarea>
                        </div>
                        <script>
                            $('#summernote').summernote({
                                placeholder: '내용을 입력해주세요',
                                tabsize: 2,
                                height: 190
                            });
                        </script>
                        <br>
                    </form>
                </main>
                <button class="custom-btn-b btn-9-b" formaction="/userService.html">등록</button>
                <button class="custom-btn-r btn-9-r" formaction="/userService.html">돌아가기</button>
            </section>
        </form>
    </div>
    <div class="left">
        <br><br><br><br><br>
        <p class="egft3">HyundaiCard</p><br>
        <p class="egft4">Click Card</p>
        <div>
            <figure class="slide1">
                <a href="">
                    <img class="imgg" src="/images/theBlack1.png">
                </a>
                <p class="egft3" style="color: black;">The Black</p>
            </figure>
            <figure class="slide1">
                <a href="">
                    <img class="imgg" src="/images/thePurple1.png">
                </a>
                <p class="egft3" style="color: rgb(95, 0, 95);">The Purple</p>
            </figure>
            <figure class="slide1">
                <a href="">
                    <img class="imgg" src="/images/theRed1.png">
                </a>
                <p class="egft3" style="color: rgb(187, 0, 0);">The Red</p>
            </figure>
            <figure class="slide1">
                <a href="">
                    <img class="imgg" src="/images/theGreen1.png">
                </a>
                <p class="egft3" style="color: green;">The Green</p>
            </figure>
            <figure class="slide1">
                <a href="">
                    <img class="imgg" src="/images/thePink1.png">
                </a>
                <p class="egft3" style="color: rgb(252, 71, 102);">The Pink</p>
            </figure>
        </div>
    </div>

    <!-- /main -->

    <footer>


    </footer>


</body>

</html>