<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/board_list_common.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/css/board_list.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom_Community_back.js"></script>
	
	
</head>
<body>
<div class="ForumLayout">
		<div class="ForumLayoutHeader">
			<div class="ForumHeaderAction">
				<div class="ForumHeaderWrite">
					<a id="board_write" class="Button SemiRound Green WriteButton">글쓰기</a>
				</div>
			</div>
		</div>
		<div class="ForumLayoutContent">
		<c:if test="${!empty context }">
			<div class="ForumArticle">
				<div class="ForumArticleHeader">
					<ul class="Publish">
						<li><i class="__spSite __spSite-120 tip" title="골드 (6908P)"
							style="margin-top: -2px; margin-right: 0px;"></i> 
							<a>${context.nickname}</a></li>
					</ul>


					<h2 class="Title">${context.brdtitle}</h2>
					<ul class="Info">
						<li><span>조회 ${context.brdhit}</span></li>
						<li><a href="#Comment">댓글 7</a></li>
					</ul>
					<ul class="Buttons">
						<li><a>신고</a></li>
					</ul>
				</div>
				<div class="ForumArticleContent">
					<div class="ArticleContentParagraph">${context.brdmemo}</div>
				</div>

			</div>
			
			
			
			
			<div class="ForumArticleComment" id="Comment">
				<div class="ForumArticleCommentHeader">
					<div class="Title">
						<b>7</b> 개의 댓글
					</div>
				</div>
				
				
				
				<div class="ForumCommentWrite">
						<div class="ForumCommentWriteContent">
							<div class="Name"><%=session.getAttribute("nickname") %></div>
							<textarea name="rememo" class="Content"
								onfocus="autosize($(this));"
								placeholder="주제와 무관한 댓글, 타인의 권리를 침해하거나 명예를 훼손하는 게시물은 제재를 받을 수 있습니다."
								style="overflow: hidden; word-wrap: break-word; height: 50px;"></textarea>
								<input type="hidden" id="brdno" value="${context.brdno}">
								<input type="hidden" id="bgno" value="${context.bgno}">
								<input type="hidden" id="userno" value="${context.userno}">
						</div>
						<button class="Button" id="reply_submit">등록</button>

				</div>
				
				
				

				<c:if test="${!empty replist}">
					<div class="ForumCommentTab">
						<dl class="OrderType">
							<dd class="Active">최신순</dd>
						</dl>

						<ul class="ForumCommentList">
							<c:forEach items="${replist}" var="replist">
								<li>
									<div class="Content">
										<i class="__spSite __spSite-120 tip" title="골드 (6908P)"
											style="margin-top: -2px; margin-right: 4px;"></i> 
											<a href="#" class="Name Author ">${replist.nickname}</a> 
											<span class="Date">
											<span class="_timeago _timeCountAssigned tip">${replist.lastdate }</span></span>
										<p class="">${replist.rememo}</p>
										<ul class="Edit">
											<li><a href="#">신고</a></li>
										</ul>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</c:if>
			</div>
			
			
			
			
			
		</c:if>





			

			<div id="ArticleListButton" style="margin-top: 20px; text-align: right;">
					<a id="back" class="Button SemiRound White">목록</a>
			</div>

	</div>
</div>
</body>
</html>