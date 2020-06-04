<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<div class="col-lg-3 col-sm-6 mix all shoes accesories">
					<div class="single-product-item">
						<figure>
							<a href="#"><img
								src="./resources/img/prada/남자-상의/프라다 카라티2.JPG" alt=""></a>
							<div class="p-status">new</div>
						</figure>
						<div class="product-text">
							<h6>구라다 카라티셔츠</h6>
							<p>50,000원</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 mix all shoes accesories">
					<div class="single-product-item">
						<figure>
							<a href="#"><img
								src="./resources/img/prada/남자-상의/구찌 마몬트 카라티2.JPG" alt=""></a>
							<div class="p-status sale">sale</div>
						</figure>
						<div class="product-text">
							<h6>구짜 마몬트 카라티셔츠</h6>
							<p>50,000원</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 mix all accesories bags">
					<div class="single-product-item">
						<figure>
							<a href="#"><img
								src="./resources/img/prada/여자-상의/발렌시아가 파리티 상세5만.JPG" alt=""></a>
							<div class="p-status">new</div>
						</figure>
						<div class="product-text">
							<h6>발렌시애기 파라티셔츠</h6>
							<p>50,000원</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 mix all accesories bags">
					<div class="single-product-item">
						<figure>
							<a href="#"><img
								src="./resources/img/prada/여자-드레스/생로랑 미니드레스2.JPG" alt=""></a>
							<div class="p-status popular">popular</div>
						</figure>
						<div class="product-text">
							<h6>생로랑 미니드레스</h6>
							<p>100,000</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 mix all accesories bags">
					<div class="single-product-item">
						<figure>
							<a href="#"><img
								src="./resources/img/prada/여자-하의/프라다 가죽 미니스커드2.JPG" alt=""></a>
							<div class="p-status">new</div>
						</figure>
						<div class="product-text">
							<h6>구라다 가죽 미니 스커트</h6>
							<p>80,000</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 mix all accesories bags">
					<div class="single-product-item">
						<figure>
							<a href="#"><img src="./resources/img/products/img-6.jpg"
								alt=""></a>
							<div class="p-status sale">sale</div>
						</figure>
						<div class="product-text">
							<h6>구짜 이너웨어</h6>
							<p>70,000</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 mix all shoes accesories">
					<div class="single-product-item">
						<figure>
							<a href="#"><img
								src="./resources/img/prada/남자-수트/구찌 하운드투스 시어서커-1.JPG" alt=""></a>
						</figure>
						<div class="product-text">
							<h6>구짜 하운드투스 시어서커 수트</h6>
							<p>200,000원</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 mix all accesories bags">
					<div class="single-product-item">
						<figure>
							<a href="#"><img src="./resources/img/products/img-8.jpg"
								alt=""></a>
							<div class="p-status popular">popular</div>
						</figure>
						<div class="product-text">
							<h6>생로랑 블루 드레스</h6>
							<p>80,000원</p>
						</div>
					</div>
				</div>
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