<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
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
	<!-- header -->
	<jsp:include page="header.jsp" />
	<!-- header end -->
	<section class="page-add cart-page-add">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="page-breadcrumb">
						<h2>장바구니</h2>
					</div>
				</div>
			</div>
		</div>
		<!-- Page Add Section End -->
		<!-- Cart Page Section Begin -->
		<div class="cart-page">
			<div class="container">
				<div class="cart-table">
				
					<table>
						<thead>
							<tr>
								<th class="product-h">상품정보</th>
								<th>가격</th>
								<th class="quan">수량</th>
								<th>합계</th>
								<th>취소</th>
							</tr>
						</thead>
						<tbody>
						<c:set var="sum" value="0"/>
						<c:forEach items="${cartSelect}" var="cart">
							<tr>
								<td class="product-col"><img
									src="img/product/product-1.jpg" alt="">
									<div class="p-title">
										<h5>${cart.name} </h5>
									</div>
								</td>
								<td class="price-col">${cart.price}</td>
								<td class="quantity-col">
									<div class="pro-qty">
										<input type="text" value="${cart.count}" name="count"/>
									</div>
								</td>
								<td class="price-col">${cart.total}</td>
								<td>
									<a href='cartDelete.do?id=${cart.wishlistNo}&memberNo=${cart.memberNo}'>X</a>
								</td>
							</tr>
							<c:set var="sum" value="${sum+cart.total }"/>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<hr />
		<div class="cart-page">
			<div class="container">
				<div class="cart-table">
				
					<table>
						<thead>
							<tr>
								<th>배송비</th>
								<th>세금</th>
								<th>합계 금액</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
						<c:set var="sum1" value="${sum*0.1}"/>
						<fmt:parseNumber var="test" value="${sum1}" integerOnly="true"/>
						<c:set var="sum2" value="${sum1+sum}"/>
						<fmt:parseNumber var="test1" value="${sum2}" integerOnly="true"/>
							<tr>
								<td width='250'>2500</td>
								<td width='250'>${test}</td>
								<td width='240'>${test1}</td>
								<td>
                                    <a href="pay.do"><button class="btn2">결제하기</button></a>
								</td>
							</tr>
						</tbody>
					</table>
					<a id="back" class="sh-a">쇼핑계속하기</a>
				</div>
			</div>
		</div>
	</section>
	<!-- Contact Section End -->

	<!-- Footer Section Begin -->

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
	<script src="./resources/js/jh.js"></script>
</body>

</html>