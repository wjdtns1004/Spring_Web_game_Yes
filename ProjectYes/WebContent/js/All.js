$(document).ready(function() {
	// -------------------판넬들 사이즈 조정, 첫 화면에서 판낼 위치 조정, 스크롤 관련
	// 코드-----------------------------------------------------------

	var numAc = $("article").size();
	var widSec = 600 * numAc;
	var widTotal = widSec + 2000; // 하위메뉴 클릭했을 때 커지는 사이즈가 1000 보단 작을거니까

	$("section").width(widTotal); // 여기서 widTotal은 section의 넓이 값
	$("body").height(widSec); // 여기서 widSec은 body의 높이 값
	// $("html,body").scrollTop(widSec);
	$("html,body").animate({
		"scrollTop" : widSec
	}, 2000);

	$(window).on("scroll", function() {
		var scroll = $(this).scrollTop();
		$("section").stop().animate({
			"left" : -scroll
		}, 0);
	});

	$("article h2").on("click", function(e) {
		e.preventDefault();
		var index = $(this).parent().index();
		var src = $(this).children("a").attr("href");
		var posAc = 550 * index;
		$("article").removeClass("on");
		$(this).parent().addClass("on");
		$("article p img").attr({
			"src" : ""
		});
		$(this).siblings("p").children("img").attr({
			"src" : src
		});
		$("html,body").scrollTop(posAc);
	});

	$("span").on("click", function() {
		$("article").removeClass("on");
	});

	$("#navi li").on("click", function() {
		var i = $(this).index();
		var posNavi = 1000 * i;
		$("#navi li, article").removeClass();
		$(this).addClass("on");
		$("html,body").scrollTop(posNavi);
	});

	// -------------------------랭킹 slectbox 선택 후 랭킹 조회 방법 선택
	$("#select").change(function() {
		var select1 = $('#select').val();
		$("section").empty();
		$("section").load("SelectProductionRank.do?select=" + select1);
	});

});
