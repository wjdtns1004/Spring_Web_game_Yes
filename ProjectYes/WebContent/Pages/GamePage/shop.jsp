<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom_Shop.js"></script>
	<link href="${pageContext.request.contextPath}/css/ingame.css" rel="stylesheet" type="text/css">
</head>

<body>
	<div class="SpectateLayoutWrap">
		<div class="SpectateLayout">
			<div class="ContentWrap">
				<div class="Content">
					<div class="SpectateSummonerList">

					<c:if test="${!empty list }">
					<c:forEach items="${list }" var="ob" varStatus="status">
						<div class="Item">
							<div class="Content">
								<div class="ChampionImage">
									<img src="${pageContext.request.contextPath}/img/coin-money1.png" class="Image">
								</div>					
								<span class="SummonerName">${ob.protname}</span> 
								<span class="ChampionName">${ob.remark}</span>

								<div class="Actions">
									<a href="#" class="Action"> 
									<span class="Name">사용될 돈 : ${ob.reqmoney}</span>
									<span class="Name">사용될 자원 :${ob.reqproduce} </span>
									<span class="Name">얻게될 경험치 : ${ob.getexp }xp</span>
									<span class="Name">얻게될 제품 : ${ob.prodamt }</span>
									<span class="Name">성공 확률 : ${ob.percent }%</span>
									</a> 
								</div>
							</div>
						
							<div class="Footer">
								<a target="_blank">
								     
										<input id="buy0${status.count }"  type="button" value="구매" style="float: right;">
										<input type="hidden" id="userno0${status.count }" value="1">
										<input type="hidden" id="protno0${status.count }" value="${ob.protno}">
									<!-- </div> -->
									<div class="TeamName">${ob.protype }</div>
									<div class="Extra">YES</div>
								</a>
							</div>
						</div>
					</c:forEach>
					</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>