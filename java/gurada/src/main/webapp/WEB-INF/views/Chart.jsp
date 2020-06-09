<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> 
   
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
    <div id="Line_Controls_Chart">
      <!-- 라인 차트 생성할 영역 -->
          <div id="lineChartArea" style="padding:0px 20px 0px 0px;"></div>
      <!-- 컨트롤바를 생성할 영역 -->
          <div id="controlsArea" style="padding:0px 20px 0px 0px;"></div>
        </div>


   <!-- Contact Section End -->

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
   <script src="./resources/js/jh.js"></script>
   <script type="text/javascript"src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script src="./resources/js/js.js"></script>
	<script type="text/javascript">
	  var chartDrowFun = {
			  
			    chartDrow : function(){
			        var chartData = '';
			 
			        //날짜형식 변경하고 싶으시면 이 부분 수정하세요.
			        var chartDateformat     = 'yyyy년MM월dd일';
			        //라인차트의 라인 수
			        var chartLineCount    = 10;
			        //컨트롤러 바 차트의 라인 수
			        var controlLineCount    = 10;
			 
			 
			        function drawDashboard() {
			 
			          var data = new google.visualization.DataTable();
			          //그래프에 표시할 컬럼 추가
			          data.addColumn('datetime' , '날짜');
			          data.addColumn('number'   , '남성');
			          data.addColumn('number'   , '여성');
			          data.addColumn('number'   , '판매그래프');
			 
			          //그래프에 표시할 데이터
			          var dataRow = [];
			 		  ${chartData};
// 			          for(var i = 0; i <= 20; i++){ //랜덤 데이터 생성
// 			            var total   = Math.floor(Math.random() * 300) + 1;
// 			            var man     = Math.floor(Math.random() * total) + 1;
// 			            var woman   = total - man;
			 
// 			            dataRow = [new Date('2020', '05', i , '8'), man, 0 , total];
// 			            data.addRow(dataRow);
// 			          }
			 
			 
			            var chart = new google.visualization.ChartWrapper({
			              chartType   : 'LineChart',
			              containerId : 'lineChartArea', //라인 차트 생성할 영역
			              options     : {
			                              isStacked   : 'percent',
			                              focusTarget : 'category',
			                              height          : 500,
			                              width              : '100%',
			                              legend          : { position: "top", textStyle: {fontSize: 13}},
			                              pointSize        : 5,
			                              tooltip          : {textStyle : {fontSize:12}, showColorCode : true,trigger: 'both'},
			                              hAxis              : {format: chartDateformat, gridlines:{count:chartLineCount,units: {
			                                                                  years : {format: ['yyyy년']},
			                                                                  months: {format: ['MM월']},
			                                                                  days  : {format: ['dd일']},
			                                                                  hours : {format: ['HH시']}}
			                                                                },textStyle: {fontSize:12}},
			                vAxis              : {minValue: 100,viewWindow:{min:0},gridlines:{count:-1},textStyle:{fontSize:12}},
			                animation        : {startup: true,duration: 1000,easing: 'in' },
			                annotations    : {pattern: chartDateformat,
			                                textStyle: {
			                                fontSize: 15,
			                                bold: true,
			                                italic: true,
			                                color: '#871b47',
			                                auraColor: '#d799ae',
			                                opacity: 0.8,
			                                pattern: chartDateformat
			                              }
			                            }
			              }
			            });
			 
			            var control = new google.visualization.ControlWrapper({
			              controlType: 'ChartRangeFilter',
			              containerId: 'controlsArea',  //control bar를 생성할 영역
			              options: {
			                  ui:{
			                        chartType: 'LineChart',
			                        chartOptions: {
			                        chartArea: {'width': '60%','height' : 80},
			                          hAxis: {'baselineColor': 'none', format: chartDateformat, textStyle: {fontSize:12},
			                            gridlines:{count:controlLineCount,units: {
			                                  years : {format: ['yyyy년']},
			                                  months: {format: ['MM월']},
			                                  days  : {format: ['dd일']},
			                                  hours : {format: ['HH시']}}
			                            }}
			                        }
			                  },
			                    filterColumnIndex: 0
			                }
			            });
			 
			            var date_formatter = new google.visualization.DateFormat({ pattern: chartDateformat});
			            date_formatter.format(data, 0);
			 
			            var dashboard = new google.visualization.Dashboard(document.getElementById('Line_Controls_Chart'));
			            window.addEventListener('resize', function() { dashboard.draw(data); }, false); //화면 크기에 따라 그래프 크기 변경
			            dashboard.bind([control], [chart]);
			            dashboard.draw(data);
			 
			        }
			          google.charts.setOnLoadCallback(drawDashboard);
			 
			      }
			    }
			 
			$(document).ready(function(){
			  google.charts.load('current', {'packages':['line','controls']});
			  chartDrowFun.chartDrow(); //chartDrow() 실행
			});

					
	</script>
</body>

</html>