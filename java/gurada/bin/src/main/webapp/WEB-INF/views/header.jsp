<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Yoga Studio Template">
    <meta name="keywords" content="Yoga, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Violet | Template</title>

    <!-- Google Font -->
   <!--  <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">
 -->
    <!-- Css Styles -->
   <!--  <link rel="stylesheet" href="./resources/style/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/style/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/style/nice-select.css" type="text/css">
    <link rel="stylesheet" href="./resources/style/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/style/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="./resources/style/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/style/style.css" type="text/css"> -->
</head>
<body>
    <div id="preloder">
        <div class="loader"></div>
    </div>
    
    <!-- Search model -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="검색">
			</form>
		</div>
	</div>
	<!-- Search model end -->

    <!-- Header Section Begin -->
    <div class="login-header">
       <table>
           <tr>
                <td rowspan="2">
                    <div class="login">
                        <span><h2 class="text-white">로그인</h2></span>
                        <form action="">
                            <table>
                                <tr>
                                    <td>E_MAIL</td>
                                    <td colspan="2"><input type="text" placeholder="   ID" size="30"></td>
                                </tr>
                                <tr>
                                    <td>PASSWORD</td>
                                    <td colspan="2"><input type="password" placeholder="   PW" size="30"></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <span><input type="checkbox"/> e-mail 저장하기</span>
                                        <span class="login-btn"><input class="btn btn-success" type="button" value="Log-In"></span>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </td>
                <td>
                    <div class="social-login">
                        <span><h2 class="text-white">소셜 로그인</h2></span><br>
                        <a href="#"><img src="./resources/img/logos/google_logo.png" width="50px" alt=""></a>
                    </div>
                </td>
            </tr>
            <tr>
               <td>
                    <div class="sign-up" class="text-white">
                        <h2 class="text-white">등록하지 않으셧나요?</h2><br>
                        <button class="btn btn-primary">새 계정 만들기</button>
                    </div>
                </td>
            </tr>
        </table>
        <img id="login-header-up" src="./resources/img/arrow-up.png" alt="" width="25px">
    </div>
    
    <header class="header-section">
        <div class="container-fluid">
            
            <div class="inner-header">
                <div class="logo">
                    <a href=""><img src="./resources/img/logo.png" alt=""></a>
                </div>
                <div class="header-right">
                    <img src="./resources/img/icons/search.png" alt="" class="search-trigger">
                    <img src="./resources/img/icons/man.png" alt="">
                    <a href="#">
                        <img src="./resources/img/icons/bag.png" alt="">
                        <span>1</span>
                    </a>
                </div>
                <div class="user-access">
                    <a href="#">회원가입</a> / 
                    <span id="login" class="in">로그인</span>
                </div>
                <nav class="main-menu mobile-menu">
                    <ul>
                        <li><a class="active" href="#">홈</a></li>
                        <li><a href="#">남자</a>    
                            <ul class="sub-menu">
                                <li><a href="#">수트</a></li>
                                <li><a href="#">아우터</a></li>
                                <li><a href="#">가방</a></li>
                                <li><a href="#">상의</a></li>
                                <li><a href="#">하의</a></li>
                            </ul>
                        </li>
                        <li><a href="#">여자</a>    
                            <ul class="sub-menu">
                                <li><a href="#">수트</a></li>
                                <li><a href="#">아우터</a></li>
                                <li><a href="#">가방</a></li>
                                <li><a href="#">상의</a></li>
                                <li><a href="#">하의</a></li>
                            </ul>
                        </li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        
    </header>
    <div class="header-info">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="header-item">
                        <img src="./resources/img/icons/delivery.png" alt="">
                        <p>Free shipping on orders over $30 in USA</p>
                    </div>
                </div>
                <div class="col-md-4 text-left text-lg-center">
                    <div class="header-item">
                        <img src="./resources/img/icons/voucher.png" alt="">
                        <p>20% Student Discount</p>
                    </div>
                </div>
                <div class="col-md-4 text-left text-xl-right">
                    <div class="header-item">
                    <img src="./resources/img/icons/sales.png" alt="">
                    <p>30% off on dresses. Use code: 30OFF</p>
                </div>
                </div>
            </div>
        </div>
    </div>
     
	<!-- <script src="./resources/js/jquery-3.3.1.min.js"></script> -->
    <!-- <script src="./resources/js/bootstrap.min.js"></script> -->
    <!-- <script src="./resources/js/jquery.magnific-popup.min.js"></script> -->
    <!-- <script src="./resources/js/jquery.slicknav.js"></script> -->
    <!-- <script src="./resources/js/owl.carousel.min.js"></script> -->
    <!-- <script src="./resources/js/jquery.nice-select.min.js"></script> -->
    <!-- <script src="./resources/js/mixitup.min.js"></script> -->
    <!-- <script src="./resources/js/main.js"></script> -->
</body>
</html>