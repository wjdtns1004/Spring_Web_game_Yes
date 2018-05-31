$(document).ready(function(){
	//-------------------------아이템 구매 버튼 클릭시 buy
	$("#buy01").click(function() {
		$.ajax({
		    url: "/ProjectYes/InsertItemByprotno.do", 
		    cache: false,
		    data:{
		    	"userno" : $('#userno01').val(),
		    	"protno" : $('#protno01').val()
		    },
		    success: function(response) {
		        var parsedResponse = $.parseHTML(response);
		        var result = $(parsedResponse).filter('h3').attr("id");
		        alert(result);
		    }
		}); 
	});
	
	$("#buy02").click(function() {
		$.ajax({
		    url: "/ProjectYes/InsertItemByprotno.do", 
		    cache: false,
		    data:{
		    	"userno" : $('#userno02').val(),
		    	"protno" : $('#protno02').val()
		    },
		    success: function(response) {
		        var parsedResponse = $.parseHTML(response);
		        var result = $(parsedResponse).filter('h3').attr("id");
		        alert(result);
		    }
		}); 
	});
	
	$("#buy03").click(function() {
		$.ajax({
		    url: "/ProjectYes/InsertItemByprotno.do", 
		    cache: false,
		    data:{
		    	"userno" : $('#userno03').val(),
		    	"protno" : $('#protno03').val()
		    },
		    success: function(response) {
		        var parsedResponse = $.parseHTML(response);
		        var result = $(parsedResponse).filter('h3').attr("id");
		        alert(result);
		    }
		}); 
	});
	
	$("#buy04").click(function() {
		$.ajax({
		    url: "/ProjectYes/InsertItemByprotno.do", 
		    cache: false,
		    data:{
		    	"userno" : $('#userno04').val(),
		    	"protno" : $('#protno04').val()
		    },
		    success: function(response) {
		        var parsedResponse = $.parseHTML(response);
		        var result = $(parsedResponse).filter('h3').attr("id");
		        alert(result);
		    }
		}); 
	});
});

