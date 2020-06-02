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
<script type="text/javascript"
	src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">

	function initialize() {
		var mapLocation = new google.maps.LatLng(document.cookie.match('(^|;) ?' + 'Latitude' + '=([^;]*)(;|$)'),document.cookie.match('(^|;) ?' + 'Longitude' + '=([^;]*)(;|$)') ); // 지도에서 가운데로 위치할 위도와 경도
		var markLocation = new google.maps.LatLng('36.322473', '127.412501'); // 마커가 위치할 위도와 경도

		var mapOptions = {
			center : mapLocation, // 지도에서 가운데로 위치할 위도와 경도(변수)
			zoom : 18, // 지도 zoom단계
			mapTypeId : google.maps.MapTypeId.ROADMAP
		};
		var map = new google.maps.Map(document.getElementById("map-canvas"), // id: map-canvas, body에 있는 div태그의 id와 같아야 함
		mapOptions);

		var size_x = 60; // 마커로 사용할 이미지의 가로 크기
		var size_y = 60; // 마커로 사용할 이미지의 세로 크기

		// 마커로 사용할 이미지 주소
		var image = new google.maps.MarkerImage(
				'http://www.larva.re.kr/home/img/boximage3.png',
				new google.maps.Size(size_x, size_y), '', '',
				new google.maps.Size(size_x, size_y));

		var marker;
		marker = new google.maps.Marker({
			position : markLocation, // 마커가 위치할 위도와 경도(변수)
			map : map,
			icon : image, // 마커로 사용할 이미지(변수)
			//             info: '말풍선 안에 들어갈 내용',
			
		});

		
		var infowindow = new google.maps.InfoWindow({
			content : content
		});

		google.maps.event.addListener(marker, "click", function() {
			infowindow.open(map, marker);
		});

	}
	google.maps.event.addDomListener(window, 'load', initialize);

</script>

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
	<jsp:include page="header.jsp" />

	<!-- Page Add Section Begin -->
	<section class="page-add">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="page-breadcrumb">
						<h2>
							매장 찾기<span>.</span>
							<br/><br/>
						</h2>
					</div>
				</div>
			</div>
		</div>

		<!-- Page Add Section End -->

		<!-- Contact Section Begin -->
		<div class="contact-section">
			<div class="container">
				<div class="col-lg-8">
					<form action="find.do" class="contact-form">
						<div class="row">
							<div class="col-lg-6">
								<input type="text" placeholder="주소, 매장입력.." name='location'>
							</div>
							<div>
								<button type="submit">
									<span class="glyphicon glyphicon-search"></span> 매장검색
								</button>
								<button type="submit">방문예약</button>
							</div>
						</div>
					</form>
					<form class="addr-form">
						<table>
							<tr>
								<td>
									<h4>검색결과 : 주소 나오는 테이블.</h4>
								</td>
							</tr>
							<tr>
								<td>찾아오는길 설명글.</td>
							</tr>
							<tr>
								<td>연락처</td>
							</tr>
						</table>
					</form>
					<br />
					<div id="map-canvas" style="width: 1000px; height: 500px"></div>
				</div>
			</div>
		</div>


	</section>

	<!-- Footer Section End -->
	<jsp:include page="footer.jsp" />
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