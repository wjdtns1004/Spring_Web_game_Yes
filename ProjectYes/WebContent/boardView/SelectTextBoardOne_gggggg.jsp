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
	<h1>�󼼺���</h1>
	<c:if test="${!empty context }">
		<table border="1">
			<tr>
				<td>�ۼ���</td>
				<td>����</td>
				<td>����</td>
			</tr>
			<tr>
				<td>${context.username}</td>
				<td>${context.brdtitle}</td>
				<td>${context.brdmemo}</td>
			</tr>
		</table>
	</c:if>
	<a href="/ProjectYes/deleteBoardOne.do?brdno=${context.brdno }">����</a>
	<a href="/ProjectYes/boardView/updateBoardOne.jsp?brdno=${context.brdno }">����</a>
	<a href="/ProjectYes/boardView/boardReplyInsert.jsp?brdno=${context.brdno }&userno=${context.userno}">��� ����</a>
	

	<c:if test="${!empty replist}">
	<h5>��� ���</h5>
		<table border="1" style="width: 300px">
			<tr>
				<td>�ۼ���</td>
				<td>��¥</td>
				<td>��۳���</td>
			</tr>
			<c:forEach items="${replist}" var="replist">
				<tr>
					<td>${replist.userno}</td>
					<td>${replist.lastdate }</td>
					<td>${replist.rememo}</td>
					<td><a href="/ProjectYes/DeleteBoardReply.do?reno=${replist.reno }&userno=${replist.userno}">��� ����</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>