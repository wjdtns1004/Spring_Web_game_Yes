$(document).ready(function(){
	$("#board_write").click(function() {
		$("section").empty();
		$("section").load("boardView/boardWrite.jsp");	
	});
	
	$("#back").click(function() {/*목록 클릭시 */
		$("section").empty();
		$("section").load("BoardListSelect.do");
	});
	
	/*여기 수정*/
	$("#reply_submit").click(function() {
		
		$.ajax({
		    url: "/ProjectYes/InsertBoardReply.do",
		    data:{
		    	"brdno" : $('#brdno').val(),
		    	"bgno" : $('#bgno').val(),
		    	"userno" : $('#userno').val(),
		    	"rememo" : $(".Content").val()
		    },
		    success: function(response) {
		    	$("section").empty();
		    	 $("section").html(response);
		    }
		}); 
	});
	$("#board_list_submit").click(function() {
		 for (instance in CKEDITOR.instances)
					CKEDITOR.instances[instance].updateElement();
		var queryString = $("form[name=form1]").serialize() ;
		$("section").empty();
		$.ajax({
		    'url': '/ProjectYes/InsertBoard.do',
		    'type': 'POST',
		    'data': queryString,
		    'success': function(result){
		         $("section").html(result);
		    }
		});
	});
});
function test(brdno,bgno,userno) {
	var url = "SelectTextBoardOne.do?brdno="+brdno+"&bgno="+bgno+"&userno="+userno;
	$("section").empty();
	$("section").load(url);
}

