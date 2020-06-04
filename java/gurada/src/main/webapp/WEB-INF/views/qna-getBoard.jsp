<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
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
                <div class="col-lg-4">
                    <div class="page-breadcrumb">
                        <h2>문의 내용<span>.</span></h2>
                        
                    </div>
                </div>  
            </div>
        </div>   
        <br/><br/>
    
    
    <!-- Page Add Section End -->

    <!-- Contact Section Begin -->
    
    
    <div class="contact-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <form action="qna.do" class="contact-form">
                        <div class="row">
                            <div class="col-lg-6">
                                <input type="text" placeholder="제목" value='${board.title}' disabled>
                            </div>
                            <div class="col-lg-6">
                                <input class="glyphicon glyphicon-user" type="text" placeholder="작성자" value='${board.writter}' disabled>
                            </div>
                            <div class="col-lg-12">
                               
                                <textarea placeholder="내용" disabled>${board.contents}</textarea>
                            </div>
                            <div class="col-lg-12 text-right" class="small-button">
                                <button type="submit"  >게시판 목록 가기</button> 
                            </div>    
                        </div>
                    </form>
                    <form action="delete-qna.do" method="post">
                            <input type='hidden' name='qnaNo' value='${board.qnaNo}' >
                            <input type='hidden' name='password' value='${board.password}' >
                            <button type="submit"  >게시글 삭제</button>
                            </form>
                </div>
                <div class="col-lg-3 offset-lg-1">
                    <div class="contact-widget">
                        <div class="cw-item">
                            <h5>고객센터</h5>
                            <ul>
                                <li>+82 (603)535-4592</li>
                                <li>+82 (603)535-4556</li>
                            </ul>
                        </div>
                        <div class="cw-item">
                            <h5>E-mail</h5>
                            <ul>
                                <li>contact@gurada.com</li>              
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   </section>
		<!-- Footer Section Begin -->
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