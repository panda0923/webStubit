<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<%@ page language="java" contentType="text/html; charset=UTF-8" 	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<title>testServer</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/bitin/assets/css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="outerwrap" >
		<div id="header" >
			<div class=header-top style="height:50px; width:auto; 	 ">
				<ul style="display:inline; float:right; font-size:1.0em; margin:10px; " >
					<li style="display:inline; padding:0px 7px 0px 10px;"> 김준현님 </li>
					<li style="display:inline; border-left:1px solid black; padding:0px 7px 0px 10px;"> <a href = "">회원가입</a></li>
					<li style="display:inline; border-left:1px solid black; padding:0px 7px 0px 10px;"> <a href = "">정보수정</a></li>
					<li style="display:inline; border-left:1px solid black; padding:0px 7px 0px 10px;"> <a href = "">로그인</a></li>
					<li style="display:inline; border-left:1px solid black; padding:0px 7px 0px 10px;"> <a href = "">로그아웃</a></li>
				</ul>
			</div>
			
			<div class=header-bottom style="height:50px; width:auto; margin-left: 100px;">
				<ul style="display:inline; float:left; font-size:1.3em; margin:10px; font-weight:bold; " >
					<li style="display:inline; color:#909 "><a href = "/class/classlist">수업목록</a></li>
					<li style="display:inline; color:#909; border-left:1px solid black; padding:0px 7px 0px 10px;"> <a href = "">(1)</a></li>
					<li style="display:inline; color:#909; border-left:1px solid black; padding:0px 7px 0px 10px;"> <a href = "">User목록</a></li>
					<li style="display:inline; color:#909; border-left:1px solid black; padding:0px 7px 0px 10px;"> <a href = "">그룹목록</a></li>
					<li style="display:inline; color:#909; border-left:1px solid black; padding:0px 7px 0px 10px;"> <a href = "">그룹 가입</a></li>
				</ul>
			</div>
			
		</div>
		tteestewtwrwerwefwfew
		
		<div id="main">
			
			<div id="main-right" style="width:780px; height:870px; float:right; ">
				<div id="content">
					<ul>
						
						<li><a href = "">(3로그인)</a></li>
						<li><a href = "">(로그아웃)</a></li>
						<li><a href = "">User목록</a></li>
						<li><a href = "">그룹목록</a></li>
						<li><a href = "">그룹 가입</a></li>
					</ul>
				</div>
			</div>
			
			<div id="main-left" style="width:220px; float:left; background-color:#4169E1;'">
				<c:import url="/WEB-INF/views/include/navigation.jsp"></c:import>
			</div>
			
		</div>
			<div id="footer" style="width:auto; height:30px; background-color:#ccc;"> Footer part <br></div>
		
	</div>
</body>
</html>
