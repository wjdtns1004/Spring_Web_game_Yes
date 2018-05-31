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
	<c:if test="${result==1 }">
		<h1>삭제 성공</h1>
	</c:if>
	<c:if test="${result==0 }">
		<h1>삭제 실패</h1>
	</c:if>
	<a href="/ProjectYes/BoardListSelect.do">게시판</a>
</body>
</html>