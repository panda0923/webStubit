<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- light-blue - v3.2.0 - 2015-10-05 -->

<!DOCTYPE html>
<html>
<head>
<title>Light Blue - Responsive Admin Dashboard Template</title>

<link href="/bitin/assets/css/application.css" rel="stylesheet">
<link rel="shortcut icon" href="img/favicon.png">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<meta charset="utf-8">
<script>
	/* yeah we need this empty stylesheet here. It's cool chrome & chromium fix
	   chrome fix https://code.google.com/p/chromium/issues/detail?id=167083
	              https://code.google.com/p/chromium/issues/detail?id=332189
	 */
</script>
</head>
<body class="background-dark">
		<div class="container">
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
			<h2 class="content">
				게시판 글 작성 페이지 <small>writeform</small>
			</h2>
			<div class="content">
				<div class="no-margin">
					<section class="widget">
						<div class="body">
							<form class="form-horizontal" role="form" id="article-form"
								method="post" novalidate="novalidate"
								data-parsley-priority-enabled="false">
								<fieldset>
									<div class="form-group">
										<label class="col-sm-3 control-label" for="title">Title
											<span class="required">*</span>
										</label>
										<div class="col-sm-9">
											<input type="text" id="title" name="title"
												class="form-control input-transparent" required="required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-1 control-label" for="content">
											Content </label>
										<div class="col-sm-9">
											<textarea rows="20" class="form-control input-transparent"
												id="content"></textarea>
										</div>
									</div>
									<div class="form-group">
										<label for="description" class="col-sm-3 control-label">Description</label>
										<div class="col-sm-9">
											<textarea id="description" rows="3" name="text"
												class="form-control input-transparent"></textarea>
											<span class="help-block">Optional summary of your
												article that can be used in previews</span>
										</div>
									</div>
								</fieldset>
								<div class="form-group">
									<div class="row">
										<div class="col-sm-9 col-sm-offset-5">
											<div class="btn-toolbar">
												<button type="submit" class="btn btn-success btn-lg">글쓰기</button>
												<button type="button" class="btn btn-danger btn-lg">취  소</button>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</section>
				</div>

			</div>
		</div>
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
		<div class="loader-wrap hiding hide">
			<i class="fa fa-circle-o-notch fa-spin"></i>
		</div>
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
	<!-- page libs -->
	<script
		src="/bitin/assets/lib/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
	<script src="/bitin/assets/lib/select2/select2.min.js"></script>
	<script src="/bitin/assets/lib/moment/moment.js"></script>
	<script
		src="/bitin/assets/lib/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
	<script
		src="/bitin/assets/lib/jquery.maskedinput/dist/jquery.maskedinput.min.js"></script>
	<script
		src="/bitin/assets/lib/bootstrap3-wysihtml5-bower/dist/bootstrap3-wysihtml5.all.js"></script>
	<script src="/bitin/assets/lib/parsleyjs/dist/parsley.min.js"></script>

	<!-- page application js -->
	<script src="/bitin/assets/js/forms-article.js"></script>

</body>
</html>