<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>학생정보시스템</title>

<link href="/bitin/assets/css/application.css" rel="stylesheet">
<link rel="shortcut icon" href="img/favicon.png">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<meta charset="utf-8">
<script>
	
</script>
</head>
<body class="background-dark">
	<div class="landing">
		<div class="container">
			<header class="page-header">
				<div class="navbar">
					<div class="logo pull-left">
						<h4>
							<a href="/bitin/index"> <strong>StuBit</strong></a> <small>test</small>
						</h4>
					</div>
					<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
				</div>
			</header>
			<div class="content">
				<div id="carousel-landing"
					class="carousel slide carousel-landing carousel-fade">
					<!-- <ol class="carousel-indicators">
						<li data-target="#carousel-landing" data-slide-to="0"
							class="active"></li>
					</ol> -->
					<div class="carousel-inner">
						<div class="item active">
							<div class="row">
								<div class="col-xs-6">
									<div class="animated fadeInLeftBig">
										<h1 class="slide-one-header">
											<strong>StuBit </strong>for Mobile <br>Android App
										</h1>
										<p class="lead hidden-xs">간단한 서비스 제공</p>
										<p>
											<a href="404" class="btn btn-lg btn-transparent">
												download &nbsp; <i class="fa fa-shopping-cart"></i>
											</a>
										</p>
									</div>
								</div>
								<div class="col-xs-6">
									<div class="text-align-center animated fadeInRightBig">
										<img src="/bitin/assets/img/test.png" alt="Second slide">
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 	
					<a class="left carousel-control carousel-control-landing"
						href="#carousel-landing" data-slide="prev"> <span
						class="icon-prev"></span>
					</a> <a class="right carousel-control carousel-control-landing"
						href="#carousel-landing" data-slide="next"> <span
						class="icon-next"></span>
					</a> -->
				</div>
			</div>
		</div>
		<div id="about" class="widget widget-white widget-about">
			<div class="container">
				<div class="row">
					<div class="col-sm-offset-1 col-sm-10">
						<h2>
							<strong>About StuBit</strong>
						</h2>
						<p>
							<strong>StuBit</strong> Study + Bit의 합성어. 수업관리의 편의성을 위해 제작중
						</p>
						<div class="row features">
							<div class="col-sm-4">
								<section class="feature">
									<div class="row">
										<div class="col-xs-4">
											<p>
												<span class="icon background-danger"> <i
													class="fa fa-bold"></i>
												</span>
											</p>
										</div>
										<div class="col-xs-8">
											<h4><a href="/bitin/board/list">자료관리</h4>
											<p>수업 자료 관리에 편의를 제공합니다.</p>
										</div>
									</div>
								</section>
							</div>
							<div class="col-sm-4">
								<section class="feature">
									<div class="row">
										<div class="col-xs-4">
											<p>
												<span class="icon background-warning"> <i
													class="fa fa-magic"></i>
												</span>
											</p>
										</div>
										<div class="col-xs-8">
											<h4>자동 출결 시스템</h4>
											<p>위치기반으로 자동으로 출결을 도와줍니다.</p>
										</div>
									</div>
								</section>
							</div>
							<div class="col-sm-4">
								<section class="feature">
									<div class="row">
										<div class="col-xs-4">
											<p>
												<span class="icon background-success"> <i
													class="fa fa-wrench"></i>
												</span>
											</p>
										</div>
										<div class="col-xs-8">
											<h4>실시간 QnA</h4>
											<p>수업 중간에 질문을 직접하지않고 어플리케이션을 이용하여 보다 쉽게 질문하고 수업내용을 다시
												확인합니다.</p>
										</div>
									</div>
								</section>
							</div>
						</div>
						<div class="row features">
							<div class="col-sm-4">
								<section class="feature">
									<div class="row">
										<div class="col-xs-4">
											<p>
												<span class="icon background-primary"> <i
													class="fa fa-superscript"></i>
												</span>
											</p>
										</div>
										<div class="col-xs-8">
											<h4>메세징</h4>
											<p>학생과 교수 또는 학생들 조별간의 메세징 기능 제공</p>
										</div>
									</div>
								</section>
							</div>
							<div class="col-sm-4">
								<section class="feature">
									<div class="row">
										<div class="col-xs-4">
											<p>
												<span class="icon background-lime"> <i
													class="fa fa-check"></i>
												</span>
											</p>
										</div>
										<div class="col-xs-8">
											<h4>스케쥴러</h4>
											<p>학생의 개인 스케쥴과 수업의 스케쥴을 한눈에 볼 수 있게 해준다.</p>
										</div>
									</div>
								</section>
							</div>
							<div class="col-sm-4">
								<section class="feature">
									<div class="row">
										<div class="col-xs-4">
											<p>
												<span class="icon background-info"> <i
													class="fa fa-css3"></i>
												</span>
											</p>
										</div>
										<div class="col-xs-8">
											<h4>커뮤니티</h4>
											<p>수업, 학생 , 교수 등 간의 커뮤니티를 위한 게시판 제공</p>
										</div>
									</div>
								</section>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
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
	<script src="/bitin/js/landing.js"></script>

</body>
</html>