<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>test guestbook list view</title>

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
	<section class="content">
	<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
		<header>
			<h4>
				guestbook list test<span class="fw-semi-bold">Styles</span>
			</h4>
		</header>
		<div class="body">
			<div class="mt">
				<table id="datatable-table" class="table table-striped table-hover">
					<thead>
						<tr>
							<th>번 호</th>
							<th>작성자</th>
							<th>제목</th>
							<th>조회수</th>
							<th>작성일</th>
							<th>&nbsp;</th>
						</tr>
					</thead>
					<tbody>

						<c:set var='count' value='${fn:length(listData.list) }' />
						<c:forEach items='${listData.list }' var='vo' varStatus='status'>



							<tr>
								<td>${vo.boardNo }</td>
								<td><span class="fw-semi-bold">${vo.userName }</span></td>
								<td class="hidden-xs"><small> <span
										class="fw-semi-bold"><a href="/bitin/board/list/${vo.boardNo }">${vo.title }</a></span>
								</small></td>
								<td class="hidden-xs">${vo.viewCount }</td>
								<td class="hidden-xs">${vo.regDate }</td>
								<td class="hidden-xs"></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>
		</div>
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
	</section>
	<!-- 
	<div class="loader-wrap hiding hide">
		<i class="fa fa-circle-o-notch fa-spin"></i>
	</div>
	<div class="loader-wrap hiding hide">
		<i class="fa fa-circle-o-notch fa-spin"></i>
	 </div>
	 -->
	<script src="/bitin/assets/lib/jquery/dist/jquery.min.js"></script>
	<script src="/bitin/assets/lib/jquery-pjax/jquery.pjax.js"></script>
	<script src="/bitin/assets/lib/bootstrap-sass/assets/javascripts/bootstrap.min.js"></script>
	<script src="/bitin/assets/lib/widgster/widgster.js"></script>
	<script src="/bitin/assets/lib/underscore/underscore.js"></script>

	<!-- common application js -->
	<script src="/bitin/assets/js/app.js"></script>
	<script src="/bitin/assets/js/settings.js"></script>
	<script src="/bitin/assets/lib/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
	<script src="/bitin/assets/lib/underscore/underscore.js"></script>
	<script src="/bitin/assets/lib/backbone/backbone.js"></script>
	<script src="/bitin/assets/lib/backbone.paginator/lib/backbone.paginator.min.js"></script>
	<script src="/bitin/assets/lib/backgrid/lib/backgrid.min.js"></script>
	<script src="/bitin/assets/lib/backgrid-paginator/backgrid-paginator.js"></script>
	<script src="/bitin/assets/lib/datatables/media/js/jquery.dataTables.min.js"></script>
   <!-- page application js -->
	<script src="/bitin/assets/js/tables-dynamic.js"></script>

</body>
</html>