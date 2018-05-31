<%@page import="yes.entity.production.ProductionSummary"%>
<%@page import="yes.entity.production.ProductionUserRank"%>
<%@page import="yes.entity.production.ProductionTypeEntity"%>
<%@page import="yes.entity.production.ProductionFinalWork"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main_chart.css">
<script src="${pageContext.request.contextPath}/js/highcharts.js"></script>
<script src="${pageContext.request.contextPath}/js/highcharts-more.js"></script>
<script src="${pageContext.request.contextPath}/js/exporting.js"></script>
<script src="${pageContext.request.contextPath}/css/util.css"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



</head>
<body>


<%
//1 최근 개발 정보
List<ProductionFinalWork> list = (List<ProductionFinalWork>)request.getAttribute("finalwork");

//2 최종 개발 상황 >> 총소비+최종레벨
ProductionSummary summ = (ProductionSummary)request.getAttribute("summary");
List<ProductionTypeEntity> list2 = (List<ProductionTypeEntity>)request.getAttribute("finalstat");

//3 나의 랭킹(My Ranking)
ProductionUserRank myrank = (ProductionUserRank)request.getAttribute("rank");

%>

<br /><br /><br /><br />



<!-- 최근개발정보 -->	
<div style="min-width: 310px; max-width: 800px; height: 400px; margin: 0 auto; background-color: white;">
<br /><br /><p style="font-size: 18px; text-align: center; color:#333;">최근 개발 정보</p>

	<c:if test="${!empty finalwork}">
		<table class="table table-hover" style="text-align:left; min-width: 500px; max-width: 700px; margin: 50px auto; background-color:#fff; border-collapse: collapse; line-height: 2em; letter-spacing: 0.5px;">
		    <thead>
		        <tr>
		            <th>상태</th>
		            <th>종류</th>
		            <th>시간</th>
		            <th>레벨</th>
		        </tr>
		    </thead>
		  <c:forEach items="${finalwork}" var="ob">	
		    <tbody>
		        <tr>
		        	<td>완료</td>
		            <td>${ob.protname}</td>
		            <td>${ob.worktime}</td>
		            <td>${ob.protlevel}</td>
		        </tr>
		     </tbody>
		     </c:forEach>
		</table>
	</c:if>
	
</div>


<!-- 	<div class="limiter"> -->
<!-- 		<div class="container-table100"> -->
<!-- 			<div class="wrap-table100"> -->
<!-- 				<div class="table100 ver5 m-b-110"> -->
<!-- 					<div class="table100-head"> -->
<%-- 						<c:if test="${!empty finalwork}"> --%>
<!-- 						<table> -->
<%-- 						<c:forEach items="${finalwork}" var="ob"> --%>
<!-- 							<thead> -->
<!-- 								<tr class="row100 head"> -->
<!-- 									<th class="cell100 column1">상태</th> -->
<!-- 									<th class="cell100 column2">종류</th> -->
<!-- 									<th class="cell100 column3">시간</th> -->
<!-- 									<th class="cell100 column4">레벨</th> -->
<!-- 								</tr> -->
<!-- 							</thead> -->
<!-- 						</table> -->
<!-- 					</div> -->
					
<!-- 					<div class="table100-body js-pscroll"> -->
<!-- 						<table> -->
<!-- 							<tbody> -->
<!-- 								<tr class="row100 body"> -->
<!-- 									<td class="cell100 column1">완료</td> -->
<%-- <%-- 									<td class="cell100 column2"><%=list2.get(1).getProtname()%> %></td> --%>
<%-- <%-- 									<td class="cell100 column3"><%=list.get(0).getWorktime()%> %></td> --%> 
<%-- <%-- 									<td class="cell100 column4"><%=list2.get(3).getProtlevel()%> %></td> --%>
<%-- 									<td class="cell100 column2">${ob.protname}</td> --%>
<%-- 									<td class="cell100 column3">${ob.worktime}</td> --%>
<%-- 									<td class="cell100 column4">${ob.protlevel}</td> --%>
<!-- 								</tr> -->
<!-- 							</tbody> -->
<%-- 						</c:forEach> --%>
<!-- 						</table> -->
<%-- 					</c:if> --%>
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->

<br /><br /><br /><br /><br />
	


<!-- 총 소비 -->
<div id="container" style="min-width: 310px; max-width: 800px; height: 400px; margin: 0 auto"></div>
<script type="text/javascript">
Highcharts.chart('container', {
    chart: {
        type: 'bar'
    },
    title: {
        text: '총 소비'
    },
    xAxis: {
        categories: 
        	['현금($)', '제품(개)', '부동산(m2)', '인력(명)']
    },
    yAxis: {
        min: 0,
        title: {
            text: '총량'
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
    //data에 적히는 값들이 위에서 부터 아래로 마우스 올리면 뜨는 값들
    series: [{
//     	name: '총 수입',
<%--    	        data: [<%=summ.getInmoney()%>,<%=summ.getInproduce()%>,<%=summ.getInrealestate()%>,<%=summ.getInworker()%>] --%>
//    	     }    	
    	//하늘색[현금소비, 제품소비, 부동산소비, 인력소비]
        name: '현재 보유량',
        data: [<%=summ.getOutmoney()%>,<%=summ.getOutproduce()%>,<%=summ.getOutrealestate()%>,<%=summ.getOutworker()%>]
    },{
        //검정색[현재보유현금, 현재보유제품, 현재보유부동산, 현재보유인력]
    	name: '총 소비량',
        data: [<%=summ.getInmoney()-summ.getOutmoney()%>,<%=summ.getInproduce() - summ.getOutproduce()%>, <%=summ.getInrealestate()-summ.getOutrealestate()%>, <%=summ.getInworker() - summ.getOutworker()%>]
    }
    ]
});
</script>

<br /><br /><br /><br /><br />

<!-- 4 최종레벨 -->
<div id="container1" style="min-width: 310px; max-width: 800px; height: 400px; margin: 0 auto"></div>
<script type="text/javascript">

Highcharts.chart('container1', {
    chart: {
        type: 'column'
    },
    title: {
        text: '개발 레벨(Lv)'
    },
    xAxis: {
        categories: ['인력', '영업', '부동산', '생산']
    },
    yAxis: {
        min: 0,
		max: 10,
        title: {
            text: 'Ranking'
        }
    },
    credits: {
        enabled: false
    },
    plotOptions: {
        column: {
            pointPadding: 0.2,
            borderWidth: 0
        }
    },
    series: [{
        name: 'Lv',
        data: [<%=list2.get(0).getProtlevel()%>,<%=list2.get(1).getProtlevel()%>,<%=list2.get(2).getProtlevel()%>,<%=list2.get(3).getProtlevel()%>]
    }]
});
		</script>
	<br /><br /><br /><br /><br />


<!-- 3 나의 랭킹 -->
<!-- 랭킹을 음수로 받아와서.. 랭킹 2위가 높은걸 보여줄 수 있게 하는거지 -->
<div id="container2" style="min-width: 310px; max-width: 800px; height: 400px; margin: 0 auto"></div>
<script type="text/javascript">

Highcharts.chart('container2', {
    chart: {
        type: 'column'
    },
    title: {
        text: 'My Ranking'
    },
    xAxis: {
        categories: ['종합', '현금', '제품', '부동산', '인력']
    },
    yAxis: {
        min: 0,
		max: 100,
        title: {
            text: 'Ranking'
        }
    },
    credits: {
        enabled: false
    },
    plotOptions: {
        column: {
            pointPadding: 0.2,
            borderWidth: 0
        }
    },
    series: [{
        name: '랭킹',
        data: [100-<%=myrank.getTotalrank()%>, 100-<%=myrank.getMoneyrank()%>, 100-<%=myrank.getProducerank()%>, 100-<%=myrank.getRealestaterank()%>, 100-<%=myrank.getWorkerrank()%>]
    }]
});
		</script>

<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/popper.js"></script>
<script src="${pageContext.request.contextPath}/js/select2.min.js"></script>
<script src="${pageContext.request.contextPath}/js/perfect-scrollbar.min.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script>
<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
</script>

</body>
</html>