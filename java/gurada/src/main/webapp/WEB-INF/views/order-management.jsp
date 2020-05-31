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
    <jsp:include page="header.jsp"/>
		<!-- Page Add Section Begin -->
        <section class="page-add"> 
            <div class="container">
                <div class="row">
                    <div class="page-breadcrumb">
                        <h2>주문 관리<span>.</span></h2>
                        <br/>
                        <br/>
                        <table class="addr-table">
                            <tr>
                                <td width='500'>
                                    <h4>배송상태</h4><input type="radio" id="one">
                                    <label for="one">미처리</label>
                                    <input type="radio" id="one">
                                    <label for="one">배송중</label>
                                    <input type="radio" id="one">
                                    <label for="one">배송완료</label>
                                    <br/><br/>
                                 </td>
                                 <td width='500'>
                                    <h4>결제 수단</h4><input type="radio" id="one">
                                    <label for="one">신용카드</label>
                                    <input type="radio" id="one">
                                    <label for="one">실시간 계좌이체</label>
                                    <input type="radio" id="one">
                                    <label for="one">무통장 입금</label>
                                     <br/><br/>
                                 </td>
                            </tr>
                        </table>
                        <br/>
                        <div>
                            <h4>주문 날짜</h4>
                            <input type="date" >
                            <span class="small-button">
                                <button>조회</button>
                            </span>
                        </div>
                        <br/><br/>
                        <form class="container">
                            <table border="1" class='td-fix'>
                                <tr>
                                    <td width='130'>주문 일자</td>
                                    <td width='130'>주문 번호</td>
                                    <td width='120'>주문자</td>
                                    <td width='200'>상품명</td>
                                    <td width='170'>결제 금액</td>
                                    <td width='170'>결제 방법</td>
                                    <td width='150'>배송 상태</td>
                                </tr>
                                 <tr>
                                    <td>2020/05/15</td>
                                    <td>1234565</td>
                                    <td>홍길동</td>
                                    <td>아구찜 티셔츠</td>
                                    <td>200,000</td>
                                    <td>실시간 계좌이체</td>
                                    <td>배송완료</td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <br/><br/>
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