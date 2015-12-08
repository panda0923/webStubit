<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<title>회원가입 페이지</title>

<link href="/bitin/assets/css/application.css" rel="stylesheet">
<link rel="shortcut icon" href="img/favicon.png">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<meta charset="utf-8">
<script>


function check() { 
	if ($("input#id").val() == "") {
		alert("id를 입력해주세요");
		$("input#id").focus();
		event.preventDefault();
	}
	else if ($("input#name").val() == "") {
		alert("이름을 입력해주세요");
		$("input#name").focus();
		event.preventDefault();
	}
	else if ($("input#password").val() == "") {
		alert("비밀번호를 입력해주세요");
		$("input#password").focus();
		event.preventDefault();
	}
	else if ($("input#re-password").val() == "") {
		alert("비밀번호를 한번 더 입력해주세요");
		$("input#re-password").focus();
		event.preventDefault();
	}
	else if (  $("input#re-password").val() != $("input#password").val()) {
		alert("비밀번호가 일치하지 않습니다");
		$("input#password").focus();
		event.preventDefault();
	}
	
}
</script>
</head>
<body class="background-dark">
	<div class="logo"></div>
	<div class="content container">
		<h2 class="page-title">STUPID</h2>
		<div class="row">
			<div class="col-md-7">
				<section class="widget">
					<div class="body">
						<form id="user-form" class="form-horizontal form-label-center" action="/bitin/user/join"
							novalidate="novalidate" method="post"
							data-parsley-priority-enabled="false"
							data-parsley-excluded="input[name=gender]">
							<fieldset class="mt-sm">
								<legend> 회원가입페이지입니다 </legend>
							</fieldset>
							<fieldset>
								<legend class="section">개인 정보</legend>
								<div class="form-group">
									<label class="control-label col-sm-4" for="id">ID</label>
									<div class="col-sm-4">
										<input type="text" id="id" name="userId" class="form-control input-transparent">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4" for="name">NAME</label>
									<div class="col-sm-4">
										<input type="text" id="name" name="userName"
											class="form-control input-transparent">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4" for="password">PASSWORD</label>
									<div class="col-sm-4">
										<input type="password" id="password" name="userPassword" class="form-control input-transparent">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4" for="password">CONFIRM PASSWORD</label>
									<div class="col-sm-4">
										<input type="password" id="re-password" class="form-control input-transparent">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4">classification</label>
									<div class="col-sm-8">
										<div id="gender" class="btn-group" data-toggle="buttons">
											<label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
												<input type="radio" name="userType" value="student">	학 생	</label> 
											<label class="btn btn-default" data-toggle-class="btn-primary"	data-toggle-passive-class="btn-default"> 
												<input type="radio" name="userType" value="teacher">	교 수	</label>
											<label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default"> 
												<input type="radio" name="userType" value="staff">직 원 </label>
										</div>
									</div>
								</div>

							</fieldset>

							<div class="form-actions">
								<div class="row">
									<div class="col-sm-8 col-sm-offset-4">
										<button type="submit" class="btn btn-primary" onclick="check();">확 인</button>
										<button type="button" class="btn btn-default">취 소</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</section>
			</div>
		</div>
	</div>
	<div class="loader-wrap hiding hide">
		<i class="fa fa-circle-o-notch fa-spin"></i>
	</div>
	<!-- common libraries. required for every page-->
	<script src="/bitin/assets/lib/jquery/dist/jquery.min.js"></script>
	<script src="/bitin/assets/lib/jquery-pjax/jquery.pjax.js"></script>
	<script src="/bitin/assets/lib/bootstrap-sass/assets/javascripts/bootstrap.min.js"></script>
	<script src="/bitin/assets/lib/widgster/widgster.js"></script>
	<script src="/bitin/assets/lib/underscore/underscore.js"></script>

	<!-- common application js -->
	<script src="/bitin/assets/js/app.js"></script>
	<script src="/bitin/assets/js/settings.js"></script>


</body>
</html>