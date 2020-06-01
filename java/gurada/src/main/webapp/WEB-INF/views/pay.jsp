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
    <div>
        <table class='shopping-jh2'>
            <tr>
               <th colspan="2" class='bottom-jh'>
                    <h4>쇼핑백</h4>
                    <hr/>
               </th>
            </tr>
            <tr>
                <td >
                    상품정보
                </td>
                <td>
                    <label>asdfasdf</label>
                </td>
            </tr>
            <tr>
                <td >
                    배송비
                </td>
                <td>sfdsadfa</td>
            </tr>
            <tr>
                <td >
                    세금
                </td>
                <td>asdfsafs</td>
            </tr>
            <tr>
                <td>
                    합계금액
                </td>
                <td>asfsadf</td>
            </tr>
        </table>
    </div>
    <div class="container">
        <label><a href='*' class='a' style="font-size: 30px">장바구니로 돌아가기</a></label>
        <div>
           <label style="font-size: 8px">*항목은 필수입력사항입니다.</label><hr/>
            <table  class='contact-form1'>
                <tr class='tr'>
                    <td>
                        <input type="text" placeholder="이름(성제외)*"/>
                        <input type="text" placeholder="성*"/>
                    </td>
                </tr>
                
                <tr class='tr'>
                    <td>
                        <input class='wnth' type="text" placeholder="주소">
                    </td>
                    <td>
                        <button class="결제">우편번호 검색</button>
                    </td>
                </tr>
                <tr class='tr'>
                   <td>
                       <input class='wnth' type="text" placeholder="상세주소"/>
                   </td>
                    
                </tr>
                <tr class='tr'>
                   <td colspan="2">
                        <label>개인정보의 수집 및 이용에 대한 동의(필수)*</label>
                        <input type="checkbox"/>       
                   </td>
                </tr>
                <tr class='tr'>
                    <td>
                       <input type="radio" name='radio' checked="checked"/>
                        <label>집으로 배송받기</label>
                
                        <input type="radio" name='radio'/>
                        <label>가까운 매장픽업</label>
                    </td>
                </tr>
            </table>
            <hr/>
            <table>
            <tr>
               <td>
                <label style="font-size: 30px">결제 방법 선택</label>   
                </td>
            </tr>
            <tr>
               <td>
                <label>신용카드</label>
                <input type="radio" name="money"/>
                </td>
            </tr>
            <tr>
               <td>
                    <label>계좌이체</label>
                    <input type="radio" name="money"/>
                </td>
            </tr>
            <tr>
               <td>
                <label>무통장 입금</label>
                <input type="radio" name="money"/>
                </td>
            </tr> 
            </table>
            
            <div>
               <hr/>
                <button class="rufwp">결제하기</button>
            </div>
        </div>
        
        
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