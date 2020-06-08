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
	<script type="text/javascript"
	src="http://maps.google.com/maps/api/js?key=AIzaSyBD64wGh26USHyvlhtDJnbFzvcFD7vY0W4"></script>
<script type="text/javascript">
	function initialize() {
		var mapLocation = new google.maps.LatLng(${blatitude},${blongitude}); // 지도에서 가운데로 위치할 위도와 경도
		var markLocation = new google.maps.LatLng(${blatitude},${blongitude}); // 마커가 위치할 위도와 경도

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
			// info: '말풍선 안에 들어갈 내용',
			title : '서대전네거리역이지롱~' // 마커에 마우스 포인트를 갖다댔을 때 뜨는 타이틀
		});

		var content = "이곳은 서대전네거리역이다! <br/> 지하철 타러 가자~"; // 말풍선 안에 들어갈 내용

		// 마커를 클릭했을 때의 이벤트. 말풍선 뿅~
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
	<!-- header -->
	<jsp:include page="header.jsp" />
	<!-- header end -->
	<section class="page-add">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="page-breadcrumb">
						<h2>
							매장방문 예약<span>.</span>
						</h2>
						<table class='resertable-jh'>
							<tr>
								<td>주소 : ${bstore.location}<br /> 
								매장번호 : ${bstore.tel}
									
								</td>

							</tr>
							<hr/> 
						</table>
						
						<form action="reservation-rs.do">
						<table class='contact-form1'>
							<tr class='tr'>
								<td>
								<input type="hidden" name='storeId' value='${bstore.storeId}'/>
								<input type="text" name='fullName' placeholder="이름*" />
								</td>
							</tr>
							<tr class='tr'>
								<td><input type="text" name='phoneNumber' placeholder="연락처"> 
								방문날짜 <input type='date' name='bookingDate' value="방문 날짜" /></td>
							</tr>
							<tr class='tr'>
								<td>시간대 선택 <select name='time'>
										<option>10:00</option>
										<option>11:00</option>
										<option>13:00</option>
										<option>14:00</option>
										<option>15:00</option>
										<option>16:00</option>
										<option>17:00</option>
										<option>18:00</option>
										<option>19:00</option>
										<option>20:00</option>
								</select>
								</td>
							</tr>
							
						</table>
						<hr />
						<div class='small-button-sh'>
						<button type="submit">예약 하기</button>
						<button><a href='find-store.do'>매장 찾기</a></button>
					</div>
						</form>
						
					</div>
					<br />
					<br />
					
				
				</div>
				
				<div id='map-canvas' class="map-canvas"
					style="width: 550px; height: 315px"></div>
			</div>
		</div>
	</section>

	<!-- Contact Section End -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- Footer Section Begin -->

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