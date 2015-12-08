<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<div id="header" class="row">
	<div class="jumbotron text-right">
		<c:choose>
			<c:when test='${empty authUser }'>
				<a href="#" class="btn btn-default btn-xs" >
					가입하기 <span class="glyphicon glyphicon-user"></span></a>
				 <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#login-form">로그인!!</button>
			</c:when>
			
			<c:otherwise>
				<a href="#" class="btn btn-link btn-sm">
					 정보수정 <span class="glyphicon glyphicon-edit"></span></a>
				<a href="/bitin/logout" class="btn btn-success btn-sm">
					로그아웃 <span class="glyphicon glyphicon-log-out"></span></a>
			</c:otherwise>
		</c:choose>
		<a href="#" class="btn btn-info btn-md">Test</a>
		<h1>StudyIn</h1>
		
		<ul class="nav nav-pills">
			<li class="dropdown active">
				<a class="droptown-toggle" data-toggle="dropdown" href="#">HOME<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li class="active"><a href="#">HOME</a></li>
					<li><a href="#">Submenu1-1</a></li>
					<li><a href="#">Submenu1-2</a></li>
					<li><a href="#">Submenu1-3</a></li>
				</ul></li>
			<li class="dropdown">
				<a class="droptown-toggle" data-toggle="dropdown" href="#">수업목록<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<c:forEach items='${classInfoList }' var='classVo'>
						<li><a href="/bitin/classinfo?classNo=${classVo.CLASSNO }">${classVo.CLASSNAME}</a></li>
					</c:forEach>
				</ul></li>
			<li class="dropdown">
				<a class="droptown-toggle" data-toggle="dropdown" href="#">Submenu<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">Submenu 2-1</a></li>
					<li><a href="#">Submenu 2-2</a></li>
					<li><a href="#">Submenu 2-3</a></li>
					<li><a href="#">Submenu 2-4</a></li>
				</ul></li>
			<li><a href="#">Menu 4 </a></li>
		</ul>
		
	</div>
</div>

<!--로그인 modal 시작 --------------------------------------------------------->
<div class="modal fade" id="login-form" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
		
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="false">&times;</button>
				<h2 class="modal-title text-center ">Log in</h2>
			</div>

			<div class="modal-body">
				<form action="/bitin/login">
					<div class="form-group">
						<label for="input-id">Id</label> <input class="form-control"
							type="text" id="input-id" name="userId" placeholder="아이디 입력" />
					</div>
					<div class="form-group">
						<label for="input-pwd">Password</label> <input
							class="form-control" type="password" id="input-pwd"
							name="userPassword" placeholder="비밀번호 입력" />
					</div>

					<div class="checkbox">
						<label> <input type="checkbox" />아이디 비밀번호 저장!
						</label>
					</div>

					<ul class="help list-unstyled list-inline">
						<li><a href="{getUrl('http://www.naver.com','dispMemberSignUpForm')}">회원가입</a></li>
						<li><a href="http://www.naver.com">ID/PW 찾기3</a></li>
					</ul>

					<button type="submit" class="btn btn-primary" onclick="check();">전송!!!</button>
					<button type="reset" class="btn btn-warning">취소!!!</button>
				</form>
			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<!--- 로그인 모달 끝--------------------------------------------------------->