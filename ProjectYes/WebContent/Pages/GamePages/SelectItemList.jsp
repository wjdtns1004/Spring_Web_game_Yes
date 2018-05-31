<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>아이템 리스트</h1>
<c:if test="${!empty list }">
		<table border="1">
			<tr>
				<td>protno</td>
				<td>protname</td>
				<td>protype</td>
				<td>protlevel</td>
				<td>reqtime</td>
				<td>reqmoney</td>
				<td>reqproduce</td>
				<td>reqrealestate</td>
				<td>reqworker</td>
				<td>getexp</td>
				<td>prodamt</td>
				<td>remark</td>
				<td>percent</td>
				<td>구매</td>
			</tr>
			<c:forEach items="${list }" var="ob">
				<tr>
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
					<td>${ob.percent}</td>
					<td><a href="/ProjectYes/InsertItemByprotno.do?userno=1&protno=${ob.protno}">구매</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>

	<a href="/ProjectYes/SelectUserSummary.do"> 뒤로가기</a>



</body>
</html>