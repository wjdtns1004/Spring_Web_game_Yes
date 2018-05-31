$(document).ready(function() {
	// -------------------------랭킹 slectbox 선택 후 랭킹 조회 방법 선택
	$("#select").change(function() {
		var select1 = $('#select').val();
		$("section").empty();
		$("section").load("SelectProductionRank.do?select=" + select1);
	});

});
