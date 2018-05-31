<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<%-- 	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script> --%>
<!-- 	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> -->
<%-- 	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Sales.css" /> --%>
<%-- 	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script> --%>
	<script src="../../code/highcharts.js"></script>
	<script src="../../code/modules/exporting.js"></script>
<!-- 바로 위에 저거 두개 아직 임포트 안함 -->
	
<title>MyPage</title>
</head>

<body>
<div id="container" style="min-width: 310px; max-width: 800px; height: 400px; margin: 0 auto" data-highcharts-chart="0">
	<div id="highcharts-pepuxvp-0" dir="ltr" class="highcharts-container " style="position: relative; overflow: hidden; width: 800px; height: 400px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
		<svg version="1.1" class="highcharts-root" style="font-family:&quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, Arial, Helvetica, sans-serif;font-size:12px;" xmlns="http://www.w3.org/2000/svg" width="800" height="400" viewBox="0 0 800 400">
			<desc>Created with Highcharts 6.0.3</desc>			
			<defs>
				<clipPath id="highcharts-pepuxvp-1">
					<rect x="0" y="0" width="246" height="720" fill="none"></rect>
				</clipPath>
			</defs>
			<rect fill="#ffffff" class="highcharts-background" x="0" y="0" width="800" height="400" rx="0" ry="0"></rect>
			<rect fill="none" class="highcharts-plot-background" x="70" y="53" width="720" height="246"></rect>
			
			<!-- 그래프배경 가로선(x축)그리드 일텐데 무슨부분인지 안보이네... -->
			<g class="highcharts-grid highcharts-xaxis-grid ">
				<path fill="none" class="highcharts-grid-line" d="M 70 102.5 L 790 102.5" opacity="1"></path>
				<path fill="none" class="highcharts-grid-line" d="M 70 151.5 L 790 151.5" opacity="1"></path>
				<path fill="none" class="highcharts-grid-line" d="M 70 201.5 L 790 201.5" opacity="1"></path>
				<path fill="none" class="highcharts-grid-line" d="M 70 250.5 L 790 250.5" opacity="1"></path>
				<path fill="none" class="highcharts-grid-line" d="M 70 299.5 L 790 299.5" opacity="1"></path>
				<path fill="none" class="highcharts-grid-line" d="M 70 53.5 L 790 53.5" opacity="1"></path>
			</g>
			<!-- 그래프 배경 세로선(y축) 그리드 -->
			<g class="highcharts-grid highcharts-yaxis-grid ">
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 69.5 103 L 69.5 299" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 129.5 103 L 129.5 299" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 189.5 103 L 189.5 299" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 249.5 103 L 249.5 299" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 309.5 103 L 309.5 299" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 369.5 103 L 369.5 299" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 429.5 103 L 429.5 299" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 489.5 103 L 489.5 299" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 549.5 103 L 549.5 299" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 609.5 103 L 609.5 299" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 669.5 103 L 669.5 299" opacity="1"></path>
<!-- 				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 729.5 103 L 729.5 299" opacity="1"></path> -->
<!-- 				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 790.5 103 L 790.5 299" opacity="1"></path> -->
			</g>
			<!-- 차트 plot 보더 -->
			<rect fill="none" class="highcharts-plot-border" x="70" y="53" width="720" height="246"></rect>
			<!-- x축 끝부분 튀어나와있는 거 -->
			<g class="highcharts-axis highcharts-xaxis ">
				<path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 70 102.5 L 60 102.5" opacity="1"></path>
				<path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 70 151.5 L 60 151.5" opacity="1"></path>
				<path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 70 201.5 L 60 201.5" opacity="1"></path>
				<path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 70 250.5 L 60 250.5" opacity="1"></path>
				<path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 70 299.5 L 60 299.5" opacity="1"></path>
<!-- 				<path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 70 53.5 L 60 53.5" opacity="1"></path> -->
				<path fill="none" class="highcharts-axis-line" stroke="#ccd6eb" stroke-width="1" d="M 69.5 103 L 69.5 299"></path>
			</g>
			<!-- x축 라벨 -->
			<g class="highcharts-axis highcharts-yaxis ">
				<text x="380" text-anchor="middle" transform="translate(0,0)" class="highcharts-axis-title" style="color:#666666;fill:#666666;" y="338">
					<tspan>총량</tspan>
				</text>
				<path fill="none" class="highcharts-axis-line" d="M 70 299 L 790 299"></path>
			</g>
			
			<g class="highcharts-series-group">
				<!-- 하늘색 바 스타일 -->
<!-- 				<g class="highcharts-series highcharts-series-0 highcharts-bar-series highcharts-color-0 highcharts-tracker " transform="translate(790,299) rotate(90) scale(-1,1) scale(1 1)" clip-path="url(#highcharts-pepuxvp-1)"> -->
<!-- 					<rect x="209.5" y="120.5" width="24" height="300" fill="rgb(124,181,236)" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-0 "></rect> -->
<!-- 					<rect x="159.5" y="180.5" width="24" height="180" fill="rgb(124,181,236)" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-0 "></rect> -->
<!-- 					<rect x="110.5" y="60.5" width="24" height="240" fill="rgb(124,181,236)" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-0 "></rect> -->
<!-- 					<rect x="61.5" y="60.5" width="24" height="420" fill="rgb(124,181,236)" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-0 "></rect> -->
<!-- 					<rect x="12.5" y="240.5" width="24" height="120" fill="#7cb5ec" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-0"></rect> -->
<!-- 				</g> -->
				<!-- 이건뭔지모르겠음 -->
				<g class="highcharts-markers highcharts-series-0 highcharts-bar-series highcharts-color-0 " transform="translate(790,299) rotate(90) scale(-1,1) scale(1 1)" clip-path="none"></g>
				
				<!-- 검정색 바 스타일 -->
				<g class="highcharts-series highcharts-series-1 highcharts-bar-series highcharts-color-1 highcharts-tracker " transform="translate(790,299) rotate(90) scale(-1,1) scale(1 1)" clip-path="url(#highcharts-pepuxvp-1)">
<!-- 					<rect x="209.5" y="420.5" width="24" height="120" fill="rgb(67,67,72)" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-1 "></rect> -->
					<rect x="159.5" y="360.5" width="24" height="120" fill="rgb(67,67,72)" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-1 "></rect>
					<rect x="110.5" y="300.5" width="24" height="180" fill="#434348" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-1"></rect>
					<rect x="61.5" y="480.5" width="24" height="120" fill="rgb(67,67,72)" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-1 "></rect>
					<rect x="12.5" y="360.5" width="24" height="60" fill="rgb(67,67,72)" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-1 "></rect>
				</g>
				<!-- 이것도뭔지모르겠음 -->
				<g class="highcharts-markers highcharts-series-1 highcharts-bar-series highcharts-color-1 " transform="translate(790,299) rotate(90) scale(-1,1) scale(1 1)" clip-path="none"></g>
				
				<!-- 연두색 바 스타일 -->
				<g class="highcharts-series highcharts-series-2 highcharts-bar-series highcharts-color-2 highcharts-tracker " transform="translate(790,299) rotate(90) scale(-1,1) scale(1 1)" clip-path="url(#highcharts-pepuxvp-1)">
<!-- 					<rect x="209.5" y="540.5" width="24" height="180" fill="rgb(144,237,125)" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-2 "></rect> -->
					<rect x="159.5" y="480.5" width="24" height="240" fill="#90ed7d" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-2"></rect>
					<rect x="110.5" y="480.5" width="24" height="240" fill="rgb(144,237,125)" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-2 "></rect>
					<rect x="61.5" y="600.5" width="24" height="120" fill="rgb(144,237,125)" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-2 "></rect>
					<rect x="12.5" y="420.5" width="24" height="300" fill="rgb(144,237,125)" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-2 "></rect>
				</g>
				<g class="highcharts-markers highcharts-series-2 highcharts-bar-series highcharts-color-2 " transform="translate(790,299) rotate(90) scale(-1,1) scale(1 1)" clip-path="none"></g>
			</g>
			
			<!-- 그래프 제목 -->			
			<text x="380" text-anchor="middle" class="highcharts-title" style="color:#333333;font-size:18px;fill:#333333;" y="55">
				<tspan> 최종 상황 </tspan>
			</text>
			<text x="400" text-anchor="middle" class="highcharts-subtitle" style="color:#666666;fill:#666666;" y="52"></text>
			
			<!-- 각 그래프 바 색깔이 뭘 나타내는지 적은 라벨 -->
			<g class="highcharts-legend" transform="translate(315,356)">
				<rect fill="none" class="highcharts-legend-box" rx="0" ry="0" x="0" y="0" width="195" height="29" visibility="visible"></rect>
				<g>
					<g>
						<g class="highcharts-legend-item highcharts-bar-series highcharts-color-2 highcharts-series-2" transform="translate(8,3)">
							<text x="21" style="color:#333333;font-size:12px;font-weight:bold;cursor:pointer;fill:#333333;" text-anchor="start" y="15">
								<tspan>현재</tspan>
							</text>
							<rect x="2" y="4" width="12" height="12" fill="#90ed7d" rx="6" ry="6" class="highcharts-point"></rect>
						</g>
						<g class="highcharts-legend-item highcharts-bar-series highcharts-color-1 highcharts-series-1" transform="translate(69.375,3)">
							<text x="21" y="15" style="color:#333333;font-size:12px;font-weight:bold;cursor:pointer;fill:#333333;" text-anchor="start">
								<tspan>소비</tspan>
							</text>
							<rect x="2" y="4" width="12" height="12" fill="#434348" rx="6" ry="6" class="highcharts-point"></rect>
						</g>
<!-- 						<g class="highcharts-legend-item highcharts-bar-series highcharts-color-0 highcharts-series-0" transform="translate(137.6875,3)"> -->
<!-- 							<text x="21" y="15" style="color:#333333;font-size:12px;font-weight:bold;cursor:pointer;fill:#333333;" text-anchor="start"> -->
<!-- 								<tspan>John</tspan> -->
<!-- 							</text> -->
<!-- 							<rect x="2" y="4" width="12" height="12" fill="#7cb5ec" rx="6" ry="6" class="highcharts-point"></rect> -->
<!-- 						</g> -->
					</g>
				</g>
			</g>
			
			<!-- y축 각각이 나타내는 라벨 -->
			<g class="highcharts-axis-labels highcharts-xaxis-labels ">
<!-- 				<text x="55" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="82" opacity="1"> -->
<!-- 					<tspan></tspan> -->
<!-- 				</text> -->
				<text x="55" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="131" opacity="1">
					<tspan>현금($)</tspan>
				</text>
				<text x="55" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="180" opacity="1">
					<tspan>제품(개)</tspan>
				</text>
				<text x="55" style="color:#666666;cursor:default;font-size:10px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="229" opacity="1">
					<tspan>부동산(m2)</tspan>
				</text>
				<text x="55" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="278" opacity="1">
					<tspan>인력(명)</tspan>
				</text>
			</g>
			
			<g class="highcharts-axis-labels highcharts-yaxis-labels ">
				<text x="70" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="318" opacity="1">0</text>
				<text x="130" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="318" opacity="1">1</text>
				<text x="190" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="318" opacity="1">2</text>
				<text x="250" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="318" opacity="1">3</text>
				<text x="310" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="318" opacity="1">4</text>
				<text x="370" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="318" opacity="1">5</text>
				<text x="430" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="318" opacity="1">6</text>
				<text x="490" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="318" opacity="1">7</text>
				<text x="550" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="318" opacity="1">8</text>
				<text x="610" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="318" opacity="1">9</text>
				<text x="670" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="318" opacity="1">10</text>
<!-- 				<text x="730" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="318" opacity="1">11</text> -->
<!-- 				<text x="782.9296875" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="318" opacity="1">12</text> -->
			</g>
<!-- 			<text x="790" class="highcharts-credits" text-anchor="end" style="cursor:pointer;color:#999999;font-size:9px;fill:#999999;" y="395">Highcharts.com</text> -->
			<g class="highcharts-label highcharts-tooltip highcharts-color-0" style="cursor:default;pointer-events:none;white-space:nowrap;" transform="translate(233,-9999)" opacity="0" visibility="visible">
				<path fill="none" class="highcharts-label-box highcharts-tooltip-box" d="M 3.5 0.5 L 68.5 0.5 C 71.5 0.5 71.5 0.5 71.5 3.5 L 71.5 18 77.5 24 71.5 30 71.5 45.5 C 71.5 48.5 71.5 48.5 68.5 48.5 L 3.5 48.5 C 0.5 48.5 0.5 48.5 0.5 45.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" isShadow="true" stroke="#000000" stroke-opacity="0.049999999999999996" stroke-width="5" transform="translate(1, 1)"></path>
				<path fill="none" class="highcharts-label-box highcharts-tooltip-box" d="M 3.5 0.5 L 68.5 0.5 C 71.5 0.5 71.5 0.5 71.5 3.5 L 71.5 18 77.5 24 71.5 30 71.5 45.5 C 71.5 48.5 71.5 48.5 68.5 48.5 L 3.5 48.5 C 0.5 48.5 0.5 48.5 0.5 45.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" isShadow="true" stroke="#000000" stroke-opacity="0.09999999999999999" stroke-width="3" transform="translate(1, 1)"></path>
				<path fill="none" class="highcharts-label-box highcharts-tooltip-box" d="M 3.5 0.5 L 68.5 0.5 C 71.5 0.5 71.5 0.5 71.5 3.5 L 71.5 18 77.5 24 71.5 30 71.5 45.5 C 71.5 48.5 71.5 48.5 68.5 48.5 L 3.5 48.5 C 0.5 48.5 0.5 48.5 0.5 45.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" isShadow="true" stroke="#000000" stroke-opacity="0.15" stroke-width="1" transform="translate(1, 1)"></path>
				<path fill="rgba(247,247,247,0.85)" class="highcharts-label-box highcharts-tooltip-box" d="M 3.5 0.5 L 68.5 0.5 C 71.5 0.5 71.5 0.5 71.5 3.5 L 71.5 18 77.5 24 71.5 30 71.5 45.5 C 71.5 48.5 71.5 48.5 68.5 48.5 L 3.5 48.5 C 0.5 48.5 0.5 48.5 0.5 45.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" stroke="#7cb5ec" stroke-width="1"></path>
			<text x="8" style="font-size:12px;color:#333333;fill:#333333;" y="20"><tspan style="font-size: 10px">Grapes</tspan><tspan style="fill:#7cb5ec" x="8" dy="15">●</tspan><tspan dx="0"> John: </tspan><tspan style="font-weight:bold" dx="0">7</tspan></text></g></svg><div class="highcharts-contextmenu" style="position: absolute; z-index: 1000; padding: 24px; display: none; right: -14px; top: 8px;"><div class="highcharts-menu" style="box-shadow: rgb(136, 136, 136) 3px 3px 10px; border: 1px solid rgb(153, 153, 153); background: rgb(255, 255, 255); padding: 5px 0px;"><div class="highcharts-menu-item" style="cursor: pointer; padding: 0.5em 1em; background: none; color: rgb(51, 51, 51); font-size: 11px; transition: background 250ms, color 250ms;">Print chart</div><hr><div class="highcharts-menu-item" style="cursor: pointer; padding: 0.5em 1em; background: none; color: rgb(51, 51, 51); font-size: 11px; transition: background 250ms, color 250ms;">Download PNG image</div><div class="highcharts-menu-item" style="cursor: pointer; padding: 0.5em 1em; background: none; color: rgb(51, 51, 51); font-size: 11px; transition: background 250ms, color 250ms;">Download JPEG image</div><div class="highcharts-menu-item" style="cursor: pointer; padding: 0.5em 1em; background: none; color: rgb(51, 51, 51); font-size: 11px; transition: background 250ms, color 250ms;">Download PDF document</div><div class="highcharts-menu-item" style="cursor: pointer; padding: 0.5em 1em; background: none; color: rgb(51, 51, 51); font-size: 11px; transition: background 250ms, color 250ms;">Download SVG vector image</div></div></div></div></div>


<!-- 죄총상황1_총 JS -->
	<script type="text/javascript">
		Highcharts.chart('container', {
		    chart: {
		        type: 'bar'
		    },
		    title: {
		        text: '최종 상황'
		    },
		    xAxis: {
		        categories: ['Apples', '현금($)', '제품(개)', '부동산(m2)', '인력(명)']
		    },
		    yAxis: {
		        min: 0,
		        title: {
		            text: 'Total fruit consumption'
		        }
		    },
		    legend: {
		        reversed: true
		    },
		    plotOptions: {
		        series: {
		            stacking: 'normal'
		        }
		    },
		    series: [
// 		    {
// 		        name: 'John',
// 		        data: [5, 3, 4, 7, 2]
// 		    }, 
		    {
		        name: 'Jane',
		        data: [2, 2, 3, 2, 1]
		    }, {
		        name: 'Joe',
		        data: [3, 4, 4, 2, 5]
		    }]
		});
	</script>
	
	
	
	<!-- ---------------------------------위에까진 최종상황보드----------아래는 my ranking(랭킹)----------------------------- -->
	
	<div id="container" style="min-width: 310px; max-width: 800px; height: 400px; margin: 0 auto" data-highcharts-chart="0">
		<div id="highcharts-0ffwcvf-0" dir="ltr" class="highcharts-container " style="position: relative; overflow: hidden; width: 800px; height: 400px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
			<svg version="1.1" class="highcharts-root" style="font-family:&quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, Arial, Helvetica, sans-serif;font-size:12px;" xmlns="http://www.w3.org/2000/svg" width="800" height="400" viewBox="0 0 800 400">
				<desc>Created with Highcharts 6.0.3</desc>
				<defs>
					<clipPath id="highcharts-0ffwcvf-1">
						<rect x="0" y="0" width="268" height="720" fill="none"></rect>
					</clipPath>
				</defs>
				<rect fill="#ffffff" class="highcharts-background" x="0" y="0" width="800" height="400" rx="0" ry="0"></rect>
				<rect fill="none" class="highcharts-plot-background" x="70" y="72" width="720" height="268"></rect>
				<g class="highcharts-grid highcharts-xaxis-grid ">
					<path fill="none" class="highcharts-grid-line" d="M 70 126.5 L 790 126.5" opacity="1"></path>
					<path fill="none" class="highcharts-grid-line" d="M 70 179.5 L 790 179.5" opacity="1"></path>
					<path fill="none" class="highcharts-grid-line" d="M 70 233.5 L 790 233.5" opacity="1"></path>
					<path fill="none" class="highcharts-grid-line" d="M 70 286.5 L 790 286.5" opacity="1"></path>
					<path fill="none" class="highcharts-grid-line" d="M 70 340.5 L 790 340.5" opacity="1"></path>
					<path fill="none" class="highcharts-grid-line" d="M 70 72.5 L 790 72.5" opacity="1"></path>
				</g>
				<!-- 뒤에 배경 세로선 -->
				<g class="highcharts-grid highcharts-yaxis-grid ">
					<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 69.5 72 L 69.5 340" opacity="1"></path>
					<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 149.5 72 L 149.5 340" opacity="1"></path>
					<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 229.5 72 L 229.5 340" opacity="1"></path>
					<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 309.5 72 L 309.5 340" opacity="1"></path>
					<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 389.5 72 L 389.5 340" opacity="1"></path>
					<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 469.5 72 L 469.5 340" opacity="1"></path>
					<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 549.5 72 L 549.5 340" opacity="1"></path>
					<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 629.5 72 L 629.5 340" opacity="1"></path>
					<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 709.5 72 L 709.5 340" opacity="1"></path>
					<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 790.5 72 L 790.5 340" opacity="1"></path>
				</g>
				<rect fill="none" class="highcharts-plot-border" x="70" y="72" width="720" height="268"></rect>
				<g class="highcharts-axis highcharts-xaxis ">
					<path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 70 126.5 L 60 126.5" opacity="1"></path>
					<path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 70 179.5 L 60 179.5" opacity="1"></path>
					<path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 70 233.5 L 60 233.5" opacity="1"></path>
					<path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 70 286.5 L 60 286.5" opacity="1"></path>
					<path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 70 340.5 L 60 340.5" opacity="1"></path>
					<path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 70 71.5 L 60 71.5" opacity="1"></path>
					<path fill="none" class="highcharts-axis-line" stroke="#ccd6eb" stroke-width="1" d="M 69.5 72 L 69.5 340"></path>
				</g>
				<g class="highcharts-axis highcharts-yaxis ">
					<text x="790" text-anchor="end" transform="translate(0,0)" class="highcharts-axis-title" style="color:#666666;fill:#666666;" y="379">
						<tspan>Population (millions)</tspan>
					</text>
					<path fill="none" class="highcharts-axis-line" d="M 70 340 L 790 340"></path>
				</g>
				<g class="highcharts-series-group">
					<!-- 하늘색 그래프 스타일 -->
<!-- 					<g class="highcharts-series highcharts-series-0 highcharts-bar-series highcharts-color-0 highcharts-tracker" transform="translate(790,340) rotate(90) scale(-1,1) scale(1 1)" clip-path="url(#highcharts-0ffwcvf-1)"> -->
<!-- 						<rect x="247.5" y="703.5" width="9" height="17" fill="#7cb5ec" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-0"></rect> -->
<!-- 						<rect x="193.5" y="715.5" width="9" height="5" fill="#7cb5ec" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-0"></rect> -->
<!-- 						<rect x="139.5" y="618.5" width="9" height="102" fill="#7cb5ec" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-0"></rect> -->
<!-- 						<rect x="86.5" y="688.5" width="9" height="32" fill="#7cb5ec" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-0"></rect> -->
<!-- 						<rect x="32.5" y="720.5" width="9" height="0" fill="#7cb5ec" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-0"></rect> -->
<!-- 					</g> -->
<!-- 					<g class="highcharts-markers highcharts-series-0 highcharts-bar-series highcharts-color-0 " transform="translate(790,340) rotate(90) scale(-1,1) scale(1 1)" clip-path="none"></g> -->
					<!-- 검정색 그래프 스타일 -->
					<g class="highcharts-series highcharts-series-1 highcharts-bar-series highcharts-color-1 highcharts-tracker" transform="translate(790,340) rotate(90) scale(-1,1) scale(1 1)" clip-path="url(#highcharts-0ffwcvf-1)">
						<rect x="236.5" y="699.5" width="9" height="21" fill="#434348" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-1"></rect>
						<rect x="182.5" y="695.5" width="9" height="25" fill="#434348" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-1"></rect>
						<rect x="129.5" y="568.5" width="9" height="152" fill="#434348" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-1"></rect>
						<rect x="75.5" y="655.5" width="9" height="65" fill="#434348" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-1"></rect>
						<rect x="22.5" y="707.5" width="9" height="13" fill="#434348" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-1"></rect>
					</g>
					<g class="highcharts-markers highcharts-series-1 highcharts-bar-series highcharts-color-1 " transform="translate(790,340) rotate(90) scale(-1,1) scale(1 1)" clip-path="none"></g>
					<!-- 초록색 그래프 스타일 -->
<!-- 					<g class="highcharts-series highcharts-series-2 highcharts-bar-series highcharts-color-2 highcharts-tracker " transform="translate(790,340) rotate(90) scale(-1,1) scale(1 1)" clip-path="url(#highcharts-0ffwcvf-1)"> -->
<!-- 						<rect x="225.5" y="552.5" width="9" height="168" fill="#90ed7d" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-2"></rect> -->
<!-- 						<rect x="172.5" y="567.5" width="9" height="153" fill="#90ed7d" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-2"></rect> -->
<!-- 						<rect x="118.5" y="40.5" width="9" height="680" fill="rgb(144,237,125)" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-2 "></rect> -->
<!-- 						<rect x="64.5" y="602.5" width="9" height="118" fill="#90ed7d" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-2"></rect> -->
<!-- 						<rect x="11.5" y="714.5" width="9" height="6" fill="rgb(144,237,125)" stroke="#ffffff" stroke-width="1" class="highcharts-point highcharts-color-2 "></rect> -->
<!-- 					</g> -->
<!-- 					<g class="highcharts-markers highcharts-series-2 highcharts-bar-series highcharts-color-2 " transform="translate(790,340) rotate(90) scale(-1,1) scale(1 1)" clip-path="none"></g> -->
				</g>
				
<!-- 				<g class="highcharts-button highcharts-contextbutton" style="cursor:pointer;" stroke-linecap="round" transform="translate(766,10)"><title>Chart context menu</title><rect fill="#ffffff" class=" highcharts-button-box" x="0.5" y="0.5" width="24" height="22" rx="2" ry="2" stroke="none" stroke-width="1"></rect><path fill="#666666" d="M 6 6.5 L 20 6.5 M 6 11.5 L 20 11.5 M 6 16.5 L 20 16.5" class="highcharts-button-symbol" stroke="#666666" stroke-width="3"></path><text x="0" style="font-weight:normal;color:#333333;fill:#333333;" y="12"></text></g> -->
				
				<!-- 전체 제목 -->
				<text x="400" text-anchor="middle" class="highcharts-title" style="color:#333333;font-size:18px;fill:#333333;" y="24">
					<tspan>My Ranking</tspan>
				</text>
<!-- 				<text x="400" text-anchor="middle" class="highcharts-subtitle" style="color:#666666;fill:#666666;" y="52"> -->
<!-- 					<tspan>Source: </tspan> -->
<!-- 					<tspan onclick="location.href=&quot;https://en.wikipedia.org/wiki/World_population&quot;" class="highcharts-anchor" dx="0" style="cursor: pointer;">Wikipedia.org</tspan> -->
<!-- 				</text> -->
<!-- 				<g class="highcharts-data-labels highcharts-series-0 highcharts-bar-series highcharts-color-0 highcharts-tracker" transform="translate(70,72) scale(1 1)" opacity="1"> -->
<!-- 					<g class="highcharts-label highcharts-data-label highcharts-data-label-color-0 " transform="translate(17,4)" opacity="0" visibility="hidden"> -->
<!-- 						<text x="5" style="font-size:11px;font-weight:bold;color:#000000;fill:#000000;" y="16"> -->
<!-- 							<tspan x="5" y="16" class="highcharts-text-outline" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2px" stroke-linejoin="round">107</tspan> -->
<!-- 							<tspan x="5" y="16">107</tspan> -->
<!-- 						</text> -->
<!-- 					</g> -->
<!-- 					<g class="highcharts-label highcharts-data-label highcharts-data-label-color-0 " transform="translate(5,58)"> -->
<!-- 						<text x="5" style="font-size:11px;font-weight:bold;color:#000000;fill:#000000;" y="16"> -->
<!-- 							<tspan x="5" y="16" class="highcharts-text-outline" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2px" stroke-linejoin="round" style="">31</tspan> -->
<!-- 							<tspan x="5" y="16">31</tspan> -->
<!-- 						</text> -->
<!-- 					</g> -->
<!-- 					<g class="highcharts-label highcharts-data-label highcharts-data-label-color-0 " transform="translate(102,112)"> -->
<!-- 						<text x="5" style="font-size:11px;font-weight:bold;color:#000000;fill:#000000;" y="16"> -->
<!-- 							<tspan x="5" y="16" class="highcharts-text-outline" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2px" stroke-linejoin="round">635</tspan> -->
<!-- 							<tspan x="5" y="16">635</tspan> -->
<!-- 						</text> -->
<!-- 					</g> -->
<!-- 					<g class="highcharts-label highcharts-data-label highcharts-data-label-color-0 " transform="translate(32,165)"> -->
<!-- 						<text x="5" style="font-size:11px;font-weight:bold;color:#000000;fill:#000000;" y="16"> -->
<!-- 							<tspan x="5" y="16" class="highcharts-text-outline" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2px" stroke-linejoin="round">203</tspan> -->
<!-- 							<tspan x="5" y="16">203</tspan> -->
<!-- 						</text> -->
<!-- 					</g> -->
<!-- 					<g class="highcharts-label highcharts-data-label highcharts-data-label-color-0 " transform="translate(0,219)"> -->
<!-- 						<text x="5" style="font-size:11px;font-weight:bold;color:#000000;fill:#000000;" y="16"> -->
<!-- 							<tspan x="5" y="16" class="highcharts-text-outline" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2px" stroke-linejoin="round">2</tspan> -->
<!-- 							<tspan x="5" y="16">2</tspan> -->
<!-- 						</text> -->
<!-- 					</g> -->
<!-- 				</g> -->
				<g class="highcharts-data-labels highcharts-series-1 highcharts-bar-series highcharts-color-1 highcharts-tracker" transform="translate(70,72) scale(1 1)" opacity="1">
					<g class="highcharts-label highcharts-data-label highcharts-data-label-color-1 " transform="translate(21,15)">
						<text x="5" style="font-size:11px;font-weight:bold;color:#000000;fill:#000000;" y="16">
							<tspan x="5" y="16" class="highcharts-text-outline" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2px" stroke-linejoin="round">133</tspan>
							<tspan x="5" y="16">133</tspan>
						</text>
					</g>
					<g class="highcharts-label highcharts-data-label highcharts-data-label-color-1 " transform="translate(25,69)">
						<text x="5" style="font-size:11px;font-weight:bold;color:#000000;fill:#000000;" y="16">
							<tspan x="5" y="16" class="highcharts-text-outline" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2px" stroke-linejoin="round">156</tspan>
							<tspan x="5" y="16">156</tspan>
						</text>
					</g>
					<g class="highcharts-label highcharts-data-label highcharts-data-label-color-1 " transform="translate(152,122)">
						<text x="5" style="font-size:11px;font-weight:bold;color:#000000;fill:#000000;" y="16">
							<tspan x="5" y="16" class="highcharts-text-outline" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2px" stroke-linejoin="round">947</tspan>
							<tspan x="5" y="16">947</tspan>
						</text>
					</g>
					<g class="highcharts-label highcharts-data-label highcharts-data-label-color-1 " transform="translate(65,176)">
						<text x="5" style="font-size:11px;font-weight:bold;color:#000000;fill:#000000;" y="16">
							<tspan x="5" y="16" class="highcharts-text-outline" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2px" stroke-linejoin="round">408</tspan>
							<tspan x="5" y="16">408</tspan>
						</text>
					</g>
					<g class="highcharts-label highcharts-data-label highcharts-data-label-color-1 " transform="translate(1,229)" > <!--opacity="0" visibility="hidden"-->
						<text x="5" style="font-size:11px;font-weight:bold;color:#000000;fill:#000000;" y="16">
							<tspan x="5" y="16" class="highcharts-text-outline" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2px" stroke-linejoin="round">30</tspan>
							<tspan x="11" y="16">30</tspan>
						</text>
					</g>
				</g>
<!-- 				<g class="highcharts-data-labels highcharts-series-2 highcharts-bar-series highcharts-color-2 highcharts-tracker " transform="translate(70,72) scale(1 1)" opacity="1"> -->
<!-- 					<g class="highcharts-label highcharts-data-label highcharts-data-label-color-2 " transform="translate(168,26)"> -->
<!-- 						<text x="5" style="font-size:11px;font-weight:bold;color:#000000;fill:#000000;" y="16"> -->
<!-- 							<tspan x="5" y="16" class="highcharts-text-outline" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2px" stroke-linejoin="round" style="">1 052</tspan> -->
<!-- 							<tspan x="5" y="16">1 052</tspan> -->
<!-- 						</text> -->
<!-- 					</g> -->
<!-- 					<g class="highcharts-label highcharts-data-label highcharts-data-label-color-2 " transform="translate(153,79)"> -->
<!-- 						<text x="5" style="font-size:11px;font-weight:bold;color:#000000;fill:#000000;" y="16"> -->
<!-- 							<tspan x="5" y="16" class="highcharts-text-outline" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2px" stroke-linejoin="round">954</tspan> -->
<!-- 							<tspan x="5" y="16">954</tspan> -->
<!-- 						</text> -->
<!-- 					</g> -->
<!-- 					<g class="highcharts-label highcharts-data-label highcharts-data-label-color-2 " transform="translate(680,133)"> -->
<!-- 						<text x="5" style="font-size:11px;font-weight:bold;color:#000000;fill:#000000;" y="16"> -->
<!-- 							<tspan x="5" y="16" class="highcharts-text-outline" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2px" stroke-linejoin="round">4 250</tspan> -->
<!-- 							<tspan x="5" y="16">4 250</tspan> -->
<!-- 						</text> -->
<!-- 					</g> -->
<!-- 					<g class="highcharts-label highcharts-data-label highcharts-data-label-color-2 " transform="translate(118,187)"> -->
<!-- 						<text x="5" style="font-size:11px;font-weight:bold;color:#000000;fill:#000000;" y="16"> -->
<!-- 							<tspan x="5" y="16" class="highcharts-text-outline" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2px" stroke-linejoin="round">740</tspan> -->
<!-- 							<tspan x="5" y="16">740</tspan> -->
<!-- 						</text> -->
<!-- 					</g> -->
<!-- 					<g class="highcharts-label highcharts-data-label highcharts-data-label-color-2 " transform="translate(6,240)"> -->
<!-- 						<text x="5" style="font-size:11px;font-weight:bold;color:#000000;fill:#000000;" y="16"> -->
<!-- 							<tspan x="5" y="16" class="highcharts-text-outline" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2px" stroke-linejoin="round">38</tspan> -->
<!-- 							<tspan x="5" y="16">38</tspan> -->
<!-- 						</text> -->
<!-- 					</g> -->
<!-- 				</g> -->
				<g class="highcharts-legend" transform="translate(650,90)">
<!-- 					<rect fill="none" class="highcharts-legend-box" rx="0" ry="0" stroke="#000000" stroke-width="5" isShadow="true" stroke-opacity="0.049999999999999996" transform="translate(1, 1)" x="0.5" y="0.5" width="98" height="64" visibility="visible"></rect> -->
<!-- 					<rect fill="none" class="highcharts-legend-box" rx="0" ry="0" stroke="#000000" stroke-width="3" isShadow="true" stroke-opacity="0.09999999999999999" transform="translate(1, 1)" x="0.5" y="0.5" width="98" height="64" visibility="visible"></rect> -->
<!-- 					<rect fill="none" class="highcharts-legend-box" rx="0" ry="0" stroke="#000000" stroke-width="1" isShadow="true" stroke-opacity="0.15" transform="translate(1, 1)" x="0.5" y="0.5" width="98" height="64" visibility="visible"></rect> -->
<!-- 					<rect fill="#FFFFFF" class="highcharts-legend-box" rx="0" ry="0" stroke="#999999" stroke-width="1" x="0.5" y="0.5" width="98" height="64" visibility="visible"></rect> -->
					<g>
						<g>
<!-- 							<g class="highcharts-legend-item highcharts-bar-series highcharts-color-0 highcharts-series-0" transform="translate(8,3)"> -->
<!-- 								<text x="21" style="color:#333333;font-size:12px;font-weight:bold;cursor:pointer;fill:#333333;" text-anchor="start" y="15"> -->
<!-- 									<tspan>Year 1800</tspan> -->
<!-- 								</text> -->
<!-- 								<rect x="2" y="4" width="12" height="12" fill="#7cb5ec" rx="6" ry="6" class="highcharts-point"></rect> -->
<!-- 							</g> -->
<!-- 							<g class="highcharts-legend-item highcharts-bar-series highcharts-color-1 highcharts-series-1" transform="translate(8,21)"> -->
<!-- 								<text x="21" y="15" style="color:#333333;font-size:12px;font-weight:bold;cursor:pointer;fill:#333333;" text-anchor="start"> -->
<!-- 									<tspan>Year 1900</tspan> -->
<!-- 								</text> -->
<!-- 								<rect x="2" y="4" width="12" height="12" fill="#434348" rx="6" ry="6" class="highcharts-point"></rect> -->
<!-- 							</g> -->
<!-- 							<g class="highcharts-legend-item highcharts-bar-series highcharts-color-2 highcharts-series-2" transform="translate(8,39)"> -->
<!-- 								<text x="21" y="15" style="color:#333333;font-size:12px;font-weight:bold;cursor:pointer;fill:#333333;" text-anchor="start"> -->
<!-- 									<tspan>Year 2012</tspan> -->
<!-- 								</text> -->
<!-- 								<rect x="2" y="4" width="12" height="12" fill="#90ed7d" rx="6" ry="6" class="highcharts-point"></rect> -->
<!-- 							</g> -->
						</g>
					</g>
				</g>
				<g class="highcharts-axis-labels highcharts-xaxis-labels ">
					<text x="55" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="103" opacity="1">
						<tspan>종합</tspan>
					</text>
					<text x="55" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="156" opacity="1">
						<tspan>현금</tspan>
					</text>
					<text x="55" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="210" opacity="1">
						<tspan>제품</tspan>
					</text>
					<text x="55" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="264" opacity="1">
						<tspan>부동산</tspan>
					</text>
					<text x="55" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="317" opacity="1">
						<tspan>인력</tspan>
					</text>
				</g>
				<g class="highcharts-axis-labels highcharts-yaxis-labels ">
					<text x="70" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="359" opacity="1">
						<tspan>0</tspan>
					</text>
					<text x="150" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="359" opacity="1">
						<tspan>500</tspan>
					</text>
					<text x="230" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="359" opacity="1">
						<tspan>1000</tspan>
					</text>
					<text x="310" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="359" opacity="1">
						<tspan>1500</tspan>
					</text>
					<text x="390" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="359" opacity="1">
						<tspan>2000</tspan>
					</text>
					<text x="470" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="359" opacity="1">
						<tspan>2500</tspan>
					</text>
					<text x="550" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="359" opacity="1">
						<tspan>3000</tspan>
					</text>
					<text x="630" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="359" opacity="1">
						<tspan>3500</tspan>
					</text>
					<text x="710" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="359" opacity="1">
						<tspan>4000</tspan>
					</text>
					<text x="775.96875" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="359" opacity="1">
						<tspan>4500</tspan>
					</text>
				</g>
				<g class="highcharts-label highcharts-tooltip highcharts-color-2" style="cursor:default;pointer-events:none;white-space:nowrap;" transform="translate(560,-9999)" opacity="0" visibility="visible">
					<path fill="none" class="highcharts-label-box highcharts-tooltip-box" d="M 3.5 0.5 L 181.5 0.5 C 184.5 0.5 184.5 0.5 184.5 3.5 L 184.5 18 190.5 24 184.5 30 184.5 45.5 C 184.5 48.5 184.5 48.5 181.5 48.5 L 3.5 48.5 C 0.5 48.5 0.5 48.5 0.5 45.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" isShadow="true" stroke="#000000" stroke-opacity="0.049999999999999996" stroke-width="5" transform="translate(1, 1)"></path>
					<path fill="none" class="highcharts-label-box highcharts-tooltip-box" d="M 3.5 0.5 L 181.5 0.5 C 184.5 0.5 184.5 0.5 184.5 3.5 L 184.5 18 190.5 24 184.5 30 184.5 45.5 C 184.5 48.5 184.5 48.5 181.5 48.5 L 3.5 48.5 C 0.5 48.5 0.5 48.5 0.5 45.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" isShadow="true" stroke="#000000" stroke-opacity="0.09999999999999999" stroke-width="3" transform="translate(1, 1)"></path>
					<path fill="none" class="highcharts-label-box highcharts-tooltip-box" d="M 3.5 0.5 L 181.5 0.5 C 184.5 0.5 184.5 0.5 184.5 3.5 L 184.5 18 190.5 24 184.5 30 184.5 45.5 C 184.5 48.5 184.5 48.5 181.5 48.5 L 3.5 48.5 C 0.5 48.5 0.5 48.5 0.5 45.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" isShadow="true" stroke="#000000" stroke-opacity="0.15" stroke-width="1" transform="translate(1, 1)"></path>
					<path fill="rgba(247,247,247,0.85)" class="highcharts-label-box highcharts-tooltip-box" d="M 3.5 0.5 L 181.5 0.5 C 184.5 0.5 184.5 0.5 184.5 3.5 L 184.5 18 190.5 24 184.5 30 184.5 45.5 C 184.5 48.5 184.5 48.5 181.5 48.5 L 3.5 48.5 C 0.5 48.5 0.5 48.5 0.5 45.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" stroke="#90ed7d" stroke-width="1"></path>
					<text x="8" style="font-size:12px;color:#333333;fill:#333333;" y="20">
						<tspan style="font-size: 10px">Asia</tspan>
						<tspan style="fill:#90ed7d" x="8" dy="15">●</tspan>
						<tspan dx="0"> Year 2012: </tspan>
						<tspan style="font-weight:bold" dx="0">4 250 millions</tspan>
					</text>
				</g>
			</svg>
		</div>
	</div>
	
	<!-- my ranking JS -->
	<script type="text/javascript">	
		Highcharts.chart('container', {
		    chart: {
		        type: 'bar'
		    },
		    title: {
		        text: 'My Ranking'
		    },
		    subtitle: {
		        text: 'Source: <a href="https://en.wikipedia.org/wiki/World_population">Wikipedia.org</a>'
		    },
		    xAxis: {
		        categories: ['Africa', 'America', 'Asia', 'Europe', 'Oceania'],
		        title: {
		            text: null
		        }
		    },
		    yAxis: {
		        min: 0,
		        title: {
		            text: 'Population (millions)',
		            align: 'high'
		        },
		        labels: {
		            overflow: 'justify'
		        }
		    },
		    tooltip: {
		        valueSuffix: ' millions'
		    },
		    plotOptions: {
		        bar: {
		            dataLabels: {
		                enabled: true
		            }
		        }
		    },
		    legend: {
		        layout: 'vertical',
		        align: 'right',
		        verticalAlign: 'top',
		        x: -40,
		        y: 80,
		        floating: true,
		        borderWidth: 1,
		        backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
		        shadow: true
		    },
		    credits: {
		        enabled: false
		    },
		    series: [{
		        name: 'Year 1800',
		        data: [107, 31, 635, 203, 2]
		    }, {
		        name: 'Year 1900',
		        data: [133, 156, 947, 408, 6]
		    }, {
		        name: 'Year 2012',
		        data: [1052, 954, 4250, 740, 38]
		    }]
		})
	</script>
	
	
	
	
	
	<!----------------------------최근 개발정보->>-최근 게임 진행상황 정보--------------------------------------------->
	
	<div class="Box">
				<div class="Title">최근 개발 정보</div>
				<div class="Content">
					<table class="StatisticsSummonersWithLeague">
						<colgroup>
							<col width="4">
							<col width="102">
							<col width="106">
							<col width="106">
						</colgroup>
						<thead class="Header">
							<tr class="Row">
								<th class="HeaderCell Tier" colspan="2">상태</th>
								<th class="HeaderCell">소요 시간</th>
								<th class="HeaderCell">종류</th>
							</tr>
						</thead>
						<tbody class="Content">
							<tr class="Row tier-PLATINUM">
								<td class="Bar Cell"></td>
								<td class="Tier Cell">
									Platinum III
								</td>
								<td class="SummonerCount Cell">
									16,794 (1.45%)																		
								</td>
								<td class="Aggregate Cell">
									57,089 (4.92%)
								</td>
							</tr>
							<tr class="Row tier-PLATINUM">
								<td class="Bar Cell"></td>
								<td class="Tier Cell">
									Platinum III
								</td>
								<td class="SummonerCount Cell">
									16,794 (1.45%)																		
								</td>
								<td class="Aggregate Cell">
									57,089 (4.92%)
								</td>
							</tr>
							<tr class="Row tier-PLATINUM">
								<td class="Bar Cell"></td>
								<td class="Tier Cell">
									Platinum IV
								</td>
								<td class="SummonerCount Cell">
									16,238 (1.40%)
								</td>
								<td class="Aggregate Cell">
									73,327 (6.32%)
								</td>
							</tr>
							<tr class="Row tier-PLATINUM">
								<td class="Bar Cell"></td>
								<td class="Tier Cell">
									Platinum III
								</td>
								<td class="SummonerCount Cell">
									16,794 (1.45%)																		
								</td>
								<td class="Aggregate Cell">
									57,089 (4.92%)
								</td>
							</tr>
							<tr class="Row tier-PLATINUM">
								<td class="Bar Cell"></td>
								<td class="Tier Cell">
									Platinum IV
								</td>
								<td class="SummonerCount Cell">
									16,238 (1.40%)
								</td>
								<td class="Aggregate Cell">
									73,327 (6.32%)
								</td>
							</tr>
						</tbody>
													
						<tfoot class="Footer">
							<tr class="Row Description">
								<td class="Cell" colspan="4">소환사 검색시 나타나는 래더 랭킹 상위 퍼센티지는 브론즈까지의 퍼센트 계산이며, 이 표의 누계는 언랭크까지 계산됩니다.</td>
							</tr>
							<tr class="Row Time">
								<td class="Cell" colspan="4">업데이트: <span class="_timeago _timeCountAssigned tip" data-datetime="1517379603" data-type="" data-interval="60" title="2018년 1월 31일 오후 3시 19분">하루 전</span></td>
							</tr>
						</tfoot>
					</table>
				</div>
			</div>
	
	
	
	

	<!-- ---------------------------------위에는 my ranking(랭킹)--------------아래는 최종상황 LV(레벨)--------------------------------------- -->
	
	<div id="container" style="min-width: 400px; max-width: 600px; height: 400px; margin: 0 auto" data-highcharts-chart="0">
		<div id="highcharts-1n5xzon-0" dir="ltr" class="highcharts-container " style="position: relative; overflow: hidden; width: 600px; height: 400px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
			<svg version="1.1" class="highcharts-root" style="font-family:&quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, Arial, Helvetica, sans-serif;font-size:12px;" xmlns="http://www.w3.org/2000/svg" width="600" height="400" viewBox="0 0 600 400">
			<desc>Created with Highcharts 6.0.3</desc>
			<defs>
				<clipPath id="highcharts-1n5xzon-1">
					<rect x="0" y="0" width="427" height="332" fill="none"></rect>
				</clipPath>
			</defs>
			<rect fill="#ffffff" class="highcharts-background" x="0" y="0" width="600" height="400" rx="0" ry="0"></rect>
			<rect fill="none" class="highcharts-plot-background" x="10" y="53" width="427" height="332"></rect>
			<g class="highcharts-pane-group"></g>
			
			<g class="highcharts-grid highcharts-xaxis-grid ">
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 223.5 219 L 223.5 86.19999999999999" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 223.5 219 L 338.50817362257345 152.6" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 223.5 219 L 338.50817362257345 285.4" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 223.5 219 L 223.5 351.8" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 223.5 219 L 108.49182637742656 285.40000000000003" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 223.5 219 L 108.49182637742649 152.60000000000008" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 223.5 219 L 223.49999999999997 86.19999999999999" opacity="1"></path>
			</g>
			
			<g class="highcharts-grid highcharts-yaxis-grid ">
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 223.5 219 L 223.5 219 L 223.5 219 L 223.5 219 L 223.5 219 L 223.5 219 L 223.5 219 L 223.5 219" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 223.5 174.73333333333332 L 223.5 174.73333333333332 L 185.16394212580883 196.8666666666667 L 185.16394212580886 241.13333333333335 L 223.5 263.26666666666665 L 261.83605787419117 241.13333333333333 L 261.83605787419117 196.86666666666667 L 223.5 174.73333333333332" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 223.5 130.46666666666664 L 223.49999999999997 130.46666666666664 L 146.82788425161766 174.73333333333338 L 146.82788425161772 263.2666666666667 L 223.5 307.53333333333336 L 300.17211574838234 263.26666666666665 L 300.17211574838234 174.73333333333332 L 223.5 130.46666666666664" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 223.5 86.19999999999999 L 223.49999999999997 86.19999999999999 L 108.49182637742649 152.60000000000008 L 108.49182637742656 285.40000000000003 L 223.5 351.8 L 338.50817362257345 285.4 L 338.50817362257345 152.6 L 223.5 86.19999999999999" opacity="1"></path>
			</g>
			<rect fill="none" class="highcharts-plot-border" x="10" y="53" width="427" height="332"></rect>
			
			<g class="highcharts-axis highcharts-xaxis ">
				<path fill="none" class="highcharts-axis-line" d="M 223.5 86.19999999999999 A 132.8 132.8 0 1 1 223.36720002213326 86.20006639999445 M 223.5 219 A 0 0 0 1 0 223.5 219 "></path>
			</g>
			
			<g class="highcharts-axis highcharts-yaxis ">
				<path fill="none" class="highcharts-axis-line" d="M 223.5 219 L 223.5 86.19999999999999"></path>
			</g>
			
			<g class="highcharts-series-group">
				<g class="highcharts-series highcharts-series-0 highcharts-line-series highcharts-color-0 " transform="translate(10,53) scale(1 1)" clip-path="url(#highcharts-1n5xzon-1)">
					<path fill="none" d="M 213.5 89.86133333333333 L 242.6354039843853 149.17866666666674 L 305.5065388980585 219.12000000000046 L 213.49999999999957 227.97333333333336 L 187.43148064554987 181.05066666666642 L 198.16557685032365 157.14666666666648 L 213.5 89.86133333333333" class="highcharts-graph" stroke="#7cb5ec" stroke-width="2" stroke-linejoin="round" stroke-linecap="round"></path>
					<path fill="none" d="M 203.5 89.86133333333333 L 213.5 89.86133333333333 L 242.6354039843853 149.17866666666674 L 305.5065388980585 219.12000000000046 L 213.49999999999957 227.97333333333336 L 187.43148064554987 181.05066666666642 L 198.16557685032365 157.14666666666648 L 213.5 89.86133333333333 L 223.5 89.86133333333333" stroke-linejoin="round" visibility="visible" stroke="rgba(192,192,192,0.0001)" stroke-width="22" class="highcharts-tracker"></path>
				</g>
				<g class="highcharts-markers highcharts-series-0 highcharts-line-series highcharts-color-0 highcharts-tracker" transform="translate(10,53) scale(1 1)" clip-path="none">
					<path fill="#7cb5ec" d="M 242 149.17866666666674 A 0 0 0 1 1 242 149.17866666666674 Z" class="highcharts-halo highcharts-color-0" fill-opacity="0.25"></path>
					<path fill="#7cb5ec" d="M 217 90 A 4 4 0 1 1 216.99999800000018 89.99600000066667 Z" class="highcharts-point highcharts-color-0"></path>
					<path fill="#7cb5ec" d="M 246 149.17866666666674 A 4 4 0 1 1 245.99999800000018 149.1746666673334 Z" class="highcharts-point highcharts-color-0 " stroke-width="0.0016917837476277953"></path>
					<path fill="#7cb5ec" d="M 309 219 A 4 4 0 1 1 308.9999980000002 218.99600000066667 Z" class="highcharts-point highcharts-color-0"></path>
					<path fill="#7cb5ec" d="M 217 228 A 4 4 0 1 1 216.99999800000018 227.99600000066667 Z" class="highcharts-point highcharts-color-0"></path>
					<path fill="#7cb5ec" d="M 191 181 A 4 4 0 1 1 190.99999800000018 180.99600000066667 Z" class="highcharts-point highcharts-color-0"></path>
					<path fill="#7cb5ec" d="M 202 157 A 4 4 0 1 1 201.99999800000018 156.99600000066667 Z" class="highcharts-point highcharts-color-0"></path>
				</g>
<!-- 				<g class="highcharts-series highcharts-series-1 highcharts-line-series highcharts-color-1 " transform="translate(10,53) scale(1 1)" clip-path="url(#highcharts-1n5xzon-1)"> -->
<!-- 					<path fill="none" d="M 213.5 77.46666666666664 L 273.30425028373827 131.47200000000015 L 277.90457722864096 203.1840000000003 L 213.4999999999996 220.89066666666668 L 173.63049981084097 189.0186666666663 L 192.0318075904531 153.60533333333308 L 213.5 77.46666666666664" class="highcharts-graph" stroke="#434348" stroke-width="2" stroke-linejoin="round" stroke-linecap="round"></path> -->
<!-- 					<path fill="none" d="M 203.5 77.46666666666664 L 213.5 77.46666666666664 L 273.30425028373827 131.47200000000015 L 277.90457722864096 203.1840000000003 L 213.4999999999996 220.89066666666668 L 173.63049981084097 189.0186666666663 L 192.0318075904531 153.60533333333308 L 213.5 77.46666666666664 L 223.5 77.46666666666664" stroke-linejoin="round" visibility="visible" stroke="rgba(192,192,192,0.0001)" stroke-width="22" class="highcharts-tracker"></path> -->
<!-- 				</g> -->
<!-- 				<g class="highcharts-markers highcharts-series-1 highcharts-line-series highcharts-color-1 highcharts-tracker " transform="translate(10,53) scale(1 1)" clip-path="none"> -->
<!-- 					<path fill="#434348" d="M 273 131.47200000000015 A 0 0 0 1 1 273 131.47200000000015 Z" class="highcharts-halo highcharts-color-1" fill-opacity="0.25"></path> -->
<!-- 					<path fill="#434348" d="M 213 73 L 217 77 213 81 209 77 Z" class="highcharts-point highcharts-color-1"></path> -->
<!-- 					<path fill="#434348" d="M 273 127.47200000000015 L 277 131.47200000000015 273 135.47200000000015 269 131.47200000000015 Z" class="highcharts-point highcharts-color-1 " stroke-width="0.000004624928191199196"></path> -->
<!-- 					<path fill="#434348" d="M 277 199 L 281 203 277 207 273 203 Z" class="highcharts-point highcharts-color-1"></path> -->
<!-- 					<path fill="#434348" d="M 213 217 L 217 221 213 225 209 221 Z" class="highcharts-point highcharts-color-1"></path> -->
<!-- 					<path fill="#434348" d="M 173 185 L 177 189 173 193 169 189 Z" class="highcharts-point highcharts-color-1"></path> -->
<!-- 					<path fill="#434348" d="M 192 150 L 196 154 192 158 188 154 Z" class="highcharts-point highcharts-color-1"></path> -->
<!-- 				</g> -->
			</g>
<!-- 			<g class="highcharts-button highcharts-contextbutton" style="cursor:pointer;" stroke-linecap="round" transform="translate(566,10)"> -->
<!-- 				<title>Chart context menu</title> -->
<!-- 				<rect fill="#ffffff" class=" highcharts-button-box" x="0.5" y="0.5" width="24" height="22" rx="2" ry="2" stroke="none" stroke-width="1"></rect> -->
<!-- 				<path fill="#666666" d="M 6 6.5 L 20 6.5 M 6 11.5 L 20 11.5 M 6 16.5 L 20 16.5" class="highcharts-button-symbol" stroke="#666666" stroke-width="3"></path> -->
<!-- 				<text x="0" style="font-weight:normal;color:#333333;fill:#333333;" y="12"></text> -->
<!-- 			</g> -->

				<text x="222" text-anchor="middle" class="highcharts-title" style="color:#333333;font-size:18px;fill:#333333;" y="40">
					<tspan>최종 레벨(Lv)</tspan>
				</text>
				<text x="300" text-anchor="middle" class="highcharts-subtitle" style="color:#666666;fill:#666666;" y="52"></text>
				<g class="highcharts-legend" transform="translate(449,80)">
					<rect fill="none" class="highcharts-legend-box" rx="0" ry="0" x="0" y="0" width="140" height="47" visibility="visible"></rect>
					<g>
						<g>
							<g class="highcharts-legend-item highcharts-line-series highcharts-color-0 highcharts-series-0" transform="translate(8,3)">
								<path fill="none" d="M 0 11 L 16 11" class="highcharts-graph" stroke="#7cb5ec" stroke-width="2"></path>
								<path fill="#7cb5ec" d="M 12 11 A 4 4 0 1 1 11.999998000000167 10.996000000666664 Z" class="highcharts-point"></path>
								<text x="21" style="color:#333333;font-size:12px;font-weight:bold;cursor:pointer;fill:#333333;" text-anchor="start" y="15">
									<tspan>현재 레벨</tspan>
								</text>
							</g>
<!-- 							<g class="highcharts-legend-item highcharts-line-series highcharts-color-1 highcharts-series-1" transform="translate(8,21)"> -->
<!-- 								<path fill="none" d="M 0 11 L 16 11" class="highcharts-graph" stroke="#434348" stroke-width="2"></path> -->
<!-- 								<path fill="#434348" d="M 8 7 L 12 11 8 15 4 11 Z" class="highcharts-point"></path> -->
<!-- 								<text x="21" y="15" style="color:#333333;font-size:12px;font-weight:bold;cursor:pointer;fill:#333333;" text-anchor="start"> -->
<!-- 									<tspan>Actual Spending</tspan> -->
<!-- 								</text> -->
<!-- 							</g> -->
						</g>
					</g>
				</g>
				<g class="highcharts-axis-labels highcharts-xaxis-labels ">
					<text x="223.5" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" transform="translate(0,0)" text-anchor="middle" y="75.19999999999999" opacity="1">
						<tspan>종합</tspan>
					</text>
					<text x="351.49855467934003" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" transform="translate(0,0)" text-anchor="start" y="149.1" opacity="1">
						<tspan>인력</tspan>
					</text>
					<text x="351.49855467934003" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" transform="translate(0,0)" text-anchor="start" y="296.9" opacity="1">
						<tspan>영업</tspan>
					</text>
					<text x="223.5" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" transform="translate(0,0)" text-anchor="middle" y="370.8" opacity="1">
						<tspan>부동산</tspan>
					</text>
					<text x="95.50144532065998" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" transform="translate(0,0)" text-anchor="end" y="288.50156250000003" opacity="1">
						<tspan>생산</tspan>
						<tspan dy="14" x="95.50144532065998"></tspan>
						<title></title>
					</text>
					<text x="95.5014453206599" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" transform="translate(0,0)" text-anchor="end" y="149.10000000000008" opacity="1">
						<tspan>평균</tspan>
					</text>
					<text x="0" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" transform="translate(0,0)" text-anchor="middle" y="-9999">
						<tspan>6</tspan>
					</text>
				</g>
				<g class="highcharts-axis-labels highcharts-yaxis-labels ">
					<text x="220.5" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="217" opacity="1">
						<tspan>1</tspan>
					</text>
					<text x="220.5" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="172.73333333333332" opacity="1">
						<tspan>4</tspan>
					</text>
					<text x="220.5" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="128.46666666666664" opacity="1">
						<tspan>7</tspan>
					</text>
					<text x="0" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="-9999">
						<tspan>10</tspan>
					</text>
				</g>
				
<!-- 				<text x="590" class="highcharts-credits" text-anchor="end" style="cursor:pointer;color:#999999;font-size:9px;fill:#999999;" y="395">Highcharts.com</text> -->
				
				<g class="highcharts-label highcharts-tooltip highcharts-color-0" style="cursor:default;pointer-events:none;white-space:nowrap;" transform="translate(78,-9999)" opacity="0" visibility="visible">
					<path fill="none" class="highcharts-label-box highcharts-tooltip-box" d="M 3.5 0.5 L 171.5 0.5 C 174.5 0.5 174.5 0.5 174.5 3.5 L 174.5 60.5 C 174.5 63.5 174.5 63.5 171.5 63.5 L 3.5 63.5 C 0.5 63.5 0.5 63.5 0.5 60.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" isShadow="true" stroke="#000000" stroke-opacity="0.049999999999999996" stroke-width="5" transform="translate(1, 1)"></path>
					<path fill="none" class="highcharts-label-box highcharts-tooltip-box" d="M 3.5 0.5 L 171.5 0.5 C 174.5 0.5 174.5 0.5 174.5 3.5 L 174.5 60.5 C 174.5 63.5 174.5 63.5 171.5 63.5 L 3.5 63.5 C 0.5 63.5 0.5 63.5 0.5 60.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" isShadow="true" stroke="#000000" stroke-opacity="0.09999999999999999" stroke-width="3" transform="translate(1, 1)"></path>
					<path fill="none" class="highcharts-label-box highcharts-tooltip-box" d="M 3.5 0.5 L 171.5 0.5 C 174.5 0.5 174.5 0.5 174.5 3.5 L 174.5 60.5 C 174.5 63.5 174.5 63.5 171.5 63.5 L 3.5 63.5 C 0.5 63.5 0.5 63.5 0.5 60.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" isShadow="true" stroke="#000000" stroke-opacity="0.15" stroke-width="1" transform="translate(1, 1)"></path>
					<path fill="rgba(247,247,247,0.85)" class="highcharts-label-box highcharts-tooltip-box" d="M 3.5 0.5 L 171.5 0.5 C 174.5 0.5 174.5 0.5 174.5 3.5 L 174.5 60.5 C 174.5 63.5 174.5 63.5 171.5 63.5 L 3.5 63.5 C 0.5 63.5 0.5 63.5 0.5 60.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" stroke="#7cb5ec" stroke-width="1"></path>
					<text x="8" style="font-size:12px;color:#333333;fill:#333333;" y="20">
						<tspan style="font-size: 10px">Marketing</tspan>
						<tspan style="fill:#7cb5ec" x="8" dy="15">Allocated Budget: </tspan>
						<tspan style="font-weight:bold" dx="0">$19 000</tspan>
						<tspan style="fill:#434348" x="8" dy="15">Actual Spending: </tspan>
						<tspan style="font-weight:bold" dx="0">$39 000</tspan>
					</text>
				</g>
			</svg>
		</div>
	</div>
	
	
	<!-- 최종상황2_LV JS -->
	<script type="text/javascript">
		Highcharts.chart('container', {
		
		    chart: {
		        polar: true,
		        type: 'line'
		    },
		
		    title: {
		        text: '최종 레벨(Lv)',
		        x: -80
		    },
		
		    pane: {
		        size: '80%'
		    },
		
		    xAxis: {
		        categories: ['Sales', 'Marketing', 'Development', 'Customer Support',
		                'Information Technology', 'Administration'],
		        tickmarkPlacement: 'on',
		        lineWidth: 0
		    },
		
		    yAxis: {
		        gridLineInterpolation: 'polygon',
		        lineWidth: 0,
		        min: 0
		    },
		
		    tooltip: {
		        shared: true,
		        pointFormat: '<span style="color:{series.color}">{series.name}: <b>${point.y:,.0f}</b><br/>'
		    },
		
		    legend: {
		        align: 'right',
		        verticalAlign: 'top',
		        y: 70,
		        layout: 'vertical'
		    },
		
		    series: [{
		        name: 'Allocated Budget',
		        data: [43000, 19000, 60000, 35000, 17000, 10000],
		        pointPlacement: 'on'
		    }, {
		        name: 'Actual Spending',
		        data: [50000, 39000, 42000, 31000, 26000, 14000],
		        pointPlacement: 'on'
		    }]
		
		});
	</script>
	
</body>
</html>