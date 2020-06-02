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
				<div class="col-lg-8">
					<div class="page-breadcrumb">
						<h2>
							신상품 등록<span>.</span>
						</h2>
						<hr />
						<form method="post" action="resistration1.do">
						<table class='contact-form3'>
							<tr class='tr'>
								<td>상품명</td>
								<td class='td1' colspan="2"><input type="text"
									placeholder="상품명" name="name"/></td>
							</tr>
							<tr class='tr'>
								<td>수량</td>
								<td class='td1' colspan="2"><input type="text" placeholder="수량" name="quantity"/>
								</td>
							</tr>
							<tr class='tr'>
								<td>Price</td>
								<td class='td1' colspan="2"><input type="text"
									placeholder="Price" name="price" /></td>
							</tr>
							<tr>
								<td>분류</td>
								<td>
									<!-- <form name="form1" id="defaultForm" method="post"> -->
										<!-- <select class="sel" name="color" onchange="changeSubject(this.form)"></select> 
										<select class="sel" name="size" onchange="changeContents(this.form)"></select> -->
									<select name="gender">
                                    	<option value="남자">남자</option>
                                        <option value="여자">여자</option>
                                    </select>
                                    <select name="category_id">
                                        <option>슈트</option>
                                        <option>아우터</option>
                                        <option>가방</option>
                                        <option>상의</option>
                                        <option>하의</option>
                                    </select>
									</form>
								</td>
							</tr>
							<tr class='tr'>
								<td>사이즈</td>
								<td>
									XS<input type="checkbox" value="XS" name="p_size" />&nbsp&nbsp&nbsp
									S<input type="checkbox" value="S" name="p_size" />&nbsp&nbsp&nbsp 
									M<input type="checkbox" value="M" name="p_size" />&nbsp&nbsp&nbsp 
									L<input type="checkbox" value="L" name="p_size" />&nbsp&nbsp&nbsp 
									XL<input type="checkbox" value="XL" name="p_size" />
								</td>
							</tr>
							<tr class="detail">
								<td>상품 설명</td>
								<td><textarea class="detail1" placeholder="detail" name="p_detail"></textarea>
								</td>
							</tr>
						</table>
						<input type="file" name="profile_pt" id="profile_pt" onchange="previewImage(this,'View_area')">
                     <div id='View_area'
                        style='position: relative; width: 400px; height: 400px; color: black; border: 1px solid black; dispaly: inline;'>
                     </div>
                     <input type="submit" value="상품등록" /> 
						</form>
					</div>
					<br /> <br />
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
	<script src="./resources/js/test.js"></script>
	
</body>

</html>