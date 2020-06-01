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
    
    <div class="signup-form">
        <h2>회원가입</h2>
        <br>
        &nbsp;<sup>필수 항목*</sup>
        <form action="">
            <table class="signup-input">
                <tr>
                    <td><input type="text" name="" placeholder="이름(성 제외)*" size="25"></td>
                    <td><input type="text" placeholder="성*" size="25"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr> 
                <tr>
                    <td><input type="password" placeholder="비밀번호*" size="25"></td>
                    <td><input type="password" placeholder="비밀번호 확인*" size="25"></td>
                </tr>
                <tr>
                    <td><sup>비밀번호는 8~16자여야 합니다</sup>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2"><input type="email" placeholder="이메일 *" size="40"></td>
                </tr>
                <tr>
                    <td><sup>계정으로 사용할 이메일을 등록하세요</sup>&nbsp;</td>
                    <td><sub>성별</sub></td>
                </tr>
                <tr>
                    <td><input type="tel" size="25" placeholder="전화번호 (-없이)"></td>
                    <td><input type="radio" name="gender"> 남 <input type="radio" name="gender"> 여 </td>
                </tr>
            </table>
            <div class="signup-check">
                <input type="checkbox"><span>&nbsp;본인은 <a href="#">개인 정보 처리방침</a> 을 읽고 이에 동의 합니다. 본인은 만 14세 이상임을 확인합니다.(필수)</span><br>
                <input type="checkbox"><span><a href="#">&nbsp;개인정보의 수집 및 이용</a>에 대한 동의(필수)</span><br>
                <br>
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
            </div>
            <br>
            <div class="signup-btn">
                <button class="btn btn-success">회원가입</button>
                <button class="btn btn-dark">취소</button>
            </div>
        </form>
        <br><br><br><br><br>
    </div>
    
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