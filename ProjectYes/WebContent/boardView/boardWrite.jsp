<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/forum.css" rel="stylesheet" type="text/css">

<script src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
<script src="${pageContext.request.contextPath}/js/custom_Community_back.js"></script>
</head>
<body>
	<div class="l-container">
		<form id="form1" name="form1" method="post">
			<input type="hidden" name="articleSaveIdx" value="">
			<div class="ForumWriteLayout">
				<div class="ForumWriteLayoutHeader">
					<h2>글쓰기</h2>
				</div>
				<div class="ForumWriteLayoutContent">
					<div class="ForumWriteWrap">
						<div class="ForumWriteTitle">
							<input type="text" name="brdtitle" data-placeholder="제목을 입력하세요."
								maxlength="50" placeholder="제목을 입력하세요.">
							<div class="ForumWriteAutoSave">
								<div class="SaveButtonWrap">
									<a href="#" onclick="#" class="Save">임시저장</a> 
									<a href="#" onclick="#" class="State">(0)</a>
								</div>
							</div>
						</div>

						<div class="ForumWriteEditor" style="display: block;">
							<div class="Editor">
								<div id="ckeditor" style="display: block;">
									<textarea name="brdmemo" style="display: none; visibility: hidden;"></textarea>
								<script>
									CKEDITOR.replace( 'brdmemo' );
								</script>
								</div>
							</div>

							<div class="ForumWriteSubmit">
								<a id="board_list_submit" class="Button SemiRound">작성완료</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>