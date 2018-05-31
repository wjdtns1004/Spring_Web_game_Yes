<%@page
	import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="yes.biz.board.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/board_list.js"></script>
	
</head>
<body>

<h1>���̵� : <%=session.getAttribute("id") %></h1>
<h1>�г��� : <%=session.getAttribute("nickname") %></h1>
<a href="/ProjectYes/logout.jsp">�α׾ƿ�</a>
<table border="1">
<tr><td>��ȣ</td><td>����</td><td>�����</td><td>�����</td><td>��ȸ��</td></tr>
		<c:if test="${!empty list}">
			<c:forEach items="${list}" var="ob">
				<tr>
					<td>${ob.brdno }</td>
					<td><a href="/ProjectYes/SelectTextBoardOne.do?brdno=${ob.brdno }&bgno=${ob.bgno }&userno=${ob.userno }">${ob.brdtitle }</a></td>
					<td>${ob.nickname }</td>
					<td>${ob.brddate }</td>
					<td>${ob.brdhit }</td>
					<td>${ob.bgno }</td><!-- 1�� �Ѿ���ϴµ� �ڲ� 0�� �Ѿ -->
				</tr>
			</c:forEach>
		</c:if>
		<br />	
	</table>
	<%
		int pageNum = (int) request.getAttribute("rownum");
		for (int i = 1; i <= pageNum; i++) {
	%>
	<a href="/ProjectYes/BoardListSelect.do?clickedNum=<%=i%>"><%=i%></a>
	<%
		}
	%>
	<a class="board_write">�۾���</a>
	
	<form action="/ProjectYes/BoardListSearch.do" method="post">
		<div>
			<input type="checkbox" name="searchType" value="brdtitle"/>
			<label>����</label> 
			<input type="checkbox" name="searchType" value="brdmemo"/>
			<label>����</label> 
			<input type="text" name="searchKeyword" style="width: 150px;" maxlength="50" /> 
			<input name="btn_search" value="�˻�" type="submit" />
		</div>
	</form>


</body>
</html>