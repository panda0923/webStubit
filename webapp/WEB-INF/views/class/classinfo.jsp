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
	if ($("input#input-id").val() == "") {
		alert("id를 입력해주세요");
		$("input#input-id").focus();
		event.preventDefault();
	}
	else if ($("input#input-pwd").val() == "") {
		alert("비밀번호를 입력해주세요");
		$("input#input-pwd").focus();
		event.preventDefault();
	}
	else{
		event.preventDefault();
		$.ajax({
			async:false,			// 이거 안하면  event.preventDefault() 가 안먹힘. thread따로 돌리면서 else바깥 부분이 오히려 먼저 시작되어버림
			url:"/bitin/api/user/test",
			type: "get",
			dataType: "json",
			data: "userId="+$("input#input-id").val()+"&userPassword="+$("input#input-pwd").val(),
			contentType: "application/json",
			success: function(response){		//보통 data보다는 response라고 쓰는게 맞음
				console.log( response );	
				if(response.result == "fail"){	//로그인 실패
					alert(response.message);
					event.preventDefault();
				}
				else{	//로그인 성공 
				}
			},
			error: function( jqXHR, status, e ){	//통신오류
				event.preventDefault();
				alert( "ajax error[ status : "+status + " // error : " + e +"]");
			}
		})
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
					<li class="active"><a href="#">수업목록</a></li>
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
