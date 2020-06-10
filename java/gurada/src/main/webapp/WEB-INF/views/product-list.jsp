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
    
    
     <body>
     <div class="container">
      <h1>상품관리(재고현황)</h1>
    <form action="delete.do" method="post">  
   <table class="table table-hover">
         <tr>
            <th></th>
            <th bgcolor="white" width="100">상품명</th>
            <th bgcolor="white" width="200">가격</th>
            <th bgcolor="white" width="150">사이즈</th>
            <th bgcolor="white" width="150">재고</th>
            <th bgcolor="white" width="100">성별</th>
            <th bgcolor="white" width="100">옷종류</th>
            <!-- 추가 -->
            <th bgcolor="white" width="150">이미지</th>
                     
         </tr>
        
         <c:forEach items="${prodlist}" var="list">
            <!-- 프라퍼티이름 변경 -->
            <tr>
               <td><input type="checkbox" name="delete" value="${list.productId}" style="width:15px" ></td>
               <td align="left"><a href="update.do?productId=${list.productId}">${list.name} </a></td> 
               <td>${list.price}</td>
               <td>${list.pSize}</td>
               <td>${list.quantity}</td>
               <td>${list.gender}</td>
               <td>${list.categoryId}</td>  
               <!-- 추가 -->
               <td>
               
                <c:choose>
                   <c:when test="${list.pfsize==0}">첨부파일 없음</c:when>
                   <c:otherwise>
                       <a href='resources/upload/${list.pfname}'>
                       <img src='resources/img/disk.gif'>${list.pfname}  
                    </a>  
                   </c:otherwise>
                </c:choose>                 
               </td>   
            </tr>
            
         </c:forEach>
       <input type="submit" value="삭제">
      </table>
      </form>
        <br>
       <form action="product-search.do" method="post">
        <input type="text" name="name" placeholder="상품명을 입력하세요.">
         <input type="submit" value="상품 검색" >    
         </form>
     	
  
    </div>
       
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