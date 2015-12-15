<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- light-blue - v3.2.0 - 2015-10-05 -->

<!DOCTYPE html>
<html>
<head>
<title>StuBit Login Page</title>

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
		} else if ($("input#password").val() == "") {
			alert("비밀번호를 입력해주세요");
			$("input#password").focus();
			event.preventDefault();
		}
	}
</script>

</head>
<body class="background-dark">
	<div class="single-widget-container">
		<section class="widget login-widget">
			<header class="text-align-center">
				<h4>로그인 페이지</h4>
			</header>
			<div class="body">
				<form class="no-margin" action="/bitin/user/login" method="post">
					<fieldset>
						<div class="form-group">
							<label for="ID">ID</label>
							<div class="input-group">
								<span class="input-group-addon"> <i class="fa fa-user"></i>
								</span> <input id="id" name="userId" type="id"
									class="form-control input-lg input-transparent"
									placeholder="아이디를 입력해주세요">
							</div>
						</div>
						<div class="form-group">
							<label for="password">Password</label>
							<div class="input-group input-group-lg">
								<span class="input-group-addon"> <i class="fa fa-lock"></i>
								</span> <input id="password" name="userPassword" type="password"
									class="form-control input-lg input-transparent"
									placeholder="비밀번호를 입력해주세요">
							</div>
						</div>
					</fieldset>
					<div class="form-actions">
						<button type="submit" class="btn btn-block btn-lg btn-danger"
							onclick="check();">
							<span class="small-circle"><i class="fa fa-caret-right"></i></span>
							<small>로그인</small>
						</button>
						<a class="forgot" href="#">아이디 또는 비밀번호 찾기(미구현)</a>
					</div>
				</form>
			</div>
			<footer>
				<div class="facebook-login">
					<a href="index.html"><span><i
							class="fa fa-facebook-square fa-lg"></i> LogIn with Facebook(미구현)</span></a>
				</div>
			</footer>
		</section>
	</div>
	<!-- common libraries. required for every page-->
	<script src="/bitin/assets/lib/jquery/dist/jquery.min.js"></script>
	<script src="/bitin/assets/lib/jquery-pjax/jquery.pjax.js"></script>
	<script
		src="/bitin/assets/lib/bootstrap-sass/assets/javascripts/bootstrap.min.js"></script>
	<script src="/bitin/assets/lib/widgster/widgster.js"></script>
	<script src="/bitin/assets/lib/underscore/underscore.js"></script>

	<!-- common application js -->
	<script src="/bitin/assets/js/app.js"></script>
	<script src="/bitin/assets/js/settings.js"></script>



	<!-- page specific scripts -->


</body>
</html>