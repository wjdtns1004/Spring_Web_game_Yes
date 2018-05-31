<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%-- <link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Production.css" />
<!--<script type="text/javascript" src="../../js/prefixfree.min.js"></script>-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/All.js" />
	 --%>
	<link href="${pageContext.request.contextPath}/css/ingame.css" rel="stylesheet" type="text/css">
	

<title>Production Page</title>
</head>
<body>
	<!-- 공장 -->
	<div class="SpectateLayoutWrap">
		<div class="SpectateLayout">
			<div class="ContentWrap">
				<div class="Content">
					<div class="SpectateSummonerList">
					
					

					
						<div class="Item">
							<div class="Content">
								<div class="ChampionImage">
									<img src="${pageContext.request.contextPath}/img/coin-money1.png" class="Image">
								</div>					
								<%-- <span class="SummonerName">${ob.protname}</span> 
								<span class="ChampionName">${ob.remark}</span> --%>

								<div class="Actions">
									<a href="#" class="Action">
									
									
									
									<c:if test="${!empty ProductionTypeList }">

				<c:forEach items="${ProductionTypeList }" var="ob">
					<c:if test="${ob.protype eq '생산' }">
					<span class="Name">생산 타입 레벨 : ${ob.protlevel}</span>
					<span class="Name">경험치 획득량 : ${ob.getexp}</span>
					<span class="Name">생산량 : ${ob.prodamt}</span>
					
					<span class="Name">생산 성공 확률 : ${ob.percent }</span>
					<span class="Name">개발 필요 현금 : ${ob.reqmoney}</span>
					<span class="Name">개발 필요 시간 : ${ob.reqtime}</span>
					
					<span class="Name">개발 필요 제품 : ${ob.reqproduce}</span>
					<span class="Name">개발 필요 부동산 : ${ob.reqrealestate}</span>
					<span class="Name">개발 필요 인력 : ${ob.reqworker}</span>
					</c:if>
				</c:forEach>
		
				
			</table>
		</c:if>
		<h3>다음 레벨</h3>
		<c:if test="${!empty ProductionDevList }">
			
				<c:forEach items="${ProductionDevList }" var="ob">
					<c:if test="${ob.protype eq '생산' }">
					
					<span class="Name">생산 타입 레벨 : ${ob.protlevel}</span>
					<span class="Name">경험치 획득량 : ${ob.getexp}</span>
					<span class="Name">생산량 : ${ob.prodamt}</span>
					
					<span class="Name">생산 성공 확률 : ${ob.percent }</span>
					<span class="Name">개발 필요 현금 : ${ob.reqmoney}</span>
					<span class="Name">개발 필요 시간 : ${ob.reqtime}</span>
					
					<span class="Name">개발 필요 제품 : ${ob.reqproduce}</span>
					<span class="Name">개발 필요 부동산 : ${ob.reqrealestate}</span>
					<span class="Name">개발 필요 인력 : ${ob.reqworker}</span>
					
					<span class="Name">개발 필요 부동산 : ${ob.status}</span>
					<span class="Name">개발 필요 인력 : ${ob.remainsec}</span>
						
					</c:if>
				</c:forEach>
		</c:if> 
									</a> 
								</div>
							</div>
						
							<div class="Footer">
								<a target="_blank">
								     
										<%-- <input id="buy0${status.count }"  type="button" value="구매" style="float: right;">
										<input type="hidden" id="userno0${status.count }" value="1">
										<input type="hidden" id="protno0${status.count }" value="${ob.protno}">
									<!-- </div> -->
									<div class="TeamName">${ob.protype }</div> --%>
									<div class="Extra">YES</div>
								</a>
							</div>
						</div>
					
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<%-- <div>
		<h1>공장</h1>
		<h3>현재 레벨</h3>
		<c:if test="${!empty ProductionTypeList }">
			<table class="prod_table">
				<!-- 3x3 Production table -->
				<tr>
					<th>생산 타입 레벨</th>
					<th>경험치 획득량</th>
					<th>생산량</th>
				</tr>
				<c:forEach items="${ProductionTypeList }" var="ob">
					<c:if test="${ob.protype eq '생산' }">
						<tr>
							<td>${ob.protlevel}</td>
							<td>${ob.getexp}</td>
							<td>${ob.prodamt}</td>
						</tr>
					</c:if>
				</c:forEach>
				<tr>
					<th>생산 성공 확률</th>
					<th>개발 필요 현금</th>
					<th>개발 필요 시간</th>
				</tr>
				<c:forEach items="${ProductionTypeList }" var="ob">
					<c:if test="${ob.protype eq '생산' }">
						<tr>
							<td>${ob.percent }</td>
							<td>${ob.reqmoney}</td>
							<td>${ob.reqtime}</td>
						</tr>
					</c:if>
				</c:forEach>
				<tr>
					<th>개발 필요 제품</th>
					<th>개발 필요 부동산</th>
					<th>개발 필요 인력</th>
				</tr>
				<c:forEach items="${ProductionTypeList }" var="ob">
					<c:if test="${ob.protype eq '생산' }">
						<tr>
							<td>${ob.reqproduce}</td>
							<td>${ob.reqrealestate}</td>
							<td>${ob.reqworker}</td>
						</tr>
					</c:if>
				</c:forEach>
			</table>
		</c:if>
		<h3>다음 레벨</h3>
		<c:if test="${!empty ProductionDevList }">
			<table class="prod_table">
				<!-- 3x3 Production table -->
				<tr>
					<th>생산 타입 레벨</th>
					<th>경험치 획득량</th>
					<th>생산량</th>
				</tr>
				<c:forEach items="${ProductionDevList }" var="ob">
					<c:if test="${ob.protype eq '생산' }">
						<tr>
							<td>${ob.protlevel}</td>
							<td>${ob.getexp}</td>
							<td>${ob.prodamt}</td>
						</tr>
					</c:if>
				</c:forEach>
				<tr>
					<th>생산 성공 확률</th>
					<th>개발 필요 현금</th>
					<th>개발 필요 시간</th>
				</tr>
				<c:forEach items="${ProductionDevList }" var="ob">
					<c:if test="${ob.protype eq '생산' }">
						<tr>
							<td>${ob.percent }</td>
							<td>${ob.reqmoney}</td>
							<td>${ob.reqtime}</td>
						</tr>
					</c:if>
				</c:forEach>
				<tr>
					<th>개발 필요 제품</th>
					<th>개발 필요 부동산</th>
					<th>개발 필요 인력</th>
				</tr>
				<c:forEach items="${ProductionDevList }" var="ob">
					<c:if test="${ob.protype eq '생산' }">
						<tr>
							<td>${ob.reqproduce}</td>
							<td>${ob.reqrealestate}</td>
							<td>${ob.reqworker}</td>

							<td>${ob.status}</td>
							<td>${ob.remainsec}</td>
						</tr>
						<c:if test="${(ob.status eq '개발가능') && (ob.remainsec==0)}">
							<td><input type="button" value="개발 가능"
								onclick="location.href='/ProjectYes/ResourceDevActivities.do?userno=1&protno=${ob.protno}'">
							</td>
						</c:if>
						<c:if test="${!(ob.status eq '개발가능') || !(ob.remainsec==0)}">
							<td><input type="button" value="개발 불가능"></td>
						</c:if>
					</c:if>
				</c:forEach>
			</table>
		</c:if>
	</div>
	<br>

	<!-- 신입사원채용 -->
	<div>
		<h1>신입사원채용</h1>
		<h3>현재 레벨</h3>
		<c:if test="${!empty ProductionTypeList }">
			<!-- 3x3 Production table -->
			<table class="prod_table">
				<tr>
					<th>생산 타입 레벨</th>
					<th>경험치 획득량</th>
					<th>생산량</th>
				</tr>
				<c:forEach items="${ProductionTypeList }" var="ob">
					<c:if test="${ob.protype eq '인력' }">
						<tr>
							<td>${ob.protlevel}</td>
							<td>${ob.getexp}</td>
							<td>${ob.prodamt}</td>
						</tr>
					</c:if>
				</c:forEach>
				<tr>
					<th>생산 성공 확률</th>
					<th>개발 필요 현금</th>
					<th>개발 필요 시간</th>
				</tr>
				<c:forEach items="${ProductionTypeList }" var="ob">
					<c:if test="${ob.protype eq '인력' }">
						<tr>
							<td>${ob.percent }</td>
							<td>${ob.reqmoney}</td>
							<td>${ob.reqtime}</td>
						</tr>
					</c:if>
				</c:forEach>
				<tr>
					<th>개발 필요 제품</th>
					<th>개발 필요 부동산</th>
					<th>개발 필요 인력</th>
				</tr>
				<c:forEach items="${ProductionTypeList }" var="ob">
					<c:if test="${ob.protype eq '인력' }">
						<tr>
							<td>${ob.reqproduce}</td>
							<td>${ob.reqrealestate}</td>
							<td>${ob.reqworker}</td>
						</tr>
					</c:if>
				</c:forEach>
			</table>
		</c:if>
		<h3>다음 레벨</h3>
		<c:if test="${!empty ProductionDevList }">
			<!-- 3x3 Production table -->
			<table class="prod_table">
				<tr>
					<th>생산 타입 레벨</th>
					<th>경험치 획득량</th>
					<th>생산량</th>
				</tr>
				<c:forEach items="${ProductionDevList }" var="ob">
					<c:if test="${ob.protype eq '인력' }">
						<tr>
							<td>${ob.protlevel}</td>
							<td>${ob.getexp}</td>
							<td>${ob.prodamt}</td>
						</tr>
					</c:if>
				</c:forEach>
				<tr>
					<th>생산 성공 확률</th>
					<th>개발 필요 현금</th>
					<th>개발 필요 시간</th>
				</tr>
				<c:forEach items="${ProductionDevList }" var="ob">
					<c:if test="${ob.protype eq '인력' }">
						<tr>
							<td>${ob.percent }</td>
							<td>${ob.reqmoney}</td>
							<td>${ob.reqtime}</td>
						</tr>
					</c:if>
				</c:forEach>
				<tr>
					<th>개발 필요 제품</th>
					<th>개발 필요 부동산</th>
					<th>개발 필요 인력</th>
				</tr>
				<c:forEach items="${ProductionDevList }" var="ob">
					<c:if test="${ob.protype eq '인력' }">
						<tr>
							<td>${ob.reqproduce}</td>
							<td>${ob.reqrealestate}</td>
							<td>${ob.reqworker}</td>
						</tr>

						<c:if test="${(ob.status eq '개발가능') && (ob.remainsec==0)}">
							<td><input type="button" value="개발 가능"
								onclick="location.href='/ProjectYes/ResourceDevActivities.do?userno=1&protno=${ob.protno}'">
							</td>
						</c:if>
						<c:if test="${!(ob.status eq '개발가능') || !(ob.remainsec==0)}">
							<td><input type="button" value="개발 불가능"></td>
						</c:if>
					</c:if>
				</c:forEach>
			</table>
		</c:if>
	</div>
	<!-- 투기 -->
	<div>
		<h1>투기</h1>
		<h3>현재 레벨</h3>
		<c:if test="${!empty ProductionTypeList }">
			<table class="prod_table">
				<!-- 3x3 Production table -->
				<tr>
					<th>생산 타입 레벨</th>
					<th>경험치 획득량</th>
					<th>생산량</th>
				</tr>
				<c:forEach items="${ProductionTypeList }" var="ob">
					<c:if test="${ob.protype eq '부동산' }">
						<tr>
							<td>${ob.protlevel}</td>
							<td>${ob.getexp}</td>
							<td>${ob.prodamt}</td>
						</tr>
					</c:if>
				</c:forEach>
				<tr>
					<th>생산 성공 확률</th>
					<th>개발 필요 현금</th>
					<th>개발 필요 시간</th>
				</tr>
				<c:forEach items="${ProductionTypeList }" var="ob">
					<c:if test="${ob.protype eq '부동산' }">
						<tr>
							<td>${ob.percent }</td>
							<td>${ob.reqmoney}</td>
							<td>${ob.reqtime}</td>
						</tr>
					</c:if>
				</c:forEach>
				<tr>
					<th>개발 필요 제품</th>
					<th>개발 필요 부동산</th>
					<th>개발 필요 인력</th>
				</tr>
				<c:forEach items="${ProductionTypeList }" var="ob">
					<c:if test="${ob.protype eq '부동산' }">
						<tr>
							<td>${ob.reqproduce}</td>
							<td>${ob.reqrealestate}</td>
							<td>${ob.reqworker}</td>
						</tr>
					</c:if>
				</c:forEach>
			</table>
		</c:if>
		<h3>다음 레벨</h3>
		<c:if test="${!empty ProductionDevList }">
			<!-- 3x3 Production table -->
			<table class="prod_table">
				<tr>
					<th>생산 타입 레벨</th>
					<th>경험치 획득량</th>
					<th>생산량</th>
				</tr>
				<c:forEach items="${ProductionDevList }" var="ob">
					<c:if test="${ob.protype eq '부동산' }">
						<tr>
							<td>${ob.protlevel}</td>
							<td>${ob.getexp}</td>
							<td>${ob.prodamt}</td>
							<td></td>
						</tr>
					</c:if>
				</c:forEach>
				<tr>
					<th>생산 성공 확률</th>
					<th>개발 필요 현금</th>
					<th>개발 필요 시간</th>
				</tr>
				<c:forEach items="${ProductionDevList }" var="ob">
					<c:if test="${ob.protype eq '부동산' }">
						<tr>
							<td>${ob.percent }</td>
							<td>${ob.reqmoney}</td>
							<td>${ob.reqtime}</td>
						</tr>
					</c:if>
				</c:forEach>
				<tr>
					<th>개발 필요 제품</th>
					<th>개발 필요 부동산</th>
					<th>개발 필요 인력</th>
				</tr>
				<c:forEach items="${ProductionDevList }" var="ob">
					<c:if test="${ob.protype eq '부동산' }">
						<tr>
							<td>${ob.reqproduce}</td>
							<td>${ob.reqrealestate}</td>
							<td>${ob.reqworker}</td>
						</tr>
						<c:if test="${(ob.status eq '개발가능') && (ob.remainsec==0)}">
							<td><input type="button" value="개발 가능"
								onclick="location.href='/ProjectYes/ResourceDevActivities.do?userno=1&protno=${ob.protno}'">
							</td>
						</c:if>
						<c:if test="${!(ob.status eq '개발가능') || !(ob.remainsec==0)}">
							<td><input type="button" value="개발 불가능"></td>
						</c:if>
					</c:if>
				</c:forEach>
			</table>
		</c:if>
	</div> --%>

</body>
</html>