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
					<h2>
						회원 정보 목록<span>.</span>
					</h2>
					<br />
						<h3>회원검색</h3>
						
							<form action="memberSearch.do" method="post">
							<div class="input-group">
								<input type="text" name="name" class="form-control"
									placeholder="회원명으로 검색하세요."> 
								<button class="btn btn-secondary" type="submit">찾기</button>
							</div>
								</form>
						
						<br>
						<table class="type09">
							<tbody>
								<tr>
									<th width='700'>E-mail</th>
									<th width='200'>이름</th>
									<th width='500'>휴대폰번호</th>
									<th width='200'>성별</th>
									
								</tr>
								<c:forEach items="${list}" var="member">
            					<tr>
               						<td>${member.email}</td>
               						<td>${member.name}</td> 
               						<td>${member.phoneNumber}</td>
               						<td>${member.gender}</td>
               						
								</tr>
								</c:forEach>
							</tbody>
							
						</table>
						<br />
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