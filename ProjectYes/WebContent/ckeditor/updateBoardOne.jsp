<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h1>�Խñ� ������Ʈ</h1>
<%
int brdno = Integer.parseInt(request.getParameter("brdno"));
response.setCharacterEncoding("UTF-8");
%>
<form action="/ProjectYes/updateBoardOne.do?brdno=<%=brdno %>" method="post">
<h3>����<input type="text" name="brdtitle"></h3>
<h3>����<input type="text" name="brdmemo"></h3>
<input type="submit" value="Ȯ��">

</form>

</body>
</html>