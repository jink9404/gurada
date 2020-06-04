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
                  <form action="resistration1.do" method="post" enctype="multipart/form-data">
                     <table class='contact-form3'>
                        <tr class='tr'>
                           <td>상품명</td>
                           <td class='td1' colspan="2"><input type="text" name="name"
                              placeholder="상품명"  class="test"/></td>
                        </tr>
                        <tr class='tr'>
                           <td>수량</td>
                           <td class='td1' colspan="2"><input type="text" name="quantity"
                              placeholder="수량" class="test"/></td>
                        </tr>
                        <tr class='tr'>
                           <td>Price</td>
                           <td class='td1' colspan="2"><input type="text"
                              name="price" placeholder="price" class="test"/></td>
                        </tr>
                        <tr>
                           <td>분류</td>
                           <td><select name="gender" class="test">
                                 <option value="남자">남자</option>
                                 <option value="여자">여자</option>
                           </select> <select name=categoryId class="test">
                                 <option value="슈트">슈트</option>
                                 <option value="아우터">아우터</option>
                                 <option value="가방">가방</option>
                                 <option value="상의">상의</option>
                                 <option value="하의">하의</option>
                           </select></td>
                        </tr>
                        <tr class='tr'>
                           <td>사이즈</td>
                           <td>XS <input type="checkbox" value="XS" name="pSize" class="test" />&nbsp&nbsp&nbsp
                              S <input type="checkbox" value="S" name="pSize" class="test"/>&nbsp&nbsp&nbsp
                              M <input type="checkbox" value="M" name="pSize" class="test"/>&nbsp&nbsp&nbsp
                              L <input type="checkbox" value="L" name="pSize" class="test"/>&nbsp&nbsp&nbsp
                              XL <input type="checkbox" value="XL" name="pSize" class="test"/>
                           </td>
                        </tr>
                        <tr class="detail">
                           <td>상품 설명</td>
                           <td><textarea class="detail1" placeholder="detail" name="detail" class="test"></textarea>
                           </td>
                        </tr>
                     </table>
                      <input type="file"
                        name="file" id="profile_pt" class="test"
                        onchange="previewImage(this,'View_area')" >
                     <div id='View_area'
                        style='position: relative; width: 400px; height: 400px; color: black; border: 1px solid black; dispaly: inline;'>
                     </div>
                     <input type="submit" value="상품등록" />
                   
                  </form>
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
	<script src="./resources/js/test.js"></script>
	
</body>

</html>