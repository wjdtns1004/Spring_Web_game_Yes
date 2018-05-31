<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Sales.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script>
	<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/All.js"></script>
	 --%>
	<title> WelcomePage </title>	
</head>
<body>

	<div class="wrap">
		<header>
		<!--로고 Logo-->
			<h1 style="background-color:#1ea1f7;"><a id="main_Welcome" href="#"><img src="${pageContext.request.contextPath}/img/gamelogo.png" alt="logo"></a></h1>

			<!--Community-->
			<ul id = "Comm">
<!-- 				<li><a href="#" id="test"></a></li> -->
				<li><a id="main_About" href="#">About</a></li>
				<li><a id="main_Ranking" href="#">Ranking</a></li>
				<li><a id="main_Community" href="#">Community</a></li>
				<li><a id="main_Help" href="#">Help</a></li>
			</ul>

			<!--user정보-->
			<c:if test="${!empty list}">
				<ul id = "GameMenu">
				<!-- 사용자 직업(job) -->
					<li><a> Job : ${list.job}</a></li>
				<!-- 사용자 level -->
					<li><a> Lv : ${list.level}</a></li>
				<!-- 사용자 nickname -->
					<li><a><i class="fa fa-universal-access"><%=session.getAttribute("nickname") %></i></a></li>
				<!-- 보유 현금 -->
					<li><a><i class="fa fa-krw">${list.inmoney-list.outmoney}</i></a></li>
				<!-- 보유 인력수 -->
					<li><a><i class="fa fa-user">${list.inworker-list.outworker}</i></a></li> 
				<!-- 보유 제품수 -->
					<li><a><i class="fa fa-industry">${list.outproduce }/${list.inproduce }</i></a></li>
				<!-- 보유 부동산 수 --> 
					<li><a><i class="fa fa-building">${list.outrealestate }/${list.inrealestate }</i></a></li> 
				</ul>
			</c:if>
		
		</header>

		<!-- 게임메뉴 호출버튼(nav관련)  -->
		<a class="btnMenu" href="#"><i class="fa fa-navicon"></i> </a>

		<!-- 게임 메뉴 -->
		<nav>
			<img src="${pageContext.request.contextPath}/img/gamelogo.png" alt="메뉴 상단에 게임로고 yes이미지 넣기" style="padding-left:5px; margin-top:10px; width:140px;" />
			<ul id="gnb">
				<li><a href="#" id="mypage"> MyPage </a></li>
				<li><a href="#" id="production">생산활동</a></li>
				<li><a href="#" id="sales">영업활동</a></li>
				<li><a href="#" id="invest">인생은한방</a></li>
				<li><a href="/ProjectYes/Logout.do">LogOut</a></li>
			</ul>
		</nav>
	
	<!-- 섹션안에 동영상 하나 집어넣기. 그냥 게임 관련된걸로? 그게 웰컴페이지인걸로 -->
	<section style="overflow: scroll; background-color:#e0e0e0; ">
<!-- background-size에는 contain, cover, auto가 있는데 이미지 구해서 넣은다음에 사이즈 정해주기 -->
		<article>
			<h2><a href="img/"> 홈입니다 </a></h2>
			<strong><img src="img/" alt="이거 없앨수없는시작메인페이지" /></strong>
			<p><img src="img/" /></p>
			<em> . <br /> .</em>
			<span>X</span>
		</article>
	</section>
</div>
	

</body>
</html>