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
</head>
<body class="background-dark">
	<div class="logo"></div>
	<div class="content container">
		<h2 class="page-title">STUPID</h2>
		<div class="row">
			<div class="col-md-7">
				<section class="widget">
					<div class="body">
						<form id="user-form" class="form-horizontal form-label-center"
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
										<input type="text" id="id" name="id"
											class="form-control input-transparent">
									</div>
									
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4" for="name">NAME</label>
									<div class="col-sm-4">
										<input type="text" id="name" name="name"
											class="form-control input-transparent">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4" for="password">PASSWORD</label>
									<div class="col-sm-4">
										<input type="text" id="password" name="password"
											class="form-control input-transparent">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4">classification</label>
									<div class="col-sm-8">
										<div id="gender" class="btn-group" data-toggle="buttons">
											<label class="btn btn-default"
												data-toggle-class="btn-primary"
												data-toggle-passive-class="btn-default"> <input
												type="radio" name="classification" value="student">
												학 생
											</label> <label class="btn btn-primary active"
												data-toggle-class="btn-primary"
												data-toggle-passive-class="btn-default"> <input
												type="radio" name="classification" value="teacher" checked>
												교 수
											</label>
											</label> <label class="btn btn-primary active"
												data-toggle-class="btn-primary"
												data-toggle-passive-class="btn-default"> <input
												type="radio" name="classification" value="staff" checked>
												직 원
											</label>
										</div>
									</div>
								</div>

							</fieldset>

							<div class="form-actions">
								<div class="row">
									<div class="col-sm-8 col-sm-offset-4">
										<button type="submit" class="btn btn-primary">확 인</button>
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
	<script src="lib/jquery/dist/jquery.min.js"></script>
	<script src="lib/jquery-pjax/jquery.pjax.js"></script>
	<script src="lib/bootstrap-sass/assets/javascripts/bootstrap.min.js"></script>
	<script src="lib/widgster/widgster.js"></script>
	<script src="lib/underscore/underscore.js"></script>

	<!-- common application js -->
	<script src="js/app.js"></script>
	<script src="js/settings.js"></script>


</body>
</html>