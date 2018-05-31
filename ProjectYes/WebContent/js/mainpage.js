$(document).ready(function() {
	$.getJSON("/ProjectYes/json/test.json", function(result) {
		$.each(result, function(i, field) {
			$("#main_Ranking").click(function() {
				if(i == "invest"){
				$("#main_context").empty();
				$("#main_context").load('@Url.Action("test.jsp #hoho")');
				}
			});
			
		});

	});

});
