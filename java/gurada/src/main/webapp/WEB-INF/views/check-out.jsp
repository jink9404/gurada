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
    <!-- Header -->
	<jsp:include page="header.jsp"/>
    <!-- Header End -->
    <!-- Page Add Section Begin -->       
    <section class="page-add">
    	<div class="container">
        	<h2>반품페이지</h2>
           	<div class="row">                        
            	<div class="page-breadcrumb">
                	<table>                
	                    <tr>
	                    	<td colspan="8" ><h3>반품절차를 진행하려면 E-Mail과 주문번호를 입력하세요</tr>
               		</table>
              	</div>
         	</div> <hr>
		    <form>
		        <table>
        		    <tr>
                		<td><p class="in-name">E-Mail</p></td>
                		<td><input type="text" placeholder="E-Mail입력"></td>
            		</tr>
		            <tr>
        		        <td><p class="in-name">주문번호</p></td>
               		 	<td><input type="text" placeholder="주문번호입력">
                			<input class="col-form-label-sm" type="button" value="최근 구매 이력">
                		</td>
            		</tr>
            		<tr>
                		<td><p class="in-name">반품 상품명</p></td>
                		<td> <textarea cols="60" rows="3"></textarea> 
 	                    </td>
      		        </tr>
            		<tr>
		                <td><p class="in-name">반품 사유</p></td>
		                <td> <textarea cols="60" rows="5"></textarea></td>
            		</tr>
            		<tr>
                		<td></td>
                		<td colspan="2"><input class="btn2" type="button" value="반품신청"></td>
            		</tr>
        		</table>
    		</form>
        </div>
    </section>
    
  
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