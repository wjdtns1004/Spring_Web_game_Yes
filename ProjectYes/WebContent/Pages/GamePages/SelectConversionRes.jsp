<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
	%>
	<!-- 전환이 가능한 자원 양을 확인하는 루틴 -->
	<h1>전환에 투입가능한 영업사원 목록</h1>
	<c:if test="${!empty list }">
		<table border="1">
			<tr>
				<td>개발등록</td>
				<td>userno</td>	<!-- 유저 번호 -->
				
				<td>trueproduce</td><!-- 현재 제품 보유량 -->
				<td>truerealestate</td><!-- 현재 부동산 보유량 -->
				<td>trueworker</td><!-- 현재 인력 보유량 -->
				
				<td>conversionyn</td><!-- 개발 가능 유무 확인 변수 (boolean 변수) -->
				
				<td>conreqtime</td><!-- 변환 시간 -->
				<td>convproduce</td><!-- 제품 변환률 -->
				<td>convrealestate</td><!-- 부동산 반환율 -->
				<td>conworker</td><!-- 인력 반환율 -->
				
				<td>protno</td><!-- 생산 타입 코드 번호(PK) -->	
				<td>protname</td><!--생산타입 이름 -->
				<td>protype</td><!--생산 구분 -->
				<td>protlevel</td><!--생산 타입 레벨 -->
				
				<td>reqtime</td><!-- 개발 필요 시간 -->
				<td>reqmoney</td><!--개발 필요 현금 -->
				<td>reqproduce</td><!--개발 필요 제품 -->
				<td>reqrealestate</td><!--개발 필요 부동산 -->
				<td>reqworker</td><!-- 개발 필요 인력 -->
				
				<td>getexp</td><!--획득 경험치 -->
				<td>prodamt</td><!--생산량 -->
				<td>remark</td><!--설명 -->

			</tr>
			<c:forEach items="${list }" var="ob">
				<tr>
					<td><a
						href="/ProjectYes/ResourceDevInsert.do?userno=${ob.userno}&protno=${ob.protno}&resourceamt=1">
							개발등록</a></td>
					<td>${ob.userno}</td>
					
					<td>${ob.trueproduce}</td>
					<td>${ob.truerealestate}</td>
					<td>${ob.trueworker}</td>
					
					<td><%-- ${ob.conversionyn} --%> 
						<input type="radio" name="select"
						value="자원"> <input type="radio" name="select" value="부동산">
						<input type="radio" name="select" value="인력">
					</td>
					
					<td>${ob.conreqtime}</td>
					<td>${ob.convproduce}</td>
					<td>${ob.convrealestate}</td>
					<td>${ob.conworker}</td>
					
					<td>${ob.protno}</td>
					<td>${ob.protname}</td>
					<td>${ob.protype}</td>
					<td>${ob.protlevel}</td>
					
					<td>${ob.reqtime}</td>
					<td>${ob.reqmoney}</td>
					<td>${ob.reqproduce}</td>
					<td>${ob.reqrealestate}</td>
					<td>${ob.reqworker}</td>
					
					<td>${ob.getexp}</td>
					<td>${ob.prodamt}</td>
					<td>${ob.remark}</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	<a href="/ProjectYes/SelectUserSummary.do"> 뒤로가기</a>

</body>
</html>