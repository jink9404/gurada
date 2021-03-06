<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    
	<!-- Search model end -->
	<jsp:include page="header.jsp"	flush = "false"/>

    <!-- Page Add Section Begin -->
    <section class="page-add">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="page-breadcrumb">
                        <h2>${category}<span>.</span></h2>

                    </div>
                </div>
                <div class="col-lg-8">
                    <img src="./resources/img/add.jpg" alt="">
                </div>
            </div>
        </div>
    </section>
    <!-- Page Add Section End -->

    <!-- Categories Page Section Begin -->
    <section class="categories-page spad">
        <div class="container">
    
            <div class="row">
            
            <c:forEach var="item" items="${productList }">    
				<c:if test="${item.quantity >0 }">
                <div class="col-lg-3 col-md-6">
                    <div class="single-product-item">
                        <a href="product-page.do?productId=${item.productId}&name=${item.name}"><figure>
                            <img src="/basic/resources/upload/${item.pfname }" alt="">
<!--                             <div class="p-status">new</div> -->
                        </figure></a>
                        <div class="product-text">
                            <a href="product-page.do?productId=${item.productId}&name=${item.name}">
                                <h6 style="text-align: center;">${item.name }</h6>
                            </a>
                            <p style="float: right">${item.price }원</p>
                        </div>
                    </div>
                </div>
                </c:if>
			</c:forEach>
                
                
            </div>
            
            <div style="display: block; text-align: center;">		
				<c:if test="${paging.startPage != 1 }">
					<a href="categories.do?category=${URLcategory }&gender=${gender }&nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
				</c:if>
				<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
					<c:choose>
						<c:when test="${p == paging.nowPage }">
							<b>${p }</b>
						</c:when>
						<c:when test="${p != paging.nowPage }">
							<a href="categories.do?category=${URLcategory }&gender=${gender }&nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
						</c:when>
					</c:choose>
				</c:forEach>
				<c:if test="${paging.endPage != paging.lastPage}">
					<a href="categories.do?category=${URLcategory }&gender=${gender }&nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
				</c:if>
			</div>
<!--             <div class="more-product"> -->
<!--                 <div class="row"> -->
<!--                     <div class="col-lg-12 text-center"> -->
<!--                         <a href="#" class="primary-btn">Load More</a> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
        </div>
    </section>
    <!-- Categories Page Section End -->

	<jsp:include page="footer.jsp"/>
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