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
        <h2>회원 수정</h2>
        <br>
        &nbsp;<sup>필수 항목*</sup>
        <form action="">
            <table class="signup-input">
                <tr>
                    <td colspan="2"><input type="email" placeholder="이메일 *" disabled size="40"></td>
                </tr>
                <tr>
                	<td>&nbsp; </td>
                </tr>
                <tr>
                    <td><input type="text" name="" placeholder="이름(성 제외)*" value=" 회원이름 적힐곳" size="25" disabled></td>
                    <td><input type="text" placeholder="성*" value="회원 성 적힐곳" size="25" disabled></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><input type="password" placeholder="비밀번호*" size="25"></td>
                    <td><input type="password" placeholder="새 비밀번호*" size="25"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><sup>비밀번호는 8~16자여야 합니다</sup>&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="password" placeholder="새 비밀번호 확인*" size="25"></td>
                </tr>
                <tr>
                    <td></td>
                    <td>&nbsp;<sup>비밀번호가 확인체크 해줄거임</sup></td>
                </tr>
               
                <tr>
                    <td><sup>전화번호</sup>&nbsp;</td>
                    <td><sub>성별</sub></td>
                </tr>
                <tr>
                    <td><input type="tel" size="25" placeholder="전화번호 (-없이)"></td>
                    <td><input type="radio" name="gender"> 남 <input type="radio" name="gender"> 여 </td>
                </tr>
                <tr>
                	<td>&nbsp;우편번호</td>
                </tr>
                <tr>
                    <td colspan="2">
                    <input type="text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input class="btn btn-info" type="button" value="우편번호 검색">
                    </td>
                </tr>
                <tr>
                	<td>&nbsp;<sub>주소</sub></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="text" size="60"></td>
                </tr>
                <tr>
                	<td>&nbsp;<sub>상세주소</sub><td>
                </tr>
                <tr>
                    <td colspan="2"><input type="text" size="60"></td>
                </tr>
            </table>
            <br><br><br><br>
            <div class="signup-check">
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
    </div>
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