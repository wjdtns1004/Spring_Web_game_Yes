<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom_Community.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom_Community_back.js"></script>
	<link href="${pageContext.request.contextPath}/css/board_list_common.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/css/board_list.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="ForumLayout">
		<div class="ForumLayoutHeader">
			<div class="ForumHeaderMenu">
				<ul>
					<li class="category-popular ">
					<a href="#"> 인기 <!-- 인기순으로 소팅  -->
					<i class="off __spSite __spSite-96"></i> 
					<i class="on __spSite __spSite-97"></i>
					</a></li>
					<li class="category-free ">
					<a href="#">자유  <!-- 시간순 소팅  --></a></li>
				</ul>
			</div>
			
			
			<div class="ForumHeaderAction">
				<form action="#" class="ForumHeaderForm">
					<span class="jcf-select jcf-unselectable">
					<select name="type" id="" class="jcf-reset-appearance"
						style="position: absolute; height: 100%; width: 100%;">
							<option value="title">제목</option>
							<option value="titleContent">제목+내용</option>
							<option value="author">작성자</option>
					</select>
					<span class="jcf-select-text">
					<span class="">제목+내용</span></span>
					<span class="jcf-select-opener"></span></span>
					
					<input type="text" class="SearchInput" name="keyword" placeholder="검색어" value="">
					<button class="Button" type="submit">
						<i class="__spSite __spSite-42"></i>
					</button>
				</form>
				<div class="ForumHeaderWrite">
					<a id="board_write" class="Button SemiRound Green WriteButton">글쓰기</a>
				</div>
			</div>
		</div>
		
		
		<div class="ForumLayoutContent">
			<div class="ForumNoticeArticleList">
				<div class="ArticleListItem">
					<div class="Mark">
						<i class="__spSite __spSite-357"></i>
					</div>
					<div class="ArticleEntry">
						<a href="#" class="Title">커뮤니티 이용 안내 <span class="Comment">[41]</span></a>
						<ul>
							<li><span class="_timeago _timeCountAssigned tip">7일 전</span></li>
							<li><span>Kein</span></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="ForumArticleList">
				<c:if test="${!empty list}">
					<c:forEach items="${list}" var="ob" varStatus="status">
						<div class="ArticleListItem ">
							<div class="Vote">
								<div class="Score tip">${ob.brdno }</div>
							</div>
							<div class="ArticleEntry">
								<div class="Title">
									<a class="select_content" onclick="test(${ob.brdno },${ob.bgno },${ob.userno })">${ob.brdtitle }</a>
									 <a class="Comment">[${ob.brdhit }]</a>
								</div>
								<ul>
									<li><span>정보</span></li>
									<li><span class="_timeago _timeCountAssigned tip">${ob.brddate }</span></li>
									<li><a href="#">${ob.nickname }</a></li>
								</ul>
							</div>
						</div>
					</c:forEach>
				</c:if>
			</div>
			
			<div class="ForumArticlePaging scroll-to-fixed-fixed"
				style="z-index: 1000; position: fixed; bottom: 0px; margin-left: 0px; width: 948px; left: 465.5px;">
				<%
					int pageNum = (int) request.getAttribute("rownum");
					for (int i=1; i <= pageNum; i++) {
				%>
				<a class="index0<%=i%>"><%=i%></a> 
				<input class="page0<%=i%>" type="hidden" value="<%=i%>">

				<%
					}
				%>

			</div>

			<c:if test="${!empty rownum}">
				<input class="rownum" type="hidden" value="${rownum}">
			</c:if>

		</div>
	</div>
</body>

</html>