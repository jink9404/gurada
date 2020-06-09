<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
</head>
<body>
<script src="./resources/js/jquery-3.3.1.min.js"></script>
<script src="./resources/js/jquery.cookie.js"></script>
<script src="./resources/js/jquery.slicknav.js"></script>
<script src="./resources/js/owl.carousel.min.js"></script>
<script src="./resources/js/jquery.magnific-popup.min.js"></script>
<script src="./resources/js/jquery.nice-select.min.js"></script>
<script src="./resources/js/mj.js"></script>
<script src="./resources/js/main.js"></script>



    <div id="preloder">
        <div class="loader"></div>
    </div>
    <!-- Search model -->
   <div class="search-model">
      <div class="h-100 d-flex align-items-center justify-content-center">
         <div class="search-close-switch">+</div>
         <form class="search-model-form">
            <input type="text" id="search-input" placeholder="검색"/>
         </form>
      </div>
   </div>
   <!-- Search model end -->

    <!--Login Header Section End -->
    <div class="login-header">
       <table>
           <tr>
                <td rowspan="2">
                    <div class="login">
                        <span><h2 class="text-white"/>로그인</h2></span>         
                        <form action="login.do" method="post" id="frm" name="frm">
                            <table>
                                <tr>
                                    <td>E_MAIL</td>
                                    <td colspan="2"><input type="text" id="email" name="email" placeholder=" email" size="30" 
                                     style="border-bottom:2px solid #D0D7DB; border-left:0px; border-right:0px; color:white; border-top:0px; background: transparent;"/></td>
                                </tr>
                                <tr>
                                    <td>PASSWORD</td>
                                    <td colspan="2"><input type="password"  id="login_password" name="password" placeholder="   PW" size="30"
                                    style="border-bottom:2px solid #D0D7DB; color:white; border-left:0px; border-right:0px; border-top:0px;background: transparent;"/></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <span class="login-btn"><input class="btn btn-success" type="submit" value="Log-In"/></span>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </td>
            </tr>
            <tr>
               <td>
                    <div class="sign-up" class="text-white">
                        <h2 class="text-white">계정이 없으신가요?</h2><br/>
                        <a href="signup-form.do"><button class="btn btn-primary">새 계정 만들기</button></a>
                    </div>
                </td>
            </tr>
        </table>
        <img id="login-header-up" src="./resources/img/arrow-up.png" alt="" width="25px"/>
    </div>
    <!--Login Header Section End -->
    
    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="container-fluid">
            
            <div class="inner-header">
                <div class="logo">
                    <a href="/basic/index2.jsp"><img src="./resources/img/logo.png" alt=""/></a>
                </div>
                <div class="header-right">
                    <a><img src="./resources/img/icons/search.png" alt="" class="search-trigger"/></a>&nbsp;&nbsp;
                    <c:if test="${not empty sessionScope.UserID }">
                    	<c:set var ="name" value="${sessionScope.UserID}"/>
                    		<c:choose>
                    			<c:when test="${ name eq '관리자'}">
                    				<span><a class="glyphicon glyphicon-cloud" href="product-list.do">상품리스트</a></span>
                    				<span><a class="glyphicon glyphicon-plus" href="resistration.do">상품등록</a></span>
                    				<span><a class="glyphicon glyphicon-calendar" href="bookinglist.do">매장예약 현황</a></span>
                    				<span><a class="glyphicon glyphicon-list" href="order-management.do">주문내역</a></span><br/>
                    				<span><a class="glyphicon glyphicon-list" href="member-management.do">회원관리</a></span>
                    			</c:when>
                    			<c:otherwise>
                       				<a href="my-page.do">
                        			<img src="./resources/img/icons/man.png" alt=""/>
                        			</a>
                        			<a href="cartselect.do">
                           			<img src="./resources/img/icons/bag.png" alt=""/>
                           			<span>${fn:length(cartSelect) }</span>
                       				</a>&nbsp;&nbsp;&nbsp;&nbsp;
                   				</c:otherwise>
                    		</c:choose>
                     </c:if> 
                </div>
                <div class="user-access">
                   <c:if test="${empty sessionScope.UserID }">
                       <a href="signup-form.do">회원가입</a> / 
                       <span id="login" class="in">로그인</span>
                   </c:if>
                   <c:if test="${not empty sessionScope.UserID}">
                      <span class="in">${sessionScope.UserID} 님 환영합니다.</span>
                      <a href="" id="logout">로그아웃</a>
                   </c:if>
                </div>
                <nav class="main-menu mobile-menu">
                    <ul>
                        <li><a class="active" href="/basic/index2.jsp">HOME</a></li>
                        <li><a href="categories.do?category=suit&gender=man">MAN</a>    
                            <ul class="sub-menu">
                                <li><a href="categories.do?category=suit&gender=man">슈트</a></li>
                                <li><a href="categories.do?category=outter&gender=man">아우터</a></li>
                                <li><a href="categories.do?category=bag&gender=man">가방</a></li>
                                <li><a href="categories.do?category=top&gender=man">상의</a></li>
                                <li><a href="categories.do?category=bottom&gender=man">하의</a></li>
                            </ul>
                        </li>
                        <li><a href="categories.do?category=suit&gender=women">WOMEN</a>    
                            <ul class="sub-menu">
                                <li><a href="categories.do?category=suit&gender=woman">슈트</a></li>
                                <li><a href="categories.do?category=dress&gender=woman">드레스</a></li>
                                <li><a href="categories.do?category=bag&gender=woman">가방</a></li>
                                <li><a href="categories.do?category=top&gender=woman">상의</a></li>
                                <li><a href="categories.do?category=bottom&gender=woman">하의</a></li>
                            </ul>
                        </li>
                        <li><a href="find-store.do">STORE</a></li>
                        <li><a href="qna.do">QUESTIONS</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        
    </header>
    <div class="header-info">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="header-item">
                        <img src="./resources/img/icons/delivery.png" alt=""/>
                        <p>10주년 구라다 Big sale</p>
                    </div>
                </div>
                <div class="col-md-4 text-left text-lg-center">
                    <div class="header-item">
                        <img src="./resources/img/icons/voucher.png" alt=""/>
                        <p>지금 회원가입시 전품목 20% sale</p>
                    </div>
                </div>
                <div class="col-md-4 text-left text-xl-right">
                    <div class="header-item">
                    <img src="./resources/img/icons/sales.png" alt=""/>
                    <p>Da Gurada.</p>
                </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>