<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>생산활동</title>
</head>
<body>
	<h1>생산활동</h1>
	<!-- <a href="/ProjectYes/SelectConversionRes.do?userno=1">
	전환이 가능한 자원 양 확인</a> -->
	<h2>현재 레벨</h2>
	<c:if test="${!empty ProductionTypeList }">
		<table border="1">
			<caption>공장</caption>
			<tr>
				<td>생산 타입 코드번호</td>
				<td>생산타입 이름</td>
				<td>생산구분</td>
				<td>생산타입 level</td>
				<td>개발 필요 시간 (초)</td>
				<td>개발 필요 돈</td>
				<td>개발 필요 제품</td>
				<td>개발 필요 부동산</td>
				<td>개발 필요 인력</td>
				<td>경험치 획득량</td>
				<td>생산량</td>
				<td>성공확률</td>
			</tr>
			<c:forEach items="${ProductionTypeList }" var="ob">
				<c:if test="${ob.protype eq '생산' }">
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
			<caption>투기</caption>
			<tr>
				<td>생산 타입 코드번호</td>
				<td>생산타입 이름</td>
				<td>생산구분</td>
				<td>생산타입 level</td>
				<td>개발 필요 시간 (초)</td>
				<td>개발 필요 돈</td>
				<td>개발 필요 제품</td>
				<td>개발 필요 부동산</td>
				<td>개발 필요 인력</td>
				<td>경험치 획득량</td>
				<td>생산량</td>
				<td>성공확률</td>
			</tr>
			<c:forEach items="${ProductionTypeList }" var="ob">
				<c:if test="${ob.protype eq '부동산' }">
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
			<caption>신입사원 채용</caption>
			<tr>
				<td>생산 타입 코드번호</td>
				<td>생산타입 이름</td>
				<td>생산구분</td>
				<td>생산타입 level</td>
				<td>개발 필요 시간 (초)</td>
				<td>개발 필요 돈</td>
				<td>개발 필요 제품</td>
				<td>개발 필요 부동산</td>
				<td>개발 필요 인력</td>
				<td>경험치 획득량</td>
				<td>생산량</td>
				<td>성공확률</td>
			</tr>
			<c:forEach items="${ProductionTypeList }" var="ob">
				<c:if test="${ob.protype eq '인력' }">
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
			<caption>영업</caption>
			<tr>
				<td>생산 타입 코드번호</td>
				<td>생산타입 이름</td>
				<td>생산구분</td>
				<td>생산타입 level</td>
				<td>개발 필요 시간 (초)</td>
				<td>개발 필요 돈</td>
				<td>개발 필요 제품</td>
				<td>개발 필요 부동산</td>
				<td>개발 필요 인력</td>
				<td>경험치 획득량</td>
				<td>생산량</td>
				<td>성공확률</td>
			</tr>
			<c:forEach items="${ProductionTypeList }" var="ob">
				<c:if test="${ob.protype eq '영업' }">
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


	<h2>다음 레벨</h2>
	<c:if test="${!empty ProductionDevList }">
		<table border="1">
			<caption>공장</caption>
			<tr>
				<td>생산 타입 코드번호</td>
				<td>생산타입 이름</td>
				<td>생산구분</td>
				<td>생산타입 level</td>
				<td>개발 필요 시간 (초)</td>
				<td>개발 필요 돈</td>
				<td>개발 필요 제품</td>
				<td>개발 필요 부동산</td>
				<td>개발 필요 인력</td>
				<td>경험치 획득량</td>
				<td>생산량</td>
				<td>성공확률</td>
				<td>남은 시간(분)</td>
				<td>개발가능여부</td>
				<td>개발 버튼</td>
			</tr>
			<c:forEach items="${ProductionDevList }" var="ob">
				<c:if test="${ob.protype eq '생산' }">
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
						<c:if test="${(ob.status eq '개발가능') && (ob.remainsec==0)}">
							<td><a href="/ProjectYes/ResourceDevActivities.do?userno=1&protno=${ob.protno}">개발가능</a></td>
						</c:if>
						<c:if test="${!(ob.status eq '개발가능') || !(ob.remainsec==0)}">
							<td><input type="button" value="개발 불가능"></td>
						</c:if>
					</tr>
				</c:if>
			</c:forEach>

		</table>


		<table border="1">
			<caption>투기</caption>
			<tr>
				<td>생산 타입 코드번호</td>
				<td>생산타입 이름</td>
				<td>생산구분</td>
				<td>생산타입 level</td>
				<td>개발 필요 시간 (초)</td>
				<td>개발 필요 돈</td>
				<td>개발 필요 제품</td>
				<td>개발 필요 부동산</td>
				<td>개발 필요 인력</td>
				<td>경험치 획득량</td>
				<td>생산량</td>
				<td>성공확률</td>
				<td>남은 시간(분)</td>
				<td>개발가능여부</td>
				<td>개발 버튼</td>
			</tr>
			<c:forEach items="${ProductionDevList }" var="ob">
				<c:if test="${ob.protype eq '부동산' }">
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
						<c:if test="${(ob.status eq '개발가능') && (ob.remainsec==0)}">
							<td><a
								href="/ProjectYes/ResourceDevActivities.do?userno=1&protno=${ob.protno}">개발가능</a></td>
						</c:if>
						<c:if test="${!(ob.status eq '개발가능') || !(ob.remainsec==0)}">
							<td><input type="button" value="개발 불가능"></td>
						</c:if>
					</tr>
				</c:if>
			</c:forEach>
		</table>
		<table border="1">
			<caption>신입사원 채용</caption>
			<tr>
				<td>생산 타입 코드번호</td>
				<td>생산타입 이름</td>
				<td>생산구분</td>
				<td>생산타입 level</td>
				<td>개발 필요 시간 (초)</td>
				<td>개발 필요 돈</td>
				<td>개발 필요 제품</td>
				<td>개발 필요 부동산</td>
				<td>개발 필요 인력</td>
				<td>경험치 획득량</td>
				<td>생산량</td>
				<td>성공확률</td>
				<td>남은 시간(분)</td>
				<td>개발가능여부</td>
				<td>개발 버튼</td>
			</tr>
			<c:forEach items="${ProductionDevList }" var="ob">
				<c:if test="${ob.protype eq '인력' }">
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
						<c:if test="${(ob.status eq '개발가능') && (ob.remainsec==0)}">
							<td><a
								href="/ProjectYes/ResourceDevActivities.do?userno=1&protno=${ob.protno}">개발가능</a></td>
						</c:if>
						<c:if test="${!(ob.status eq '개발가능') || !(ob.remainsec==0)}">
							<td><input type="button" value="개발 불가능"></td>
						</c:if>
					</tr>
				</c:if>
			</c:forEach>
		</table>
		<table border="1">
			<caption>영업</caption>
			<tr>
				<td>생산 타입 코드번호</td>
				<td>생산타입 이름</td>
				<td>생산구분</td>
				<td>생산타입 level</td>
				<td>개발 필요 시간 (초)</td>
				<td>개발 필요 돈</td>
				<td>개발 필요 제품</td>
				<td>개발 필요 부동산</td>
				<td>개발 필요 인력</td>
				<td>경험치 획득량</td>
				<td>생산량</td>
				<td>성공확률</td>
				<td>남은 시간(분)</td>
				<td>개발가능여부</td>
				<td>개발 버튼</td>
			</tr>
			<c:forEach items="${ProductionDevList }" var="ob">
				<c:if test="${ob.protype eq '영업' }">
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
						<c:if test="${(ob.status eq '개발가능') && (ob.remainsec==0)}">
							<td><a
								href="/ProjectYes/ResourceDevActivities.do?userno=1&protno=${ob.protno}">개발가능</a></td>
						</c:if>
						<c:if test="${!(ob.status eq '개발가능') || !(ob.remainsec==0)}">
							<td><input type="button" value="개발 불가능"></td>
						</c:if>
					</tr>
				</c:if>
			</c:forEach>
		</table>
	</c:if>

</body>
</html>