
$(document).ready(function() {	
	$("#idCheck").click(function() {
		$.ajax({
		    url: "/ProjectYes/CheckUserOverlap_byID.do", 
		    cache: false,
		    data:{
		    	"id" : $('#signup_id').val()
		    },
		    success: function(response) {
		        var parsedResponse = $.parseHTML(response);
		        var result = $(parsedResponse).filter('.check').attr("id");
		        alert(result);
		    }
		}); 
	});
	
	$("#nicnameCheck").click(function() {
		$.ajax({
		    url: "/ProjectYes/CheckUserOverlap_byNICKNAME.do", 
		    cache: false,
		    data:{
		    	"nickname" : $('#signup_nick').val()
		    },
		    success: function(response) {
		        var parsedResponse = $.parseHTML(response);
		        var result = $(parsedResponse).filter('.check').attr("id");
		        alert(result);
		    }
		}); 
	});
});
