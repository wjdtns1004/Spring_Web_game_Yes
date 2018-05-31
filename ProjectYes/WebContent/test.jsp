<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>


    <script src="${pageContext.request.contextPath}/dist/sweetalert.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/sweetalert.css">
  
</head>
<body>
	 <button class="btn btn-lg btn-danger sweet-14" onclick="_gaq.push(['_trackEvent', 'example, 'try', 'Danger']);">Danger</button>
     <button class="btn btn-lg btn-success sweet-12" onclick="_gaq.push(['_trackEvent', 'example, 'try', 'Success']);">Success</button>
     <button class="btn btn-primary sweet-3"  onclick="_gaq.push(['_trackEvent', 'example', 'try', 'sweet-3']);">Try It</button>
  
  
  <script>
     document.querySelector('.sweet-3').onclick = function(){
        swal("Good job!", "You clicked the button!", "success");
      };
      document.querySelector('.sweet-12').onclick = function(){
          swal({
            title: "Are you sure?",
            text: "You will not be able to recover this imaginary file!",
            type: "success",
            showCancelButton: true,
            confirmButtonClass: 'btn-success',
            confirmButtonText: 'Success!'
          });
        };
         document.querySelector('.sweet-14').onclick = function(){
            swal({
              title: "Are you sure?",
              text: "You will not be able to recover this imaginary file!",
              type: "error",
              showCancelButton: true,
              confirmButtonClass: 'btn-danger',
              confirmButtonText: 'Danger!'
            });
          };
    </script>
</body>
</html>