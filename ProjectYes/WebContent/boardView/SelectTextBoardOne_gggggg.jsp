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
	<h1>상세보기</h1>
	<c:if test="${!empty context }">
		<table border="1">
			<tr>
				<td>작성자</td>
				<td>제목</td>
				<td>본문</td>
			</tr>
			<tr>
				<td>${context.username}</td>
				<td>${context.brdtitle}</td>
				<td>${context.brdmemo}</td>
			</tr>
		</table>
	</c:if>
	<a href="/ProjectYes/deleteBoardOne.do?brdno=${context.brdno }">삭제</a>
	<a href="/ProjectYes/boardView/updateBoardOne.jsp?brdno=${context.brdno }">수정</a>
	<a href="/ProjectYes/boardView/boardReplyInsert.jsp?brdno=${context.brdno }&userno=${context.userno}">댓글 쓰기</a>
	

	<c:if test="${!empty replist}">
	<h5>댓글 목록</h5>
		<table border="1" style="width: 300px">
			<tr>
				<td>작성자</td>
				<td>날짜</td>
				<td>댓글내용</td>
			</tr>
			<c:forEach items="${replist}" var="replist">
				<tr>
					<td>${replist.userno}</td>
					<td>${replist.lastdate }</td>
					<td>${replist.rememo}</td>
					<td><a href="/ProjectYes/DeleteBoardReply.do?reno=${replist.reno }&userno=${replist.userno}">댓글 삭제</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>