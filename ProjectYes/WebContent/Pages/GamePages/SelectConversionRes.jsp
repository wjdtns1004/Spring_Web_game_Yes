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
	<!-- ��ȯ�� ������ �ڿ� ���� Ȯ���ϴ� ��ƾ -->
	<h1>��ȯ�� ���԰����� ������� ���</h1>
	<c:if test="${!empty list }">
		<table border="1">
			<tr>
				<td>���ߵ��</td>
				<td>userno</td>	<!-- ���� ��ȣ -->
				
				<td>trueproduce</td><!-- ���� ��ǰ ������ -->
				<td>truerealestate</td><!-- ���� �ε��� ������ -->
				<td>trueworker</td><!-- ���� �η� ������ -->
				
				<td>conversionyn</td><!-- ���� ���� ���� Ȯ�� ���� (boolean ����) -->
				
				<td>conreqtime</td><!-- ��ȯ �ð� -->
				<td>convproduce</td><!-- ��ǰ ��ȯ�� -->
				<td>convrealestate</td><!-- �ε��� ��ȯ�� -->
				<td>conworker</td><!-- �η� ��ȯ�� -->
				
				<td>protno</td><!-- ���� Ÿ�� �ڵ� ��ȣ(PK) -->	
				<td>protname</td><!--����Ÿ�� �̸� -->
				<td>protype</td><!--���� ���� -->
				<td>protlevel</td><!--���� Ÿ�� ���� -->
				
				<td>reqtime</td><!-- ���� �ʿ� �ð� -->
				<td>reqmoney</td><!--���� �ʿ� ���� -->
				<td>reqproduce</td><!--���� �ʿ� ��ǰ -->
				<td>reqrealestate</td><!--���� �ʿ� �ε��� -->
				<td>reqworker</td><!-- ���� �ʿ� �η� -->
				
				<td>getexp</td><!--ȹ�� ����ġ -->
				<td>prodamt</td><!--���귮 -->
				<td>remark</td><!--���� -->

			</tr>
			<c:forEach items="${list }" var="ob">
				<tr>
					<td><a
						href="/ProjectYes/ResourceDevInsert.do?userno=${ob.userno}&protno=${ob.protno}&resourceamt=1">
							���ߵ��</a></td>
					<td>${ob.userno}</td>
					
					<td>${ob.trueproduce}</td>
					<td>${ob.truerealestate}</td>
					<td>${ob.trueworker}</td>
					
					<td><%-- ${ob.conversionyn} --%> 
						<input type="radio" name="select"
						value="�ڿ�"> <input type="radio" name="select" value="�ε���">
						<input type="radio" name="select" value="�η�">
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
	<a href="/ProjectYes/SelectUserSummary.do"> �ڷΰ���</a>

</body>
</html>