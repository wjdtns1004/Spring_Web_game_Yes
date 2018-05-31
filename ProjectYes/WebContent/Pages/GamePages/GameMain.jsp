<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<title> GameMain </title>
	<c:url value="/resources/css/main.css" />
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="<c:url value="/css/GameMain.css"/>"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="<c:url value="/js/jquery-2.1.1.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/custom.js"/>"></script>
</head>
<body>

<!-- 전체 프레임 -->
<!--  <div id="wrap">-->

<!--배경-->
	<div class="back"></div>

	<!-- 로고는 css에서 배경넣으면서 같이 넣을 것 -->
<!--	<h1></h1>-->

	<header id = "topmenu">
		<!-- 위 쪽 메뉴 -->

	  	<ul>
				<li class="topmenuli">
					<a class="menulink" href="#">About</a>
						<ul class="submenu">
							<li><a class="submenulink" href="#"><em><b>About Game</b></em></a></li>
							<li><a class="submenulink" href="#"><em><b>About Team</b></em></a></li>
						</ul>
				</li>
				<li class="topmenuli">
					<a class="menulink" href="#">Ranking</a>
						<ul class="submenu">
							<li><a class="submenulink" href="#"><em><b>Solo Rank</b></em></a></li>
							<li><a class="submenulink" href="#"><em><b>Group Rank</b></em></a></li>
						</ul>
				</li>
				<li class="topmenuli">
					<a class="menulink" href="#">Community</a>
						<ul class="submenu">
							<li><a class="submenulink" href="#"><em><b>Popular Comment</b></em></a></li>
							<li><a class="submenulink" href="#"><em><b>Bulletin Board</b></em></a></li>
							<li><a class="submenulink" href="#"><em><b>Image</b></em></a></li>
						</ul>
				</li>
				<li class="topmenuli">
					<a class="menulink" href="#">Help</a>
						<ul class="submenu">
							<li><a class="submenulink" href="#"><em><b>Notice</b></em></a></li>
							<li><a class="submenulink" href="#"><em><b>Q & A</b></em></a></li>
							<li><a class="submenulink" href="#"><em><b>F & Q</b></em></a></li>
						</ul>
				</li>
				<li class="topmenuli">
					<a class="menulink" href="#">Contact</a>
						<ul class="submenu">
						</ul>
				</li>
			</ul>

			<!-- sns 버튼 -->
			<ul id="sns">
				<li><a href="http://facebook.com"><i class="fa fa-facebook"></i></a></li>
				<li><a href="https://www.youtube.com"><i class="fa fa-youtube"></i></a></li>
				<li><a href="http://op.gg"><i class="fa fa-twitter"></i></a></li><!--나중에 아이콘모양 바꾸기-->
				<li><a href="mailto:email@email.com"><i class="fa fa-envelope"></i></a></li>
			</ul>
  </header>


<!--유저 게임 정보-->
<c:if test="${!empty list }">
	<nav>

		<span>직업 : 미완</span>
		<span>레벨 : 미완</span>
		<span>닉네임 : 미완</span>
		<span>현금 : ${list.inmoney-list.outmoney}</span>
		<span>부동산 : ${list.inrealestate }/${list.outrealestate }</span>
		<span>제품 : ${list.inproduce }/${list.outproduce }</span>
		<span>인력 : ${list.inworker-list.outworker}</span>
	</nav>
</c:if>

<!-- 옆쪽 주 메뉴 -->
	<aside id="l_menu">
		<li class="on"><a href="#"  id="summary">SUMMARY</a></li>
		<li><a href="#" id="production" onclick="location='/ProjectYes/SelectUserFinalstat.do'">생산활동</a></li>
		<li><a href="#" id="sales" onclick="location='/ProjectYes/SelectConversionRes.do?userno=1'">영업활동</a></li>
		<li><a href="#" id="invest">투자활동</a></li>
		<li><a href="#" id="store" onclick="location='/ProjectYes/SelectItemList.do'">상점</a></li>
	</aside>
	<section>
			<!--머리글씨 play game-->
		<article>
			<p><strong>Play</strong> Game</p>
			<em>..</em>
		</article>

		<!--목업-->
		<article id="main_context">
			
		</article>
  </section>

	<!--</div>-->
	</body>
</html>
