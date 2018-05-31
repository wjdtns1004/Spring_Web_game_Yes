$(document).ready(function(){

	// .btnMenu 버튼 클릭시 실행 될 모션
	$(".btnMenu").on("click",function(){
		$(this).fadeOut();
		$("section").addClass("on");
		$("nav").addClass("on");
	});

	// nav 영역안의 메뉴 선택시 실행 될 모션
	$("nav li").on("click",function(){
		$(".btnMenu").fadeIn();
		$("section").removeClass("on");
		$("nav").removeClass("on");
		var i = $(this).index();
		$("section>div").removeClass("on");
		$("section>div").eq(i).addClass("on");
	});

		var numAc = $("article").size();
		var widSec = 600*numAc;
		var widTotal = widSec+2000;	//하위메뉴 클릭했을 때 커지는 사이즈가 1000 보단 작을거니까

		$("section").width(widTotal);	//여기서 widTotal은 section의 넓이 값
		$("body").height(widSec);	//여기서 widSec은 body의 높이 값
		//$("html,body").scrollTop(widSec);
		$("html,body").animate({"scrollTop":widSec},2000);

		$(window).on("scroll",function(){
			var scroll = $(this).scrollTop();
			$("section").stop().animate({"left":-scroll},0);
		});

		$("article h2").on("click",function(e){
			e.preventDefault();
			var index = $(this).parent().index();
			var src = $(this).children("a").attr("href");
			var posAc = 600*index;
			$("article").removeClass("on");
			$(this).parent().addClass("on");
			$("article p img").attr({"src":""});
			$(this).siblings("p").children("img").attr({"src":src});
			$("html,body").scrollTop(posAc);
		});

		$("span").on("click",function(){
			$("article").removeClass("on");
		});

		$("#navi li").on("click",function(){
			var i = $(this).index();
			var posNavi = 1000*i;
			$("#navi li, article").removeClass();
			$(this).addClass("on");
			$("html,body").scrollTop(posNavi);
		});

});
