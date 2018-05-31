<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>랭킹</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/ranking_common.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/ranking.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/rank.js"></script>
</head>
<body>
<c:if test="${!empty list }">
	<div class="LadderRankingLayoutWrap">
		<div class="LadderRankingLayout">
			<div class="ContentWrap">
				<div class="Content">
					<div class="ranking-highest">
						
							<select id="select" style="float: right;">
								<option value="money">선택</option>
								<option value="money">돈</option>
								<option value="produce">제품</option>
								<option value="realestate">부동산</option>
								<option value="worker">인력</option>
							</select>

							<ul class="ranking-highest__list">
						<!-- 1위 -->
								<c:forEach items="${list }" var="ob" varStatus="status">
									<c:if test="${status.count==1}">
										<li class="ranking-highest__item ranking-highest__item--big"
											id="summoner-26022557"><div
												class="ranking-highest__rank">1</div>
											<div class="ranking-highest__icon">
												<div class="ranking-highest__border"
													style="background-image: url(원래는 사진테두리 액자가있던 자리지만..);"></div>
												<img
													src="${pageContext.request.contextPath}/img/charac1_semi.png" alt="무슨이미지를 넣을까"
													class="ranking-highest__image">
<%--  												<div class="ranking-highest__level">${ob.level} LV</div> --%>
											</div>

											<div class="ranking-highest-champions">
												<!-- 돈  -->
												<div class="ranking-highest-champion">
													<img
														src="${pageContext.request.contextPath}/img/coin-money1.png"
														class="ranking-highest-champion__image"> <span
														class="ranking-highest-champion__wonlose">돈 </span> <span
														class="ranking-highest-champion__kda ranking-highest-champion__kda--green">
														<span>${ob.money}</span> 원
													</span>
												</div>

												<!-- 제품  -->
												<div class="ranking-highest-champion">
													<img
														src="${pageContext.request.contextPath}/img/product.png"
														class="ranking-highest-champion__image"> <span
														class="ranking-highest-champion__wonlose">제품 </span> <span
														class="ranking-highest-champion__kda ranking-highest-champion__kda--blue">
														<span>${ob.produce}</span> 개
													</span>
												</div>

												<!-- 부동산  -->
												<div class="ranking-highest-champion">
													<img
														src="${pageContext.request.contextPath}/img/house.png"
														class="ranking-highest-champion__image"> <span
														class="ranking-highest-champion__wonlose">부동산 </span> <span
														class="ranking-highest-champion__kda ranking-highest-champion__kda--green">
														<span>${ob.realestate}</span> 개
													</span>
												</div>

												<!-- 인력  -->
												<div class="ranking-highest-champion">
													<img
														src="${pageContext.request.contextPath}/img/workers.png"
														class="ranking-highest-champion__image"> <span
														class="ranking-highest-champion__wonlose">인력 </span> <span
														class="ranking-highest-champion__kda ranking-highest-champion__kda--blue">
														<span>${ob.worker}</span> 명
													</span>
												</div>
											</div> <a class="ranking-highest__name">${ob.nickname}</a>
											<div class="ranking-highest__tierrank">
												<img
													src="//opgg-static.akamaized.net/images/medals/challenger_1.png">
												<b> ${ob.level}LV</b>
											</div></li>
									</c:if>
								</c:forEach>


								<!-- 2위~5위 -->
								<c:forEach items="${list }" var="ob" varStatus="status">
									<c:if test="${status.count>1 && status.count<6}">
										<li class="ranking-highest__item ">
											<div class="ranking-highest__rank">${status.count}</div>
											<div class="ranking-highest__icon">
												<img
													src="${pageContext.request.contextPath}/img/charac1_semi.png"
													class="ranking-highest__image">
											</div> <a class="ranking-highest__name">${ob.nickname}</a>
											<div class="ranking-highest__tierrank">
												<img
													src="${pageContext.request.contextPath}/img/coin-money1.png">
												<span>돈</span> <b>${ob.money} 원 </b>
												<div class="ranking-highest__level">Lv.${ob.level}</div>
											</div>
										</li>
									</c:if>
								</c:forEach>
							</ul>
					</div>


					<!-- table -->
					<table class="ranking-table">
						<colgroup>
							<col width="100">
							<col width="230">
							<col width="90">
							<col width="90">
							<col width="90">
							<col width="170">
							<col width="198">
						</colgroup>
						<thead>
							<tr>
								<th class="ranking-table__header"></th>
								<th class="ranking-table__header">닉네임</th>
								<th class="ranking-table__header">돈</th>
								<th class="ranking-table__header">자원</th>
								<th class="ranking-table__header">부동산</th>
								<th class="ranking-table__header">인력</th>
								<th class="ranking-table__header">레벨</th>
							</tr>
						</thead>
						<tbody>
						
						<c:forEach items="${list }" var="ob" varStatus="status" >
						<c:if test="${status.count>5}">
							<tr class="ranking-table__row " id="summoner-13641185">
								<td class="ranking-table__cell ranking-table__cell--rank">${status.count}</td>
								<td class="ranking-table__cell ranking-table__cell--summoner">
								<img src="${pageContext.request.contextPath}/img/charac1_semi.png"><span>${ob.nickname}</span></td>
								<td class="ranking-table__cell ranking-table__cell">
									${ob.money}</td>
								<td class="ranking-table__cell ranking-table__cell">
									${ob.produce}</td>
								<td class="ranking-table__cell ranking-table__cell">
									${ob.realestate}</td>
								<td class="ranking-table__cell ranking-table__cell">${ob.worker}</td>
								<td class="ranking-table__cell ranking-table__cell">${ob.level} LV</td>
							</tr>
							</c:if>
							</c:forEach>
						</tbody>
					</table>
						
				</div>
			</div>
		</div>
	</div>
	</c:if>
</body>
</html>