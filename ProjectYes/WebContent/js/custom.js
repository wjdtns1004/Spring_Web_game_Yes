$(document).ready(function() {
	// .btnMenu 버튼 클릭시 실행 될 모션
	$(".btnMenu").on("click", function() {
		$(this).fadeOut();
		$("section").addClass("on");
		$("nav").addClass("on");
	});

	// nav 영역안의 메뉴 선택시 실행 될 모션
	$("nav li").on("click", function() {
		$(".btnMenu").fadeIn();
		$("section").removeClass("on");
		$("nav").removeClass("on");
		var i = $(this).index();
		$("section>div").removeClass("on");
		$("section>div").eq(i).addClass("on");
	});
	

	
	//상단로고_홈(MainPage)으로 감
	$("#main_Welcome").click(function() {
		$("section").empty();
		$("section").load("Pages/MainPage/MainPage.jsp");
		$(".btnMenu").fadeIn();
		$("section").removeClass("on");
		$("nav").removeClass("on");
		var i = $(this).index();
		$("section>div").removeClass("on");
		$("section>div").eq(i).addClass("on");
	});
	
	
	
	
	//상단메뉴바_커뮤니티 페이지 전환
	$("#main_About").click(function() {
	 	
		$("section").empty();
		$("section").load("Pages/MainPage/about.jsp");
	});
	
	$("#main_Ranking").click(function() {
		var w = window.innerWidth;
		$("section").empty();
		$("section").width(w);
		$("section").load("SelectProductionRank.do");
	});
	
	$("#main_Community").click(function() {
		$("section").empty();
		$("section").load("BoardListSelect.do");
	});
	
	$("#main_Help").click(function() {
		$("section").empty();
		$("section").load("Pages/MainPage/help.jsp");
	});
	
	//좌측메뉴바_게임 페이지 전환
	$("#mypage").click(function() {
		$("section").empty();
		$("section").load("SelectMyPage.do");
	});
	
	$("#production").click(function() {
		$("section").empty();
		$("section").load("SelectUserFinalstat.do");	

	});
	
	
	$("#sales").click(function() {
		$("section").empty();
		$("section").load("SelectConversionRes.do");
	});
	
	$("#invest").click(function() {
		var w = window.innerWidth;
		$("section").empty();
		$("section").width(w);
		$("section").load("SelectItemList.do");
	});
	
});

