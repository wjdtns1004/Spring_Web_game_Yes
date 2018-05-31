<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Community.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
<!-- 	<script type="text/javascript" src="js/prefixfree.min.js"></script> -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/All.js"></script>

	<title> Community </title>
</head>
<body>
	<section>

		<article>
			<h2><a href="img/"> BOARD </a></h2>
			<strong><img src="img/" /></strong>
			<p><img src="img/" /></p>
			<em> 
				<h1>���̵� : <%=session.getAttribute("id") %></h1>
				<h1>�г��� : <%=session.getAttribute("nickname") %></h1>
				<table border="1">
				<tr><td>��ȣ</td><td>����</td><td>�����</td><td>�����</td><td>��ȸ��</td></tr>
				<c:if test="${!empty list}">
					<c:forEach items="${list}" var="ob">
						<tr>
							<td>${ob.brdno }</td>
							<td><a href="/ProjectYes/SelectTextBoardOne.do?brdno=${ob.brdno }&bgno=${ob.bgno }&userno=${ob.userno }">${ob.brdtitle }</a></td>
							<td>${ob.username }</td>
							<td>${ob.brddate }</td>
							<td>${ob.brdhit }</td>
							<td>${ob.bgno }</td><!-- 1�� �Ѿ���ϴµ� �ڲ� 0�� �Ѿ -->
						</tr>
					</c:forEach>
				</c:if>
				<br />	
				</table>
				</em>
			<span>X</span>
		</article>

		<article>
			<h2><a href="img/"> Popular Comments </a></h2>
			<strong><img src="img/" /></strong>
			<p><img src="img/" /></p>
			<em> �α�� <br /> ��ƺ���? </em>
			<span>X</span>
		</article>
		
		<article>
			<h2><a href="img/"> Notice </a></h2>
			<strong><img src="img/" /></strong>
			<p><img src="img/" /></p>
			<em> ���� <br /> ���� </em>
			<span>X</span>
		</article>
		
	</section>
</body>
</html>