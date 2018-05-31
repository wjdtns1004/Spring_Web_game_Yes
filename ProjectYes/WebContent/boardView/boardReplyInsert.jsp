<%@page import="yes.vo.board.BoardReplyVo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
response.setCharacterEncoding("UTF-8");
String brdno = request.getParameter("brdno"); 
String userno = request.getParameter("userno"); 
%>
<%=brdno %>
<%=userno %>
<form action="/ProjectYes/InsertBoardReply.do" >
<h3><input type="hidden" name="brdno" value="<%=brdno %>"></h3>
<h3><input type="hidden" name="userno" value="<%=userno %>"></h3>

<h3>댓글 내용<input type="text" name="rememo"></h3>
<input type="submit" value="확인"/>
</form>
</body>
</html>