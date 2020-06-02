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
	<!-- Header Begin -->
	<jsp:include page="header.jsp" />
	<!-- Header End -->
	<!-- Page Add Section Begin -->
	<section class="page-add">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="page-breadcrumb">
						<h2>
							마이 페이지<span>.</span>
						</h2>
						

						<div class="small-button btn-2">
							<button>내정보 보기</button>
							<a href="update_member.do"><button>회원정보 변경</button></a>
						</div>
						<br /> <br /> <br />
						<h4>주문 내역</h4>
						<br /> <br />
					</div>
				</div>

			</div>
			<div class="cart-page">
				<div class="container">
					<div class="cart-table">
						<table>
							<thead>
								<tr>
									<th>주문일자</th>
									<th>상품명</th>
									<th>가격</th>
									<th>주소지</th>
									<th>주문상태</th>
									<th>주문 취소</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td>2020/05/20</td>
									<td><img src='/resources/img/cart/cart-1.jpg' /> 브라운 미니백</td>
									<td>150,000원</td>
									<td>서울시 은평구</td>
									<td>배송중</td>
									<td class="small-button">
										<button>X</button>
									</td>
								</tr>
								<tr>
									<td>2020/05/20</td>
									<td><img src='/resources/img/cart/cart-1.jpg' /> 브라운 미니백</td>
									<td>150,000원</td>
									<td>서울시 은평구</td>
									<td>배송중</td>
									<td class="small-button">
										<button>X</button>
									</td>
								</tr>
								<tr>
									<td>2020/05/20</td>
									<td><img src='/resources/img/cart/cart-1.jpg' /> 브라운 미니백</td>
									<td>150,000원</td>
									<td>서울시 은평구</td>
									<td>배송중</td>
									<td class="small-button">
										<button>X</button>
									</td>
								</tr>
							</tbody>
						</table>
						<hr>
					</div>
				</div>

			</div>
			<div class="td-a">
				<a href=''>[1]</a> <a href=''>[2]</a> <a href=''>[3]</a> <a href=''>[4]</a>
			</div>
		</div>
	</section>

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