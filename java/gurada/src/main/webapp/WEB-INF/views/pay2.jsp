<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

	<!-- End All Title Box -->

	<!-- Start Cart  -->


	<!-- End All Title Box -->

	<!-- Start Cart  -->
	<div class="cart-box-main">
		<div class="container">
		<h3>상품결제</h3>
			<form action="payment-rs.do" method="post" class="needs-validation" novalidate>
			<div class="row">
				<div class="col-sm-6 col-lg-6 mb-3">
					<div class="checkout-address">
							<div class="row">
								<div class="col-md-6 mb-3">
									<label for="firstName">주문자 성함 *</label> <input type="text"
										 class="form-control" id="firstName" placeholder="" value="${ UserIDInfo.name }"
										required>
									<div class="invalid-feedback">Valid first name is
										required.</div>
								</div>
							</div>
							<div class="mb-3">
								<label for="username">휴대폰 번호 *</label>
								<div class="input-group">
									<input type="text" class="form-control" id="username" value="${UserIDInfo.phoneNumber }" placeholder="" required>

								</div>
							</div>
							<div class="mb-3">
								<label for="email">Email*</label> <input type="email"
								class="form-control" id="email" value="${UserIDInfo.email }" placeholder="">

							</div>
							<div class="mb-3">
								<label for="address">주소 *</label> <input type="text"
								class="form-control" id="address" placeholder="" value="${UserIDInfo.address1 }" required>
								<div class="invalid-feedback">Please enter your shipping
									address.</div>
							</div>
							<div class="mb-3">
								<label for="address2">상세주소 *</label> <input type="text"
								class="form-control" id="address2" value="${UserIDInfo.address2 }" placeholder="">
							</div>


							<hr class="mb-4">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input"
									id="same-address"> <label class="custom-control-label"
									for="same-address">개인정보 수집 동의 *</label>
							</div>
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input"
									id="save-info"> <label class="custom-control-label"
									for="save-info">전자 금융거래 이용 약관*</label>
							</div>
							<hr class="mb-4">
							<div class="title">
								<span>결제수단</span>
							</div>
							<div class="d-block my-3">
								<div class="custom-control custom-radio">
									<input id="credit" name="paymentMethod" type="radio"
										class="custom-control-input" value="credit" checked required> <label
										class="custom-control-label" for="credit">신용카드</label>
								</div>
								<div class="custom-control custom-radio">
									<input id="debit" name="paymentMethod" type="radio"
										class="custom-control-input" value="deposit" required> <label
										class="custom-control-label"  for="debit">무통장 입금</label>
								</div>
								<div class="custom-control custom-radio">
									<input id="paypal" name="paymentMethod" type="radio"
										class="custom-control-input" value="account" required> <label
										class="custom-control-label" for="paypal">실시간 계좌이체</label>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 mb-3">
									<label for="cc-name">카드사 선택</label> <select class="wide w-100"
										id="country">
										<option value="Choose..." data-display="Select">카드 선택</option>
										<option value="United States">신한카드</option>
										<option value="United States">현대카드</option>
										<option value="United States">삼성카드</option>
										<option value="United States">5조카드</option>
									</select>
									<div class="invalid-feedback">Name on card is required</div>
								</div>
								<div class="col-md-6 mb-3">
									<label for="cc-number">카드번호</label> <input type="text"
									class="form-control" id="cc-number" placeholder="" required>
									<div class="invalid-feedback">Credit card number is
										required</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3 mb-3">
									<label for="cc-expiration">기간</label> <input type="text"
										class="form-control" id="cc-expiration" placeholder=""
										required>
									<div class="invalid-feedback">Expiration date required</div>
								</div>
								<div class="col-md-3 mb-3">
									<label for="cc-expiration">CVV</label> <input type="text"
									class="form-control" id="cc-cvv" placeholder="" required>
									<div class="invalid-feedback">Security code required</div>
								</div>
								<div class="col-md-6 mb-3">
									<div class="payment-icon">
										<ul>
											<li><img class="img-fluid"
												src="/resources/img/payment-icon/1.png" alt=""></li>
											<li><img class="img-fluid"
												src="/resources/img/payment-icon/2.png" alt=""></li>
											<li><img class="img-fluid"
												src="/resources/img/payment-icon/3.png" alt=""></li>
											<li><img class="img-fluid"
												src="/resources/img/payment-icon/5.png" alt=""></li>
											<li><img class="img-fluid"
												src="/resources/img/payment-icon/7.png" alt=""></li>
										</ul>
									</div>
								</div>
							</div>
							<hr class="mb-1">
					</div>
				</div>
				<div class="col-sm-6 col-lg-6 mb-3">
					<div class="row">
						<div class="col-md-12 col-lg-12">
							<div class="shipping-method-box">
								<div class="mb-4">
									<div class="col-md-12 col-lg-12">
										<div class="odr-box">
											<div class="title-left">
												<h3>장바구니 내역</h3>
											</div>
											<c:set var="sum" value="0"/>
												<table class="paywish">
													<tr>
														<th>상품명</th>
														<th>가격</th>
														<th>수량</th>
														<th>소계</th>
													</tr>
													<c:forEach items="${pay}" var="cart">
													<input type="hidden" name="memberNo" value="${cart.memberNo}"/>
													<input type="hidden" name="productNo" value="${cart.productId}"/>	
													<tr>
														<td>${cart.name}</td>
														<td>${cart.price}</td>
														<td>${cart.count}</td>
														<td>${cart.total}</td>
													</tr>
												<c:set var="sum" value="${sum+cart.total}"/>
												</c:forEach>
											</table>
										</div>
									</div>
									<div class="col-md-12 col-lg-12">
										<div class="order-box">
											<div class="title-left">
												<pre>          </pre>
												<h3>SLELCT ITEMS PRICE.</h3>
											</div>
											<div class="d-flex">
												<h4>TOTAL</h4>
												<div class="ml-auto font-weight-bold">${sum}</div>
											</div>
											<div class="d-flex">
												<h4>TAX</h4>
												<c:set var="sum1" value="${sum*0.1}"/>
												<fmt:parseNumber var="test" value="${sum1 }" integerOnly="true"/>
												<div class="ml-auto font-weight-bold">${test }</div>
												
											</div>
											<div class="d-flex">
												<h4>DELIVERY</h4>
												
												<div class="ml-auto font-weight-bold">2,500원</div>
											</div>
											<hr>
											<div class="d-flex gr-total">
												<h5>총 결제 금액</h5>
												<c:set var="sum2" value="${sum+sum1+2500}"/>
												<fmt:parseNumber var="test1" value="${sum2 }" integerOnly="true"/>
												<div  class="ml-auto h5">${test1} 원<input type="hidden" name="total" value="${test1 }"></div>
											</div>
											<hr>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-12 d-flex shopping-box">
				<input type="submit" value="결제하기"/>
			</div>
			</form>
		</div>

	</div>
	<!-- End Cart -->


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
</body>



</html>