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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Sales.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/All.js"></script>

<title>MyPage</title>
</head>
<body>
	<section class="contents"> <article>
	<h2>
		<a href="img/"> My Character </a>
	</h2>
	<strong><img src="img/"
		alt="여기에 이미지 업로드 기능 넣는거? 그러면 태그 다르게 주기" /></strong>
	<p>
		<img src="img/" />
	</p>
	<em> </em> <span>X</span> </article> <article>
	<h2>
		<a href="img/"> Score </a>
	</h2>
	<strong><img src="img/" /></strong>
	<p>
		<img src="img/" />
	</p>
	<em>
		<h3>나의 랭킹</h3> <c:if test="${!empty rank}">
			<table>
				<!-- 3x3 Production table -->
				<tr>
					<th>종합 랭킹 : ${rank.totalrank}</th>
				</tr>
				<tr>
					<th>현금 랭킹 : ${rank.moneyrank}</th>
				</tr>
				<tr>
					<th>제품 랭킹 : ${rank.producerank}</th>
				</tr>
				<tr>
					<th>부동산 랭킹 : ${rank.realestaterank}</th>
				</tr>
				<tr>
					<th>인력 랭킹 : ${rank.workerrank}</th>
				</tr>

			</table>
		</c:if>
	</em> <span>X</span> </article> 
	
	
	<article>
	<h2>
		<a href="img/"> 최근 개발정보 </a>
	</h2>
	<strong><img src="img/" /></strong>
	<p>
		<img src="img/" />
	</p>
	<em>
	<h3>최근 개발 정보</h3> 
	<c:if test="${!empty finalwork}">
			<table>
				<c:forEach items="${finalwork}" var="ob">
					<tr>
						<th>완료 :${ob.worktime}시간 ${ob.protname} LV : ${ob.protlevel}
							완료</th>
					</tr>
				</c:forEach>
			</table>
		</c:if>

	</em> <span>X</span> </article> <article>
	<h2>
		<a href="${pageContext.request.contextPath}/image/mypage-img.png">
			최종 상황 보드  </a>
	</h2>
	<strong><img
		src="${pageContext.request.contextPath}/image/mypage-img.png" /></strong>
	<p>
		<img src="img/" />
	</p>
	<em>
	<h3>최종상황</h3> 
			<table>

			<c:if test="${!empty finalstat}">
				<c:forEach items="${finalstat }" var="finalstat_ob">
					<tr>
						<th>${finalstat_ob.protype} LV: ${finalstat_ob.protlevel}</th>
					</tr>
				</c:forEach>
			</c:if>

			<c:if test="${!empty summary}">
				<tr>
					<th>총 현금 수입 : ${summary.inmoney}</th>
				</tr>
				<tr>
					<th>총 제품 수입 : ${summary.inproduce}</th>
				</tr>
				<tr>
					<th>총 부동산 수입 : ${summary.inrealestate}</th>
				</tr>
				<tr>
					<th>총 인력 수입 : ${summary.inworker}</th>
				</tr>
				</c:if>
			</table>
		
	</em> <span>X</span> </article> </section>
</body>
</html>