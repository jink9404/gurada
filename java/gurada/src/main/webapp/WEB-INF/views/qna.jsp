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
				<div class="col-lg-8">
					<div class="page-breadcrumb">
						<h2>
							문의 게시판<span>.</span>
						</h2>
						<br /> <br /> <br />
						<div class="small-button">
							<button>
								<a href='qna-form.do'>문의 하기</a>
							</button>
						</div>
						<br />

						<div class="cart-page">
							<div class="container">
								<div class="cart-table">
									<table>
										<thead>
											<tr>
												<th width='200'>게시번호</th>
												<th width='250'>작성일</th>
												<th width='200'>작성자</th>
												<th width='900'>제목</th>
											</tr>
										</thead>

										<tbody>
										<c:forEach items="${boardList}" var="board">
											<tr>
												<td>${board.qnaNo}</td>
												<td>${board.writtenDate}</td>
												<td>${board.writter}</td>
												<td><a href="getBoard.do" class='a-href'>${board.title}</a></td>
											</tr>
											</c:forEach>
											
										</tbody>
									</table>
									<hr>
									<div class="td-a">
										<a href=''>[1]</a> <a href=''>[2]</a> <a href=''>[3]</a> <a
											href=''>[4]</a>
									</div>
								</div>

							</div>

						</div>
						<div class="search-1">
							<select class="select-2">
								<option>작성자</option>
								<option>제목</option>
							</select> <input type="text" class="input-tx">
							<button class='small-button2'>검색</button>
						</div>
					</div>
				</div>
				<div class="sh-width">
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
	</section>
	<!-- Footer Section Begin -->
	<jsp:include page="footer.jsp" />
	<!-- Footer Section End -->

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