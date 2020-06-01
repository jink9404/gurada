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
	<!-- header -->
	<jsp:include page="header.jsp" />
	<!-- header end -->
	<section>
		<!-- End All Title Box -->

		<!-- Start Cart  -->
		<br />
		<br />
		<br />
		<div class="cart-box-main">
			<div class="container">
				<div class="row new-account-login">
					<div class="col-sm-6 col-lg-6 mb-3">
						<div class="title-left">
							<h3>회원 가입</h3>
						</div>
					</div>
					<div class="col-sm-6 col-lg-6 mb-3">
						<form class="mt-3 collapse review-form-box" id="formRegister">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="InputName" class="mb-0">First Name</label> <input
										type="text" class="form-control" id="InputName"
										placeholder="First Name">
								</div>
								<div class="form-group col-md-6">
									<label for="InputLastname" class="mb-0">Last Name</label> <input
										type="text" class="form-control" id="InputLastname"
										placeholder="Last Name">
								</div>
								<div class="form-group col-md-6">
									<label for="InputEmail1" class="mb-0">Email Address</label> <input
										type="email" class="form-control" id="InputEmail1"
										placeholder="Enter Email">
								</div>
								<div class="form-group col-md-6">
									<label for="InputPassword1" class="mb-0">Password</label> <input
										type="password" class="form-control" id="InputPassword1"
										placeholder="Password">
								</div>
							</div>
							<button type="submit" class="btn hvr-hover">Register</button>
						</form>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 col-lg-6 mb-3">
						<div class="checkout-address">

							<form class="needs-validation" novalidate>
								<div class="row">
									<div class="col-md-6 mb-3">
										<label for="firstName">이름 *</label> <input type="text"
											class="form-control" id="firstName" placeholder="" value=""
											required> <br> <input type="radio" name="gender">
										남성 <input type="radio" name="gender"> 여성

									</div>


								</div>
								<br>
								<div class="mb-3">
									<label for="username">비밀번호 *</label>
									<div class="input-group">
										<input type="text" class="form-control" id="username"
											placeholder="" required>

									</div>
								</div>
								<div class="mb-3">
									<label for="username">비밀번호 확인 *</label>
									<div class="input-group">
										<input type="text" class="form-control" id="username"
											placeholder="" required>

									</div>
								</div>
								<div class="mb-3">
									<label for="email">이메일*</label> <input type="email"
										class="form-control" id="email" placeholder=""><sup>계정으로
										사용할 이메일을 등록하세요</sup>

								</div>
								<div class="mb-3">
									<label for="address">전화번호(-없이) *</label> <input type="text"
										class="form-control" id="address" placeholder="" required>

								</div>



								<hr class="mb-4">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="same-address"> <label class="custom-control-label"
										for="same-address">본인은 <a href="#">개인 정보 처리방침</a> 을 읽고
										이에 동의 합니다. 본인은 만 14세 이상임을 확인합니다.(필수)
									</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="save-info"> <label class="custom-control-label"
										for="save-info"><a href="#">개인정보의 수집 및 이용</a>에 대한
										동의(필수)</label>
								</div>
								<hr class="mb-4">

								<table>
									<tr>
										<td>마케팅(선택)</td>
									</tr>
									<tr>
										<td><input type="radio" name="marketting"><span>&nbsp;동의합니다.</span></td>
										<td><input type="radio" name="marketting" checked><span>&nbsp;동의하지
												않습니다.</span></td>
									</tr>
									<tr>
										<td>프로파일링 (선택)</td>
									</tr>
									<tr>
										<td><input type="radio" name="profiling"><span>&nbsp;동의합니다</span></td>
										<td><input type="radio" name="profiling" checked><span>&nbsp;동의하지
												않습니다.</span></td>
									</tr>
								</table>
								<br>
								<br>
								<div class="signup-btn">
									<button class="btn btn-success">회원가입</button>
									<button class="btn btn-dark">취소</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br />
		<br />
		<br />
		<br />
		<br />
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