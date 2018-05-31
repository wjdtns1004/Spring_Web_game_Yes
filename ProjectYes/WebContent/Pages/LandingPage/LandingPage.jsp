<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/thanksto.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Landing.css" />
	
	<%-- ${pageContext.request.contextPath}/ --%>

	<title> LandingPage </title>
	
</head>
<body>
	<!-- 배경이미지 -->
	<div class="back"></div>

	<!-- 로고 -->
	<h1><img src="${pageContext.request.contextPath}/img/gamelogo.png" /></h1>

<header>

	<nav>
		<ul>
			<li><a href="">Login</a></li>
			<li><a href="">Signup</a></li>
		</ul>
	</nav>
	
	
	<!-- Login & Signup Menu -->
	<ul id="gnb">
		<!-- login -->
		<li><a class="login" href="#"><em>Log In</em></a>
			<form action="/ProjectYes/UserInfoSelect.do" method="post">
				<ul class="gnb_sub_login">
					<div class="gnb_sub">
						<li><label for="login_id" class="gnb_sub_label"><em><b>ID</b></em></label></li>
						<input type="text" id="login_id" name="id">
						<li><label for="login_pw" class="gnb_sub_label"><em><b>Password</b></em></label></li>
						<input type="password" id="login_pw" name="password">
						<button type="submit" class="gnb_sub_btn_login"><em><b>로그인</b></em></button>
						<button type="reset" class="gnb_sub_btn_login"><em><b>취  소</b></em></button>
					</div>
				</ul>
			</form>
		</li>
		<!-- SignUp -->  		  <!-- "/ProjectYes/IndustryInfoSelect.do"-->
		<li><a class="signup" href="#"><em>Sign up</em></a>
			<form action="/ProjectYes/UserInfoInsert.do" method="post"> <!-- yes.controller.user 패키지의 UserInsert.java로 이동 -->
				<ul class="gnb_sub_signup">
					<div class="gnb_sub">
						<li><!-- Insert Username -->
							<label for="signup_username" class="gnb_sub_label"><em><b>Username 입력</b></em>
						</li>
						<input type="text" id="signup_username" name="username">
						
						<li><!-- Insert ID --><!-- https://www.w3schools.com/css/css_form.asp -->
							<label for="signup_id" class="gnb_sub_label"><em><b>ID 입력</b></em></label>
						</li>
						<input type="text" id="signup_id" name ="id">
						<!-- ID 중복 확인 -->
							 <input type="button" class="gnb_sub_btn_signup" value="중복체크" id="idCheck" >
											
						<li><!-- Insert PassWord -->
							<label for="signup_pw" class="gnb_sub_label"><em><b>Password 입력</b></em></label>
						</li>
						<input type="password" id="signup_pw" name="password"> 
						
						<li><!-- Insert Nickname -->
							<label for="signup_nick" class="gnb_sub_label"><em><b>닉네임 입력</b></em></label>
						</li>
						<input type="text" id="signup_nick" name="nickname">
							<!-- <button class="gnb_sub_btn_signup" id="nicnameCheck">닉네임 <br>중복 확인</button> --> <!-- 닉네임 중복 확인 -->
							<input type="button" class="gnb_sub_btn_signup" value="중복체크" id="nicnameCheck" >
										    
					    <li><!-- Choose Job -->
					    	<label for="signup_job" class="gnb_sub_label"><em><b>직업 선택</b></em></label>
					    </li>
					    <select id="signup_sub_job" name="indino">
					    	<option value="101">신입사원</option>
					    	<option value="201">여관주인</option>
					    	<option value="301">의류도매상</option>
					    	<option value="401">주방보조</option>
					    </select>						
					    <input type="submit" class="gnb_sub_btn_signup" value="등  록">
					    <input type="reset" class="gnb_sub_btn_signup" value="취  소">
					</div>
				</ul>
			</form>	
		</li>
	</ul>
</header>

	<!-- 스크롤 네비게이션 -->
	<ul class="scrollnav">
		<li class="on"><span></span><em>신입사원</em></li>
		<li><span></span><em>부장</em></li>
		<li><span></span><em>낙하산</em></li>
		<li><span></span><em>사장 아들</em></li>
<!-- 		<li><span></span><em>FINANCE(NPC)</em></li> -->
	</ul>

	<!-- 게임 튜토리얼 설명 -->
	<section>

<!-- 첫 번째 박스 -->
<article class="on">
  <img class="obj13" src="../../img/Charact1.png" />
  <p class="on">
    <span>신입사원</span><br />
    <em>백수 생활을 청산하고 얼마전에 신입으로 입사한 사원</em>
  </p>
</article>

<!-- 두 번째 박스 -->
<article>
<!-- 			<img class="obj21" src="../../img/pic21.png" /> -->
  <img class="obj22" src="../../img/Charact2.png" />
  <p>
    <span>부장</span><br />
    <em>다크서클이 내려올 정도로 열심히 돈을 벌지만 아직까지 level 2</em>
  </p>
</article>

<!-- 세 번째 박스 -->
<article>
<!-- 			<img class="obj31" src="../../img/pic31.png" /> -->
  <img class="obj32" src="../../img/Charact3.png" />
  <p>
    <span>낙하산</span><br />
    <em>인맥 학연 지연 혈연을 이용해 편하게 회사에 입사. 구인구직 기간이 있었기 떄문에 마냥 젊지만은 않다 </em>
  </p>
</article>

<!-- 네 번째 박스 -->
<article>
  <img class="obj43" src="../../img/Charact4.png" />
  <p class="on">
    <span>사장 아들</span><br />
    <em>제일 젊고 가장 편하게 돈을 벌 수 있음. 돈이 돈을 버는 자본주의의 최고 수혜자</em>
  </p>
</article>
	</section>
</body>
</html>