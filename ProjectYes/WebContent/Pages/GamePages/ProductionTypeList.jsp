<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����Ȱ��</title>
</head>
<body>
	<h1>����Ȱ��</h1>
	<!-- <a href="/ProjectYes/SelectConversionRes.do?userno=1">
	��ȯ�� ������ �ڿ� �� Ȯ��</a> -->
	<h2>���� ����</h2>
	<c:if test="${!empty ProductionTypeList }">
		<table border="1">
			<caption>����</caption>
			<tr>
				<td>���� Ÿ�� �ڵ��ȣ</td>
				<td>����Ÿ�� �̸�</td>
				<td>���걸��</td>
				<td>����Ÿ�� level</td>
				<td>���� �ʿ� �ð� (��)</td>
				<td>���� �ʿ� ��</td>
				<td>���� �ʿ� ��ǰ</td>
				<td>���� �ʿ� �ε���</td>
				<td>���� �ʿ� �η�</td>
				<td>����ġ ȹ�淮</td>
				<td>���귮</td>
				<td>����Ȯ��</td>
			</tr>
			<c:forEach items="${ProductionTypeList }" var="ob">
				<c:if test="${ob.protype eq '����' }">
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
						<td>${ob.percent}</td>
					</tr>
				</c:if>
			</c:forEach>

		</table>


		<table border="1">
			<caption>����</caption>
			<tr>
				<td>���� Ÿ�� �ڵ��ȣ</td>
				<td>����Ÿ�� �̸�</td>
				<td>���걸��</td>
				<td>����Ÿ�� level</td>
				<td>���� �ʿ� �ð� (��)</td>
				<td>���� �ʿ� ��</td>
				<td>���� �ʿ� ��ǰ</td>
				<td>���� �ʿ� �ε���</td>
				<td>���� �ʿ� �η�</td>
				<td>����ġ ȹ�淮</td>
				<td>���귮</td>
				<td>����Ȯ��</td>
			</tr>
			<c:forEach items="${ProductionTypeList }" var="ob">
				<c:if test="${ob.protype eq '�ε���' }">
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
						<td>${ob.percent}</td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
		<table border="1">
			<caption>���Ի�� ä��</caption>
			<tr>
				<td>���� Ÿ�� �ڵ��ȣ</td>
				<td>����Ÿ�� �̸�</td>
				<td>���걸��</td>
				<td>����Ÿ�� level</td>
				<td>���� �ʿ� �ð� (��)</td>
				<td>���� �ʿ� ��</td>
				<td>���� �ʿ� ��ǰ</td>
				<td>���� �ʿ� �ε���</td>
				<td>���� �ʿ� �η�</td>
				<td>����ġ ȹ�淮</td>
				<td>���귮</td>
				<td>����Ȯ��</td>
			</tr>
			<c:forEach items="${ProductionTypeList }" var="ob">
				<c:if test="${ob.protype eq '�η�' }">
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
						<td>${ob.percent}</td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
		<table border="1">
			<caption>����</caption>
			<tr>
				<td>���� Ÿ�� �ڵ��ȣ</td>
				<td>����Ÿ�� �̸�</td>
				<td>���걸��</td>
				<td>����Ÿ�� level</td>
				<td>���� �ʿ� �ð� (��)</td>
				<td>���� �ʿ� ��</td>
				<td>���� �ʿ� ��ǰ</td>
				<td>���� �ʿ� �ε���</td>
				<td>���� �ʿ� �η�</td>
				<td>����ġ ȹ�淮</td>
				<td>���귮</td>
				<td>����Ȯ��</td>
			</tr>
			<c:forEach items="${ProductionTypeList }" var="ob">
				<c:if test="${ob.protype eq '����' }">
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
						<td>${ob.percent}</td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
	</c:if>


	<h2>���� ����</h2>
	<c:if test="${!empty ProductionDevList }">
		<table border="1">
			<caption>����</caption>
			<tr>
				<td>���� Ÿ�� �ڵ��ȣ</td>
				<td>����Ÿ�� �̸�</td>
				<td>���걸��</td>
				<td>����Ÿ�� level</td>
				<td>���� �ʿ� �ð� (��)</td>
				<td>���� �ʿ� ��</td>
				<td>���� �ʿ� ��ǰ</td>
				<td>���� �ʿ� �ε���</td>
				<td>���� �ʿ� �η�</td>
				<td>����ġ ȹ�淮</td>
				<td>���귮</td>
				<td>����Ȯ��</td>
				<td>���� �ð�(��)</td>
				<td>���߰��ɿ���</td>
				<td>���� ��ư</td>
			</tr>
			<c:forEach items="${ProductionDevList }" var="ob">
				<c:if test="${ob.protype eq '����' }">
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
						<td>${ob.percent}</td>
						<td>${ob.remainsec}</td>
						<td>${ob.status}</td>
						<c:if test="${(ob.status eq '���߰���') && (ob.remainsec==0)}">
							<td><a href="/ProjectYes/ResourceDevActivities.do?userno=1&protno=${ob.protno}">���߰���</a></td>
						</c:if>
						<c:if test="${!(ob.status eq '���߰���') || !(ob.remainsec==0)}">
							<td><input type="button" value="���� �Ұ���"></td>
						</c:if>
					</tr>
				</c:if>
			</c:forEach>

		</table>


		<table border="1">
			<caption>����</caption>
			<tr>
				<td>���� Ÿ�� �ڵ��ȣ</td>
				<td>����Ÿ�� �̸�</td>
				<td>���걸��</td>
				<td>����Ÿ�� level</td>
				<td>���� �ʿ� �ð� (��)</td>
				<td>���� �ʿ� ��</td>
				<td>���� �ʿ� ��ǰ</td>
				<td>���� �ʿ� �ε���</td>
				<td>���� �ʿ� �η�</td>
				<td>����ġ ȹ�淮</td>
				<td>���귮</td>
				<td>����Ȯ��</td>
				<td>���� �ð�(��)</td>
				<td>���߰��ɿ���</td>
				<td>���� ��ư</td>
			</tr>
			<c:forEach items="${ProductionDevList }" var="ob">
				<c:if test="${ob.protype eq '�ε���' }">
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
						<td>${ob.percent}</td>
						<td>${ob.remainsec}</td>
						<td>${ob.status}</td>
						<c:if test="${(ob.status eq '���߰���') && (ob.remainsec==0)}">
							<td><a
								href="/ProjectYes/ResourceDevActivities.do?userno=1&protno=${ob.protno}">���߰���</a></td>
						</c:if>
						<c:if test="${!(ob.status eq '���߰���') || !(ob.remainsec==0)}">
							<td><input type="button" value="���� �Ұ���"></td>
						</c:if>
					</tr>
				</c:if>
			</c:forEach>
		</table>
		<table border="1">
			<caption>���Ի�� ä��</caption>
			<tr>
				<td>���� Ÿ�� �ڵ��ȣ</td>
				<td>����Ÿ�� �̸�</td>
				<td>���걸��</td>
				<td>����Ÿ�� level</td>
				<td>���� �ʿ� �ð� (��)</td>
				<td>���� �ʿ� ��</td>
				<td>���� �ʿ� ��ǰ</td>
				<td>���� �ʿ� �ε���</td>
				<td>���� �ʿ� �η�</td>
				<td>����ġ ȹ�淮</td>
				<td>���귮</td>
				<td>����Ȯ��</td>
				<td>���� �ð�(��)</td>
				<td>���߰��ɿ���</td>
				<td>���� ��ư</td>
			</tr>
			<c:forEach items="${ProductionDevList }" var="ob">
				<c:if test="${ob.protype eq '�η�' }">
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
						<td>${ob.percent}</td>
						<td>${ob.remainsec}</td>
						<td>${ob.status}</td>
						<c:if test="${(ob.status eq '���߰���') && (ob.remainsec==0)}">
							<td><a
								href="/ProjectYes/ResourceDevActivities.do?userno=1&protno=${ob.protno}">���߰���</a></td>
						</c:if>
						<c:if test="${!(ob.status eq '���߰���') || !(ob.remainsec==0)}">
							<td><input type="button" value="���� �Ұ���"></td>
						</c:if>
					</tr>
				</c:if>
			</c:forEach>
		</table>
		<table border="1">
			<caption>����</caption>
			<tr>
				<td>���� Ÿ�� �ڵ��ȣ</td>
				<td>����Ÿ�� �̸�</td>
				<td>���걸��</td>
				<td>����Ÿ�� level</td>
				<td>���� �ʿ� �ð� (��)</td>
				<td>���� �ʿ� ��</td>
				<td>���� �ʿ� ��ǰ</td>
				<td>���� �ʿ� �ε���</td>
				<td>���� �ʿ� �η�</td>
				<td>����ġ ȹ�淮</td>
				<td>���귮</td>
				<td>����Ȯ��</td>
				<td>���� �ð�(��)</td>
				<td>���߰��ɿ���</td>
				<td>���� ��ư</td>
			</tr>
			<c:forEach items="${ProductionDevList }" var="ob">
				<c:if test="${ob.protype eq '����' }">
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
						<td>${ob.percent}</td>
						<td>${ob.remainsec}</td>
						<td>${ob.status}</td>
						<c:if test="${(ob.status eq '���߰���') && (ob.remainsec==0)}">
							<td><a
								href="/ProjectYes/ResourceDevActivities.do?userno=1&protno=${ob.protno}">���߰���</a></td>
						</c:if>
						<c:if test="${!(ob.status eq '���߰���') || !(ob.remainsec==0)}">
							<td><input type="button" value="���� �Ұ���"></td>
						</c:if>
					</tr>
				</c:if>
			</c:forEach>
		</table>
	</c:if>

</body>
</html>