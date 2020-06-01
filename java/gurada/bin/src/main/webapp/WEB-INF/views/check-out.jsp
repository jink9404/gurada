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

<body>
	<!-- Header -->
	<jsp:include page="header.jsp" />
	<!-- Header End -->
	<!-- Page Add Section Begin -->
	<section class="page-add">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="page-breadcrumb">
						<h2>
							반품/ 교환 <span>.</span>
						</h2>
					</div>
				</div>
			</div>
		</div>

		<button class='small-btn-sh'>최근 구매 이력</button>
		<!-- Page Add Section End -->

		<!-- Contact Section Begin -->
		<div class="contact-section">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<form action="#" class="contact-form">
							<div class="row">

								<div class="col-lg-6">
									<input type="text" placeholder="e-mail 입력">
								</div>
								<div class="col-lg-6">
									<input class="glyphicon glyphicon-user" type="text"
										placeholder="주문번호 입력">

								</div>
								<div class="col-lg-12">
									<input type="text" placeholder="상품명">
									<textarea placeholder="반품/교환 사유"></textarea>
								</div>
								<div class="col-lg-12 text-right" class="small-button">
									<button type="submit">반품/교환 신청</button>

								</div>
							</div>
						</form>
					</div>
					<div class="col-lg-3 offset-lg-1">
						<div class="contact-widget">
							<div class="cw-item">
								<h5>고객센터</h5>
								<ul>
									<li>+82 (603)535-4592</li>
									<li>+82 (603)535-4556</li>
								</ul>
							</div>
							<div class="cw-item">
								<h5>E-mail</h5>
								<ul>
									<li>contact@gurada.com</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- Footer Section End -->
	<jsp:include page="footer.jsp" />
	<!-- Js Plugins -->
	<script src="./resources/js/jquery-3.3.1.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<script src="./resources/js/jquery.magnific-popup.min.js"></script>
	<script src="./resources/js/jquery.slicknav.js"></script>
	<script src="./resources/js/owl.carousel.min.js"></script>
	<script src="./resources/js/jquery.nice-select.min.js"></script>
	<script src="./resources/js/mixitup.min.js"></script>
	<script src="./resources/js/main.js"></script>
</body>

</html>