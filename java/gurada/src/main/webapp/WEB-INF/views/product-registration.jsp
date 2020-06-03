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
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="./resources/style/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/style/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/style/nice-select.css" type="text/css">
    <link rel="stylesheet" href="./resources/style/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/style/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="./resources/style/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/style/style.css" type="text/css">
</head>

<body>
    <!-- header -->
    <jsp:include page="header.jsp"/>
   	<!-- header end -->
    <section class="page-add">
            <div class="container">
                
                	<h2>상품관리(재고현황)</h2><hr/>  
                       	<table border class='contect-form4'>
                      	  <tr class='tr'>
                          	<th>상품명</th>
                          	<th>가격</th>
                          	<th>사이즈</th>
                          	<th>재고현황</th>
                          	<th>성별</th>
                          	<th>카테고리</th>
                          	<th>이미지보기</th>
                          </tr>
                          <tr>
                          	<form action="prodselect.do" method="post" class="rjator">
                    	   		<table>
                            		<tr>
                                		<td>
                                        	<select name="gender">
                                        		<option value="남자">남자</option>
                                        		<option value="여자">여자</option>
                                        	</select>
                                        	<select name="categoryId">
                                        		<option>슈트</option>
                                        		<option>아우터</option>
                                        		<option>가방</option>
	                                        	<option>상의</option>
    	                                    	<option>하의</option>
        	                                </select>
            	                    	</td>
                	                	<td>
                    	               		<input type="text" name="name" placeholder="상품명으로 검색..."/>
                        	        	</td>
                            	    	<td>
                                	    	<input type="submit" value="상품 검색">            
                                		</td>
                                		<td>
                                			<button class="sinsang-jh">신상품 등록하기</button>
                                		</td>
                            		</tr>
                        		</table>
                        	</form>
                          	</tr>
                          
                       </table><br/><hr/> 
                       
            <!-- Js Plugins -->
               
            </div>
        </section>
    <!-- Contact Section End -->

    <!-- Footer Section Begin -->
    
    <!-- Footer Section End -->
	<jsp:include page="footer.jsp"/>
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