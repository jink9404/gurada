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
	<jsp:include page="header.jsp" />
	<!-- Page Add Section Begin -->
	<section class="page-add">
		<div class="container">
			<div class="row">
				<div class="page-breadcrumb">
					<h2>
						회원 정보 목록<span>.</span>
					</h2>
					<br />
					<form method="get" action="">
						<h3>회원검색</h3>
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="회원명 혹은 ID를 입력해 주세요."> <span
								class="input-group-btn">
								<button class="btn btn-secondary" type="button">찾기</button>
							</span>
						</div>
						<br>
						<table class="type09">
							<tbody>
								<tr>
									<th></th>
									<th width='300'>이름</th>
									<th width='200'>나이</th>
									<th width='500'>ID</th>
									<th width='700'>휴대폰번호</th>
									<th width='800'>E-MAIL</th>
								</tr>
								<tr>
									<td><input type="checkbox" name="checkboxName"></td>
									<td>김지섭</td>
									<td>22</td>
									<td>salcho94</td>
									<td>010-5788-8298</td>
									<td>salcho94@naver.com</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="checkboxName"></td>
									<td>오재호</td>
									<td>50</td>
									<td>5박사</td>
									<td>010-5555-5555</td>
									<td>5555@naver.com</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="checkboxName"></td>
									<td>김명진</td>
									<td>77</td>
									<td>명왕성</td>
									<td>010-7777-7777</td>
									<td>mvc@naver.com</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="checkboxName"></td>
									<td>문소희</td>
									<td>11</td>
									<td>moon</td>
									<td>010-0000-0000</td>
									<td>moon@naver.com</td>
								</tr>
							</tbody>
							<div class="td-d">
								<a href=''>[1]</a> <a href=''>[2]</a> <a href=''>[3]</a> <a
									href=''>[4]</a>
							</div>
						</table>
						<br />
						<button class="small-button2">회원 정보 등록</button>
					</form>
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