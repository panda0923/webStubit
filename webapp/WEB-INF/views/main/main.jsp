<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<%@ page language="java" contentType="text/html; charset=UTF-8" 	pageEncoding="UTF-8"%>
<!doctype html>
<html>



<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1"><!--필수1/4-->
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"><!--필수2/4-->

	
	<title>testServer</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script><!--필수3/4-->
<script>


function check() { 
	if ($("input#id").val() == "") {
		alert("id를 입력해주세요");
		$("input#input-id").focus();
		event.preventDefault();
	}
	else if ($("input#password").val() == "") {
		alert("비밀번호를 입력해주세요");
		$("input#p").focus();
		event.preventDefault();
	}
}
</script>



</head>
<body>
	<div class="container">
		
		<div class = "row">
			<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
		</div>		
		<div class = "row">
			<div class="col-md-3">
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a href="#">!HOME</a></li>
					<li><a href="#">Submenu1-1</a></li>
					<li><a href="#">Submenu1-2</a></li>
					<li><a href="#">Submenu1-3</a></li>
				</ul>
			</div>
			<div class="col-md-9">
				<p>MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------MAIN내용-------</p>
				<p>수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용</p>
				<p>수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용</p>
				<p>수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용수업내용</p>
			</div>
		</div>
		
		
		<div class = "row">
			<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
		</div>
	</div>
	
	
	
	
	
	


	
	
	
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>필수3/4 -->
	<!--위에줄을 아래줄보다 먼저 써야함-->
  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script><!--필수4/4-->
</body>
</html>
