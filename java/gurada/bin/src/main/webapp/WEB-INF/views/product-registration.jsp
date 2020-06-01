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
                <div class="row">
                    <div class="col-lg-8">
                        <div class="page-breadcrumb">
                             <h2>상품관리(재고현황)<span>.</span></h2><hr/>  
                            <table  class='contact-form2'>
                                <tr class='tr'>
                                    <td>
                                       	 상품명
                                    </td>
                                    <td class='td1' colspan="2">
                                        <input type="text"/>
                                    </td>
                                </tr>
                                <tr class='tr'>
                                    <td >
                                        Price
                                    </td>
                                    <td class='td1' colspan="2">
                                        <input type="text"/>
                                    </td>
                                </tr>
                                <tr class='tr'>
                                    <td>
                                        	재고현황
                                    </td>
                                    <td >
                                        <table class="worhtable-jh">
                                            <tr>
                                                <td>XS</td>
                                                <td>S</td>
                                                <td>M</td>
                                                <td>L</td>
                                                <td>XL</td>
                                                <td>Free</td>
                                            </tr>
                                            <tr>
                                                <td><input type="text" disabled value="-"/></td>
                                                <td><input type="text" disabled value="-"/></td>
                                                <td><input type="text" disabled value="-"/></td>
                                                <td><input type="text" disabled value="-"/></td>
                                                <td><input type="text" disabled value="-"/></td>
                                                <td><input type="text" disabled value="-"/></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    <br/><br/>
                    <div class='small-button-sh'>
                        <table>
                            <tr>
                                <td>
                                   <form name="form1" id="defaultForm" method="post">
                                        <select class="sel" name="color" onchange="changeSubject(this.form)"></select>
                                        <select class="sel" name="size" onchange="changeContents(this.form)"></select>
                                    </form>
                                </td>
                                <td>
                                    <input type="text"/>
                                </td>
                                <td>
                                    <button>상품 검색</button>            
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <table class=pro_img-jh border="1">
                    <tr>
                        <td><img src="img/product/%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png"></td>
                    </tr>
                </table>
                <div>
                    <button class="sinsang-jh">신상품 등록하기</button>            
                </div>

                <!-- Js Plugins -->
                <script src="js/jquery-3.3.1.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
                <script src="js/jquery.magnific-popup.min.js"></script>
                <script src="js/jquery.slicknav.js"></script>
                <script src="js/owl.carousel.min.js"></script>
                <script src="js/jquery.nice-select.min.js"></script>
                <script src="js/mixitup.min.js"></script>
                <script src="js/main.js"></script>
                <script src="js/test.js"></script>
                </div>
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