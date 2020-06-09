<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>

<body>
    <!-- header -->
    <jsp:include page="header.jsp"/>
   	<!-- header end -->
   	<c:if test="${not empty sessionScope.UserID }">
   <div class="cart-box-main">
        <div class="container">
            <div class="row new-account-login">
                <div class="col-sm-6 col-lg-6 mb-3">
                    <div class="title-left">
                        <h3>회원 정보 수정 </h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-lg-6 mb-3">
                    <div class="checkout-address">
                       
                        <form class="needs-validation" action="updateMember.do" id="updateform" method="post">
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="firstName">이름 *</label>
                                    <input type="text" class="form-control"  placeholder="" value="${sessionScope.UserIDInfo.name }" required disabled>
                                </div>
                            </div>
                            <div >
                            	<label for="email">성별*</label>
                            	<c:if test="${sessionScope.UserIDInfo.gender eq '남자' }">
	                                <input type="radio"  value="남자" name="gender" checked>남성
	                                <input type="radio"  value="여자" name="gender">여성                                
                                </c:if>
                                <c:if test="${sessionScope.UserIDInfo.gender eq '여자' }">
	                                <input type="radio"  value="남자" name="gender">남성
	                                <input type="radio"  value="여자" name="gender" checked>여성                                
                                </c:if>
                            </div>
                            <div class="mb-3">
                                <label for="email">이메일*</label>
                                <input type="hidden" name="email" value="${sessionScope.UserIDInfo.email }">
                                <input type="email" class="form-control"  placeholder="" value="${sessionScope.UserIDInfo.email }" disabled>
                            </div>
                           
                            <div class="mb-3">
                                <label for="username">새비밀번호 *</label><sup>비밀번호는 8~16자여야 합니다</sup>
                                <div class="input-group">
                                    <input type="password" name="password" id="update_password1" class="form-control"  placeholder="" pattern="[a-zA-Z0-9]{8,16}" title="영문자와 숫자만 가능합니다. 8~16자리" required>
                                    
                                </div>
                            </div>
                            <div class="mb-3">
                                <div class="input-group" id="pass">
                                    
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="username">새 비밀번호 확인 *</label>
                                <div class="input-group">
                                    <input type="password" class="form-control" id="update_password2"  placeholder="" required>
                                    
                                </div>
                            </div>
                            <div class="mb-3">
                                <div class="input-group" id="passcheck">
                                    
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="address">전화번호(-없이) *</label>
                                <input type="text" name="phoneNumber" class="form-control" pattern="[0-9]{10,13}" title="숫자만 입력하세요." value="${sessionScope.UserIDInfo.phoneNumber }" placeholder="" required>
                            </div>
                            <div class="mb-3">
                            <label for="address">주소 </label>
                            	<div class="col-md-6 mb-3">
                            	<input type="text" id="updatepostcode" placeholder="우편번호" name="postCode" class="form-control" value="${sessionScope.UserIDInfo.postCode }" size="6"/>
                            	</div>
                            	<input type="text" id="updateaddress" placeholder="주소" name="address1" value="${sessionScope.UserIDInfo.address1 }" class="form-control">
                            	<input type="text" id="updatedetailaddress" placeholder="상세주소" name="address2" value="${sessionScope.UserIDInfo.address2 }" class="form-control">
                            </div>
                    		<input class="btn btn-info" id="findpostcode" type="button" value="우편번호 검색">
                            <hr class="mb-4">
		                    <table>
		                        <tr>
		                            <td>마케팅(선택)</td>
		                        </tr>
		                        <tr>
		                            <td><input type="radio" name="marketting"><span>&nbsp;동의합니다.</span></td>
		                            <td><input type="radio" name="marketting" checked><span>&nbsp;동의하지 않습니다.</span></td>
		                        </tr>
		                        <tr>
		                            <td>프로파일링 (선택)</td>
		                        </tr>
		                        <tr>
		                            <td><input type="radio" name="profiling"><span>&nbsp;동의합니다</span></td>
		                            <td><input type="radio" name="profiling" checked><span>&nbsp;동의하지 않습니다.</span></td>
		                    	</tr>
		             	   </table>
            			    <br><br>
				            <div class="update-btn">
				                <input type="submit" value="수정" class="btn btn-success"/>
				                <button class="btn btn-dark">취소</button>
				            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </c:if>
    <c:if test="${empty sessionScope.UserID }">
    <h1>잘못된접근</h1>
    
    </c:if>
    <br><br><br><br><br>
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