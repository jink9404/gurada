<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String id=request.getParameter("qnaNo");
	String title=request.getParameter("title");
	String writter=request.getParameter("writter");
	String contents=request.getParameter("contents");
	String password=request.getParameter("password");

%>
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
	<hr /><br><br><br><br><br><br>
	<div class="contact-section">
		<div class="container">
			<div class="row">
				<form action="updateBoard.do" class="contact-form" method='post'>
					<div class="re-sh">
					
						<h4>수정하시려면 비밀번호를 입력해주세요</h4>
						<input type="text" id='password1' name='password'>
						<input type='hidden' name='qnaNo' value='<%= id %>'>
						<input type='hidden' name='title' value='<%= title%>'>
						<input type='hidden' name='writter' value='<%=writter %>'>
						<input type='hidden' name='contents' value='<%= contents%>'>
						<input type='hidden' id='password2' value='<%= password%>'>
						<button type="submit" id='ubtn' class='small-button3'>게시글 수정</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<br><br><br><br><br><br><hr />
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
	<script src="./resources/js/sh.js"></script>
</body>

</html>