<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>

<%

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

    <!-- header -->
    <jsp:include page="header.jsp"/>
   	<!-- header end -->
    <section class="product-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">              
                       <div class="product-content">
                        <h2>${detail.name}</h2><br/>
                        <div class="pc-meta"> 
                            <h5>Price </h5>
                            <h5><span id="price">${detail.price}</span></h5>
                        </div>
                        <p> ${detail.detail} </p>
                        <ul class="tags">
                            <li><span>카테고리 :</span> 남자 의류 </li>
                            <li><span>태그 :</span> man, shirt, dotted, elegant, cool</li>
                        </ul>
                        <div class="product-quantity">
                            <table>
                                <tr>
                                    <td width="255"></td>
                                    <td width="60">
                                        
                                    </td>
                                    <td>
                                        <div class="pro-qty">
                                            <input type="text" id="product-quantity" value="0">
                                        </div>
                                    </td>
                                </tr>
                            </table><br/><br/>
                            <table class='sh-td'>
                                <tr>
                                <td ><h4>합계</h4></td>
                                <td>
                                	<span id='total'></span>
                                </td>
                                </tr>
                            </table>
                            <hr/><br/>
                            <div class='buy'>
                                <table>
                                    <tr>
                                        <td>
                                           <button class = 'small-button2'>
                                               <a class="a">구매&nbsp;하기</a>
                                           </button>
                                        </td>
                                        <td>
                                           &nbsp;&nbsp;&nbsp;
                                           <form action="cart.do" method="post">
                                        		<input type="hidden" name="name" value="${detail.name}"/>
                                           		<input type="hidden" name="price" value="${detail.price}"/>
                                           		<input id="quantity" type="hidden" name="count" value=""/>
                                           		<input id="total1" type="hidden" name="total" value=""/>
                                           		<input type="hidden" name="productId" value="${detail.productId}"/>
                                           		<input type="hidden" name="memberNo" value="${sessionScope.memberNo}"/> 
                                                <input type="submit" class= 'small-button2' value="장바구니 추가"/>
                                           </form>
                                            
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>  
                </div>
                <div class="col-lg-6">
                    <div class="product-slider owl-carousel">
                        <div class="product-img">
                            <figure>
                                <img src='/basic/resources/upload/${detail.pfname }'/>
                                <div class="p-status">new</div>
                        	</figure>
                    	</div>
                	</div>
            	</div>
        	</div>
    	</div>
    </section>
    <!-- Product Page Section End -->

    <!-- Related Product Section Begin -->
    <section class="related-product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-left">
                    <div class="section-title">
                        <h2>추천 상품</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single-product-item">
                        <figure>
                            <a href="#"><img src="resources/img/products/img-1.jpg" alt=""></a>
                            <div class="p-status">new</div>
                        </figure>
                        <div class="product-text">
                            <h6>Green Dress with details</h6>
                            <p>$22.90</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-product-item">
                        <figure>
                            <a href="#"><img src="resources/img/products/img-2.jpg" alt=""></a>
                            <div class="p-status sale">sale</div>
                        </figure>
                        <div class="product-text">
                            <h6>Yellow Maxi Dress</h6>
                            <p>$25.90</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-product-item">
                        <figure>
                            <a href="#"><img src="resources/img/products/img-3.jpg" alt=""></a>
                            <div class="p-status">new</div>
                        </figure>
                        <div class="product-text">
                            <h6>One piece bodysuit</h6>
                            <p>$19.90</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-product-item">
                        <figure>
                            <a href="#"><img src="resources/img/products/img-4.jpg" alt=""></a>
                            <div class="p-status popular">popular</div>
                        </figure>
                        <div class="product-text">
                            <h6>Blue Dress with details</h6>
                            <p>$35.50</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Page Section End -->
	<jsp:include page="footer.jsp" />
	<!-- Js Plugins -->
	<script src="./resources/js/jquery-3.3.1.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<script src="./resources/js/jquery.cookie.js"></script>
	<script src="./resources/js/jquery.magnific-popup.min.js"></script>
	<script src="./resources/js/jquery.slicknav.js"></script>
	<script src="./resources/js/owl.carousel.min.js"></script>
	<script src="./resources/js/jquery.nice-select.min.js"></script>
	<script src="./resources/js/mixitup.min.js"></script>
	<script src="./resources/js/main.js"></script>
	<script src="./resources/js/jh.js"></script>
</body>

</html>