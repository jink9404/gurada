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

<body>
	<jsp:include page="header.jsp" />
	<!-- Page Add Section Begin -->
	<section class="page-add">
		<div class="container">
			<div class="row">
				<div class="page-breadcrumb">
					<h2>
						주문 관리<span>.</span>
					</h2>
					<br /> <br /> <br />
					<hr />
					<form action='order-manageList.do'>
						<table class="addr-table">
							<tr>
								<td width='400'><label>결제 방법</label>&nbsp;&nbsp;<select
									class="form-control" name='paymentMethod'
									style="width: 300px; height: 44px; display: inline-block">
										<option value='credit'>신용카드</option>
										<option value='deposit'>무통장입금</option>
										<option value='account'>실시간 계좌이체</option>
								</select></td>
								<td width='400'><label>주문 날짜</label>&nbsp;&nbsp;<input
									type="date" name='orderDate'
									style="width: 300px; height: 44px; display: inline-block">
								</td>
								<td>
									<button type='submit' class="small-button">조회</button>
								</td>
							</tr>
						</table>
					</form>


					<hr />
					<br /> <br />
					<div class="cart-page">
						<div class="container">
							<div class="cart-table">
								<table>
									<thead>
										<tr>
											<th>주문일자</th>
											<th>주문번호</th>
											<th>주문자성함</th>
											<th>상품명</th>
											<th>결제금액</th>
											<th>결제방법</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach items="${order}" var="order">
											<tr>
												<td>${order.orderDate}</td>
												<td>${order.orderNo}</td>
												<td>${order.mname}</td>
												<td>${order.pname}</td>
												<td>${order.total}</td>
												<td>${order.payment}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<hr>
							</div>
						</div>
						<div class="td-a">
							<a href=''>[1]</a> <a href=''>[2]</a> <a href=''>[3]</a> <a
								href=''>[4]</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<br />
	<br />
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