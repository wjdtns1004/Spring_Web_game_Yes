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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Sales.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
<!-- 	<script type="text/javascript" src="js/prefixfree.min.js"></script> -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/All.js"></script>

<title>Sales</title>
</head>
<body>
	<!-- 영업사원 -->
	<div>
		<h1>영업사원</h1>
		<c:if test="${!empty list }">
			<c:forEach items="${list }" var="ob">
				<table class="sale_table">
					<tr>
						<th>영업 등급</th>
						<th>영업 레벨</th>
						<th>현재 제품 보유량</th>
						<th>필요한 제품량</th>
					</tr>
					<tr>
						<td>${ob.protname}</td>
						<td>${ob.protlevel }</td>
						<td>${ob.trueproduce }</td>
						<td>${ob.reqproduce }</td>
					</tr>
					<tr>
						<th>제품 변환률</th>
						<th>소요 시간</th>
						<!-- 재화 변환에 소요되는 시간 -->
						<th>제품 생산량</th>
					</tr>
					<tr>
						<td>${ob.convproduce }</td>
						<td>${ob.reqtime }</td>
						<td>${ob.prodamt }</td>
					</tr>
					<tr>
						<th rowspan="4"><a
							href="/ProjectYes/ResourceDevInsert.do?userno=${ob.userno}&protno=${ob.protno}&resourceamt=1">
								개발등록</a></th>
					</tr>
				</table>
			</c:forEach>
		</c:if>
	</div>
	<!-- 공인중개사 -->
	<div>
	<h1>공인중개사</h1>
		<c:if test="${!empty list }">
			<c:forEach items="${list }" var="ob">
				<table class="sale_table">
					<tr>
						<th>영업 등급</th>
						<th>영업 레벨</th>
						<th>현재 제품 보유량</th>
						<th>필요한 제품량</th>
					</tr>
					<tr>
						<td>${ob.protname}</td>
						<td>${ob.protlevel }</td>
						<td>${ob.trueproduce }</td>
						<td>${ob.reqproduce }</td>
					</tr>
					<tr>
						<th>제품 변환률</th>
						<th>소요 시간</th>
						<!-- 재화 변환에 소요되는 시간 -->
						<th>제품 생산량</th>
					</tr>
					<tr>
						<td>${ob.convproduce }</td>
						<td>${ob.reqtime }</td>
						<td>${ob.prodamt }</td>
					</tr>
					<tr>
						<th rowspan="4"><a
							href="/ProjectYes/ResourceDevInsert.do?userno=${ob.userno}&protno=${ob.protno}&resourceamt=1">
								개발등록</a></th>
					</tr>
				</table>
			</c:forEach>
		</c:if>
	</div>
	<!-- 인사과 -->
	<div>
	<h1>인사과</h1>
		<c:if test="${!empty list }">
			<c:forEach items="${list }" var="ob">
				<table class="sale_table">
					<tr>
						<th>영업 등급</th>
						<th>영업 레벨</th>
						<th>현재 제품 보유량</th>
						<th>필요한 제품량</th>
					</tr>
					<tr>
						<td>${ob.protname}</td>
						<td>${ob.protlevel }</td>
						<td>${ob.trueproduce }</td>
						<td>${ob.reqproduce }</td>
					</tr>
					<tr>
						<th>제품 변환률</th>
						<th>소요 시간</th>
						<!-- 재화 변환에 소요되는 시간 -->
						<th>제품 생산량</th>
					</tr>
					<tr>
						<td>${ob.convproduce }</td>
						<td>${ob.reqtime }</td>
						<td>${ob.prodamt }</td>
					</tr>
					<tr>
						<th rowspan="4"><a
							href="/ProjectYes/ResourceDevInsert.do?userno=${ob.userno}&protno=${ob.protno}&resourceamt=1">
								개발등록</a></th>
					</tr>
				</table>
			</c:forEach>
		</c:if>
	</div>
</body>
</html>