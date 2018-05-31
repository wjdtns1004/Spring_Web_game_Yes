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
<h1>랭킹</h1>
<c:if test="${!empty list }">
		<table border="1">
			<tr>
				<td>money</td>
				<td>produce</td>
				<td>realestate</td>
				<td>worker</td>
				<td>userno</td>
				<td>username</td>
				<td>id</td>
				<td>nickname</td>
				<td>indino</td>
				<td>guildno</td>
				<td>signdate</td>
			</tr>
			<c:forEach items="${list }" var="ob">
				<tr>
					<td>${ob.money}</td>
					<td>${ob.produce}</td>
					<td>${ob.realestate}</td>
					<td>${ob.worker}</td>
					<td>${ob.userno}</td>
					<td>${ob.username}</td>
					<td>${ob.id}</td>
					<td>${ob.nickname}</td>
					<td>${ob.indino}</td>
					<td>${ob.guildno}</td>
					<td>${ob.signdate}</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>

	<a href="/ProjectYes/index.html"> 뒤로가기</a>



</body>
</html>