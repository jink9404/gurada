<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> 	
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Yoga Studio Template">
<meta name="keywords" content="Yoga, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Violet | Template</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="./resources/style/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="./resources/style/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="./resources/style/nice-select.css"
	type="text/css">
<link rel="stylesheet" href="./resources/style/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="./resources/style/magnific-popup.css"
	type="text/css">
<link rel="stylesheet" href="./resources/style/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="./resources/style/style.css"
	type="text/css">
</head>

<body class='color'>
	<jsp:include page="/WEB-INF/views/header.jsp" />
	<!-- Header End -->
	<hr />

	<div class='video'>
		<video muted autoplay loop>
			<source src="./resources/img/media/Clothing - 1006.mp4"
				type="video/mp4">
		</video>
	</div>
	<!-- Features Section Begin -->
	<section class="features-section spad">
		<div class="features-box">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="row">
							<div class="col-lg-12">
								<div class="single-box-item first-box">
									<img src="./resources/img/prada/gura1.jpg" alt="">
									<div class="box-text">
										<span class="trend-year">2020 gurada</span>
										<h2>Jewelry</h2>
										<span class="trend-alert">Trend Allert</span> <a href="#"
											class="primary-btn">살펴 보기</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="single-box-item large-box">
							<img src="./resources/img/prada/gura2.jpg" alt="">
							<div class="box-text">
								<span class="trend-year">2020 트렌드</span>
								<h2>Collection</h2>
								<div class="trend-alert">Trend Allert</div>
								<a href="#" class="primary-btn">살펴 보기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Features Section End -->
	<!-- Latest Product Begin -->
	<section class="latest-products spad">
		<div class="container">
			<div class="product-filter">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>신상 업데이트</h2>
						</div>
						<ul class="product-controls">
							<li data-filter="*">All</li>
							<li data-filter=".shoes">남성</li>
							<li data-filter=".bags">여성</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row" id="product-list">
            <c:forEach items="${viewlist}" var="list" begin="1" end="4">
            <div class="col-lg-3 col-sm-6 mix all accesories bags">
               <div class="single-product-item">
                  <figure>
                        <a href="product-page.do?productId=${list.productId}&name=${list.name}">
                     <img src="./resources/upload/${list.pfname}" alt="">
                        </a>
                     <div class="p-status">new</div>
                  </figure>
                  <div class="product-text">
                     <h6>${list.name} </h6>
                     <p>${list.price}</p>
                  </div>
               </div>
            </div>
            </c:forEach>
            <c:forEach items="${viewlist}" var="list" begin="5" end="8">
            <div class="col-lg-3 col-sm-6 mix all shoes accesories">
               <div class="single-product-item">
                  <figure>
                        <a href="product-page.do?productId=${list.productId}&name=${list.name}">
                     <img src="./resources/upload/${list.pfname}" alt="">
                        </a>
                     <div class="p-status">new</div>
                  </figure>
                  <div class="product-text">
                     <h6>${list.name} </h6>
                     <p>${list.price}</p>
                  </div>
               </div>
            </div>
            </c:forEach>
         </div>
		</div>
	</section>
	<!-- Latest Product End -->

	<hr />
	<!-- Footer Section Begin -->
	<jsp:include page="/WEB-INF/views/footer.jsp" />
	<!-- Footer Section End -->

	<!-- Js Plugins -->




	<script src="./resources/js/jquery-3.3.1.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<script src="./resources/js/jquery.magnific-popup.min.js"></script>
	<script src="./resources/js/owl.carousel.min.js"></script>
	<script src="./resources/js/jquery.nice-select.min.js"></script>
	<script src="./resources/js/mixitup.min.js"></script>
	<script src="./resources/js/jquery.slicknav.js"></script>
	<script src="./resources/js/main.js"></script>


</body>

</html>