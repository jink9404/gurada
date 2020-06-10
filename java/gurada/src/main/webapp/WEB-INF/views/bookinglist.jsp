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
	<section class="page-add">
		<div class="container">
			<div class="row">
				<div class="page-breadcrumb">
					<h2>
						매장 방문 예약 현황<span>.</span>
					</h2>
					<br />
					<form method="get" action="booking-search.do">
						<h3>예약 검색</h3>
						<br>
						<div>
							<select class="form-control" name='search'
								style="width: 100px; height: 44px; display: inline-block">
								<option value='oname'>성함</option>
								<option value='otel'>연락처</option>
							</select> <input class="col-form-label" type="text" size=80 name='value'>

							<button class='small-button2' type='submit'>검색</button>
						</div>
						<hr>
						<div class="cart-table">
							<table class='table-hover'>
								<thead>
									<tr>
										<th width='300'>예약자 성함</th>
										<th width='300'>방문날짜</th>
										<th width='300'>방문시간</th>
										<th width='300'>연락처</th>
										<th width='350'>매장명</th>
										<th width='300'>취소</th>
									</tr>
								</thead>

								<c:forEach items="${search}" var="search">
									<tbody>
										<tr>
											<td>${search.fullName}</td>
											<td>${search.bookingDate}</td>
											<td>${search.time}</td>
											<td>${search.phoneNumber}</td>
											<td>${search.name}</td>
											<td><a
												href='booking-delete.do?bookingId=${search.bookingId}'>예약
													취소</a></td>
										</tr>
								</c:forEach>


								</tbody>
							</table>
							<hr />
						</div>
						<br />
					</form>
				</div>
			</div>
		</div>
	</section>
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
	<script src="./resources/js/test.js"></script>
	<script src="./resources/js/sh.js"></script>

</body>

</html>