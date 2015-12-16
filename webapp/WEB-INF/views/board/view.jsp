<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>StuBit : Type-B</title>

<!-- Vendor CSS -->
<link
	href="/bitin/assets/vendors/bower_components/fullcalendar/dist/fullcalendar.min.css"
	rel="stylesheet">
<link
	href="/bitin/assets/vendors/bower_components/animate.css/animate.min.css"
	rel="stylesheet">
<link
	href="/bitin/assets/vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.css"
	rel="stylesheet">
<link
	href="/bitin/assets/vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css"
	rel="stylesheet">
<link
	href="/bitin/assets/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css"
	rel="stylesheet">

<!-- CSS -->
<link href="/bitin/assets/css/app.min.1.css" rel="stylesheet">
<link href="/bitin/assets/css/app.min.2.css" rel="stylesheet">

</head>
<body>
	<header id="header" class="clearfix" data-current-skin="blue">
		<ul class="header-inner">
			<c:choose>
				<c:when test='${empty authUser }'>

					<li class="hidden-xs"><a href="/bitin/index" class="m-l-10"><img
							src="/bitin/assets/img/demo/logo.png" alt=""></a></li>
					<li class="pull-right"><a href="/bitin/loginform" id="login"
						title="login" data-toggle="popover" data-placement="bottom"><i
							class="btn btn-inverse" value="login"> Login </i></a></li>
					<li class="pull-right"><a href="/bitin/registerform" id="join"
						title="join" data-toggle="popover" data-placement="bottom"> <i
							class="btn btn-default" value="join"> Join </i>
					</a></li>
				</c:when>
				<c:otherwise>
					<li id="menu-trigger" data-trigger="#sidebar">
						<div
							class="btn btn-default btn-icon waves-effect waves-circle waves-float zmdi zmdi-apps">
						</div>
					</li>
					<li class="hidden-xs"><a href="/bitin/index" class="m-l-10"><img
							src="/bitin/assets/img/demo/logo.png" alt=""></a></li>


					<li class="pull-right">
						<ul class="top-menu">

							<li id="top-search"><a href=""><i
									class="tm-icon zmdi zmdi-search"></i></a></li>

							<li class="dropdown"><a data-toggle="dropdown" href="">
									<i class="tm-icon zmdi zmdi-email"></i> <i class="tmn-counts">6</i>
							</a>
								<div class="dropdown-menu dropdown-menu-lg pull-right">
									<div class="listview">
										<div class="lv-header">Messages</div>
										<div class="lv-body">
											<a class="lv-item" href="">
												<div class="media">
													<div class="pull-left">
														<img class="lv-img-sm" src="img/profile-pics/1.jpg" alt="">
													</div>
													<div class="media-body">
														<div class="lv-title">David Belle</div>
														<small class="lv-small">Cum sociis natoque
															penatibus et magnis dis parturient montes</small>
													</div>
												</div>
											</a> <a class="lv-item" href="">
												<div class="media">
													<div class="pull-left">
														<img class="lv-img-sm" src="img/profile-pics/2.jpg" alt="">
													</div>
													<div class="media-body">
														<div class="lv-title">Jonathan Morris</div>
														<small class="lv-small">Nunc quis diam
															diamurabitur at dolor elementum, dictum turpis vel</small>
													</div>
												</div>
											</a> <a class="lv-item" href="">
												<div class="media">
													<div class="pull-left">
														<img class="lv-img-sm" src="img/profile-pics/3.jpg" alt="">
													</div>
													<div class="media-body">
														<div class="lv-title">Fredric Mitchell Jr.</div>
														<small class="lv-small">Phasellus a ante et est
															ornare accumsan at vel magnauis blandit turpis at augue
															ultricies</small>
													</div>
												</div>
											</a> <a class="lv-item" href="">
												<div class="media">
													<div class="pull-left">
														<img class="lv-img-sm" src="img/profile-pics/4.jpg" alt="">
													</div>
													<div class="media-body">
														<div class="lv-title">Glenn Jecobs</div>
														<small class="lv-small">Ut vitae lacus sem
															ellentesque maximus, nunc sit amet varius dignissim, dui
															est consectetur neque</small>
													</div>
												</div>
											</a> <a class="lv-item" href="">
												<div class="media">
													<div class="pull-left">
														<img class="lv-img-sm" src="img/profile-pics/4.jpg" alt="">
													</div>
													<div class="media-body">
														<div class="lv-title">Bill Phillips</div>
														<small class="lv-small">Proin laoreet commodo eros
															id faucibus. Donec ligula quam, imperdiet vel ante
															placerat</small>
													</div>
												</div>
											</a>
										</div>
										<a class="lv-footer" href="">View All</a>
									</div>
								</div></li>
							<li class="dropdown"><a data-toggle="dropdown" href="">
									<i class="tm-icon zmdi zmdi-notifications"></i> <i
									class="tmn-counts">9</i>
							</a>
								<div class="dropdown-menu dropdown-menu-lg pull-right">
									<div class="listview" id="notifications">
										<div class="lv-header">
											Notification

											<ul class="actions">
												<li class="dropdown"><a href=""
													data-clear="notification"> <i
														class="zmdi zmdi-check-all"></i>
												</a></li>
											</ul>
										</div>
										<div class="lv-body">
											<a class="lv-item" href="">
												<div class="media">
													<div class="pull-left">
														<img class="lv-img-sm" src="img/profile-pics/1.jpg" alt="">
													</div>
													<div class="media-body">
														<div class="lv-title">David Belle</div>
														<small class="lv-small">Cum sociis natoque
															penatibus et magnis dis parturient montes</small>
													</div>
												</div>
											</a> <a class="lv-item" href="">
												<div class="media">
													<div class="pull-left">
														<img class="lv-img-sm" src="img/profile-pics/2.jpg" alt="">
													</div>
													<div class="media-body">
														<div class="lv-title">Jonathan Morris</div>
														<small class="lv-small">Nunc quis diam
															diamurabitur at dolor elementum, dictum turpis vel</small>
													</div>
												</div>
											</a> <a class="lv-item" href="">
												<div class="media">
													<div class="pull-left">
														<img class="lv-img-sm" src="img/profile-pics/3.jpg" alt="">
													</div>
													<div class="media-body">
														<div class="lv-title">Fredric Mitchell Jr.</div>
														<small class="lv-small">Phasellus a ante et est
															ornare accumsan at vel magnauis blandit turpis at augue
															ultricies</small>
													</div>
												</div>
											</a> <a class="lv-item" href="">
												<div class="media">
													<div class="pull-left">
														<img class="lv-img-sm" src="img/profile-pics/4.jpg" alt="">
													</div>
													<div class="media-body">
														<div class="lv-title">Glenn Jecobs</div>
														<small class="lv-small">Ut vitae lacus sem
															ellentesque maximus, nunc sit amet varius dignissim, dui
															est consectetur neque</small>
													</div>
												</div>
											</a> <a class="lv-item" href="">
												<div class="media">
													<div class="pull-left">
														<img class="lv-img-sm" src="img/profile-pics/4.jpg" alt="">
													</div>
													<div class="media-body">
														<div class="lv-title">Bill Phillips</div>
														<small class="lv-small">Proin laoreet commodo eros
															id faucibus. Donec ligula quam, imperdiet vel ante
															placerat</small>
													</div>
												</div>
											</a>
										</div>

										<a class="lv-footer" href="">View Previous</a>
									</div>

								</div></li>
							<li class="dropdown hidden-xs"><a data-toggle="dropdown"
								href=""> <i class="tm-icon zmdi zmdi-view-list-alt"></i> <i
									class="tmn-counts">2</i>
							</a>
								<div class="dropdown-menu pull-right dropdown-menu-lg">
									<div class="listview">
										<div class="lv-header">Tasks</div>
										<div class="lv-body">
											<div class="lv-item">
												<div class="lv-title m-b-5">HTML5 Validation Report</div>

												<div class="progress">
													<div class="progress-bar" role="progressbar"
														aria-valuenow="95" aria-valuemin="0" aria-valuemax="100"
														style="width: 95%">
														<span class="sr-only">95% Complete (success)</span>
													</div>
												</div>
											</div>
											<div class="lv-item">
												<div class="lv-title m-b-5">Google Chrome Extension</div>

												<div class="progress">
													<div class="progress-bar progress-bar-success"
														role="progressbar" aria-valuenow="80" aria-valuemin="0"
														aria-valuemax="100" style="width: 80%">
														<span class="sr-only">80% Complete (success)</span>
													</div>
												</div>
											</div>
											<div class="lv-item">
												<div class="lv-title m-b-5">Social Intranet Projects</div>

												<div class="progress">
													<div class="progress-bar progress-bar-info"
														role="progressbar" aria-valuenow="20" aria-valuemin="0"
														aria-valuemax="100" style="width: 20%">
														<span class="sr-only">20% Complete</span>
													</div>
												</div>
											</div>
											<div class="lv-item">
												<div class="lv-title m-b-5">Bootstrap Admin Template</div>

												<div class="progress">
													<div class="progress-bar progress-bar-warning"
														role="progressbar" aria-valuenow="60" aria-valuemin="0"
														aria-valuemax="100" style="width: 60%">
														<span class="sr-only">60% Complete (warning)</span>
													</div>
												</div>
											</div>
											<div class="lv-item">
												<div class="lv-title m-b-5">Youtube Client App</div>

												<div class="progress">
													<div class="progress-bar progress-bar-danger"
														role="progressbar" aria-valuenow="80" aria-valuemin="0"
														aria-valuemax="100" style="width: 80%">
														<span class="sr-only">80% Complete (danger)</span>
													</div>
												</div>
											</div>
										</div>

										<a class="lv-footer" href="">View All</a>
									</div>
								</div></li>
							<li class="hidden-xs" id="chat-trigger" data-trigger="#chat">
								<a href=""><i class="tm-icon zmdi zmdi-comment-alt-text"></i></a>
							</li>
						</ul>
					</li>
				</c:otherwise>
			</c:choose>
		</ul>


		<!-- Top Search Content -->
		<div id="top-search-wrap">
			<div class="tsw-inner">
				<i id="top-search-close" class="zmdi zmdi-arrow-left"></i> <input
					type="text">
			</div>
		</div>
	</header>
	<section id="main" data-layout="layout-1">
		<aside id="sidebar" class="sidebar c-overflow">
			<div class="profile-menu">
				<a href="">
					<div class="profile-pic">
						<img src="/bitin/assets/img/profile-pics/1.jpg" alt="">
					</div>

					<div class="profile-info">
						${authUser.userName  } <i class="zmdi zmdi-caret-down"></i>
					</div>
				</a>

				<ul class="main-menu">
					<li><a href="profile-about.html"><i
							class="zmdi zmdi-account"></i> 내 정보</a></li>
					<li><a href="/bitin/user/logout"><i
							class="zmdi zmdi-time-restore"></i> Logout</a></li>
				</ul>
			</div>

			<ul class="main-menu">
				<li class="active"><a href="index.html"><i
						class="zmdi zmdi-home"></i> 메인 페이지</a></li>

				<!--  켈린더 -->
				<li><a href="calendar.html"><i class="zmdi zmdi-calendar"></i>
						일정표</a></li>
				<!--  게시판 메뉴 -->
				<li class="sub-menu"><a href=""><i
						class="zmdi zmdi-view-list"></i> 게시판</a>

					<ul>
						<li><a href="form-elements.html">1게시판</a></li>
						<li><a href="form-components.html">2게시판</a></li>
					</ul></li>

				<li class="sub-menu"><a href=""><i
						class="zmdi zmdi-collection-text"></i> Forms</a>

					<ul>
						<li><a href="form-elements.html">1번 폼</a></li>
						<li><a href="form-components.html">2번 폼<</a></li>
						<li><a href="form-examples.html">3번 폼<</a></li>
						<li><a href="form-validations.html">4번 폼<</a></li>
					</ul></li>
				<li class="sub-menu"><a href=""><i
						class="zmdi zmdi-trending-up"></i>차트</a>
					<ul>
						<li><a href="flot-charts.html">1번 차트</a></li>
						<li><a href="other-charts.html">2번 차트</a></li>
					</ul></li>
				<li class="sub-menu"><a href=""><i class="zmdi zmdi-image"></i>사진첩</a>
					<ul>
						<li><a href="photos.html">1번 사진첨</a></li>
						<li><a href="photo-timeline.html">2번 사진첩</a></li>
					</ul></li>
			</ul>
		</aside>

		<aside id="chat" class="sidebar c-overflow">
			<div class="chat-search">
				<div class="fg-line">
					<input type="text" class="form-control" placeholder="Search People">
				</div>
			</div>

			<div class="listview">
				<a class="lv-item" href="">
					<div class="media">
						<div class="pull-left p-relative">
							<img class="lv-img-sm" src="img/profile-pics/2.jpg" alt="">
							<i class="chat-status-busy"></i>
						</div>
						<div class="media-body">
							<div class="lv-title">Jonathan Morris</div>
							<small class="lv-small">Available</small>
						</div>
					</div>
				</a> <a class="lv-item" href="">
					<div class="media">
						<div class="pull-left">
							<img class="lv-img-sm" src="img/profile-pics/1.jpg" alt="">
						</div>
						<div class="media-body">
							<div class="lv-title">David Belle</div>
							<small class="lv-small">Last seen 3 hours ago</small>
						</div>
					</div>
				</a>
			</div>
		</aside>

		<section class="container">
			<div class="content">
				<div class="card">
					<div class="card-header">
						<h2>
							게시판 테스트 <small>게시판 테스트 중입니다.</small>
						</h2>
					</div>

					<div class="table-responsive">
						<table id="data-table-selection" class="table table-striped">
							<thead>
								<tr>
									<th data-column-id="id" data-type="numeric">No</th>
									<th data-column-id="sender">작성자</th>
									<th data-column-id="title">제목</th>
									<th data-column-id="received" data-order="desc">시간</th>
									<th data-column-id="received" data-order="desc">조회수</th>
								</tr>
							</thead>
							<tbody>
								<c:set var='count' value='${fn:length(listData.list) }' />
								<c:forEach items='${listData.list }' var='vo' varStatus='status'>
									<tr>
										<td>${vo.boardNo }</td>
										<td>${vo.userName }</td>
										<td>${vo.title }</td>
										<td>${vo.viewCount }</td>
										<td>${vo.regDate }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</section>
		<script src="http://www.kukudas.com/js/viewimageresize.js"></script>

		<section class="container">
			<div class="content">
				<h1>
					<span class="talker-photo hidden-xs"><img src="프로필 이미지"
						alt="아이디"></span>테스트

				</h1>

				<div class="panel panel-default view-head no-attach">
					<div class="panel-heading">
						<div class="ellipsis text-muted font-12">
							<a href="javascript:;"
								onClick="showSideView(this, 'test', '노답', 'MjAxM3VtYTIwMTNAZ21haWwuY29t', '');"><span
								class="member"><img
									src="http://www.kukudas.com/img/level/zb4/admin.gif"> 노답</span></a>
							<span class="sp"></span> <i class="fa fa-comment"></i> <b
								class="red">1</b> <span class="sp"></span> <i class="fa fa-eye"></i>
							581 <span class="sp"></span> <i class="fa fa-thumbs-up"></i> 0 <span
								class="hidden-xs pull-right"> <i class="fa fa-clock-o"></i>
								2015.12.16 12:52
							</span>
						</div>
					</div>
				</div>
		</section>

		<div class="view-padding">
			<div class="view-img"></div>

			<div class="view-content">
				<p style="text-align: center;" align="center">
					<!-- 
					<img
						src="http://i1.ruliweb.daumcdn.net/uf/image/U01/ruliweb/566ECBAE4E2520000C"
						alt="566ECBAE4E2520000C (657×2131)" style="line-height: 1.5;" /><span
						style="line-height: 1.5;">​</span> -->
				</p>
				<script>
					/* 링크 새창 열기 위함 */
					jQuery(".view-content a").each(function() {
						if (jQuery(this).attr("target") == "_self")
							return;
						else if (jQuery(this).attr("target") !== "_self") {
							jQuery(this).attr("target", "_blank");
						}
					}) /* 링크 새창 열기 위함 */
				</script>
			</div>

		</div>

		<script>
			// 글자수 제한
			var char_min = parseInt(0); // 최소
			var char_max = parseInt(0); // 최대
		</script>
		<section class="container">
			<div class="content" id="viewcomment">
				<section id="bo_vc" class="comment-media">
					<div class="content" id="c_124123">
						<div class="photo pull-left">
							<div class="media-object">
								<i class="fa fa-user"></i>
							</div>
						</div>
						<div class="media-body">
							<div class="media-heading">
								<b><a href="javascript:;"
									onClick="showSideView(this, 'spidaro', '오징어야', '', '');"><span
										class="member"><img
											src="http://www.kukudas.com/img/level/zb4/3.gif"> 오징어야</span></a></b>
								<span class="font-11 text-muted"> <span
									class="hidden-xs media-info"> <i class="fa fa-clock-o"></i>
										21분전
								</span>
								</span> &nbsp;
								<div class="pull-right font-11 ">
									<a href="#"
										onclick="apms_shingo('humor', '124123'); return false;"> <span
										class="text-muted media-btn">신고</span>
									</a>
								</div>
							</div>
							<div class="media-content">

								<!-- 댓글 내용 부분 -->

								<div class="cmt-good-btn">
									<a href="#" class="cmt-good"
										onclick="apms_good('humor', '124118', 'good', 'c_good124123', '124123'); return false;">
										<span id="c_good124123">0</span>
									</a>
								</div>
								<span id="edit_124123"></span>
								<!-- 수정 -->
								<span id="reply_124123"></span>
								<!-- 답변 -->
								<input type="hidden"
									value="./view_comment.page.php?bo_table=humor&amp;wr_id=124118&amp;crows=20&amp;page=1"
									id="comment_url_124123"> <input type="hidden" value="1"
									id="comment_page_124123"> <input type="hidden" value=""
									id="secret_comment_124123">
								<textarea id="save_comment_124123" style="display: none">므흣합니다. ^^</textarea>
							</div>
				</section>


				<div class="h10"></div>
				<div class="well text-center">
					<a href="/bitin/login">로그인한 회원만 댓글 등록이 가능합니다.</a>
				</div>
				<script src="http://www.kukudas.com/js/md5.js"></script>

				<div class="clearfix"></div>

				<div class="view-btn text-right">
					<div class="btn-group" role="group">
						<a role="button" href="./board.php?bo_table=humor&amp;page="
							class="btn btn-black btn-sm"> <i class="fa fa-bars"></i><span
							class="hidden-xs"> 목록</span>
						</a>
					</div>
					<div class="clearfix"></div>
				</div>
		</section>
		<script>
			function board_move(href) {
				window.open(href, "boardmove",
						"left=50, top=50, width=500, height=550, scrollbars=1");
			}
			$(function() {
				$(".view-content a").each(function() {
					$(this).attr("target", "_blank");
				});

				$("a.view_image")
						.click(
								function() {
									window
											.open(
													this.href,
													"large_image",
													"location=yes,links=no,toolbar=no,top=10,left=10,width=10,height=10,resizable=yes,scrollbars=no,status=no");
									return false;
								});
			});
		</script>


		<!-- } 게시판 목록 끝 -->
		</div>
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>

		<!-- Javascript Libraries -->
		<script>
			var authUser = "${authUser.userName}";
		</script>
		<script
			src="/bitin/assets/vendors/bower_components/jquery/dist/jquery.min.js"></script>
		<script
			src="/bitin/assets/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

		<script
			src="/bitin/assets/vendors/bower_components/flot/jquery.flot.js"></script>
		<script
			src="/bitin/assets/vendors/bower_components/flot/jquery.flot.resize.js"></script>
		<script
			src="/bitin/assets/vendors/bower_components/flot.curvedlines/curvedLines.js"></script>
		<script src="/bitin/assets/vendors/sparklines/jquery.sparkline.min.js"></script>
		<script
			src="/bitin/assets/vendors/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>

		<script
			src="/bitin/assets/vendors/bower_components/moment/min/moment.min.js"></script>
		<script
			src="/bitin/assets/vendors/bower_components/fullcalendar/dist/fullcalendar.min.js "></script>
		<script
			src="/bitin/assets/vendors/bower_components/simpleWeather/jquery.simpleWeather.min.js"></script>
		<script
			src="/bitin/assets/vendors/bower_components/Waves/dist/waves.min.js"></script>
		<script
			src="/bitin/assets/vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
		<script
			src="/bitin/assets/vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>
		<script
			src="/bitin/assets/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>

		<script src="/bitin/assets/js/flot-charts/curved-line-chart.js"></script>
		<script src="/bitin/assets/js/flot-charts/line-chart.js"></script>
		<script src="/bitin/assets/js/charts.js"></script>

		<script src="/bitin/assets/js/charts.js"></script>
		<script src="/bitin/assets/js/functions.js"></script>
		<!-- Javascript Libraries -->

		<script
			src="/bitin/assets/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
		<script
			src="/bitin/assets/vendors/bower_components/Waves/dist/waves.min.js"></script>
		<script
			src="/bitin/assets/vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
		<script
			src="/bitin/assets/vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>
		<script
			src="/bitin/assets/vendors/bootgrid/jquery.bootgrid.updated.js"></script>

		<!-- Data Table -->
		<script type="text/javascript">
			$(document).ready(function() {
				//Selection
				$("#data-table-selection").bootgrid({
					css : {
						icon : 'zmdi icon',
						iconColumns : 'zmdi-view-module',
						iconDown : 'zmdi-expand-more',
						iconRefresh : 'zmdi-refresh',
						iconUp : 'zmdi-expand-less'
					},
					selection : true,
					multiSelect : true,
					rowSelect : true,
					keepSelection : true
				});
			});
		</script>
</body>
</html>

<!-- .at-content -->

<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>

<!-- Javascript Libraries -->
<script>
	var authUser = "${authUser.userName}";
</script>
<script
	src="/bitin/assets/vendors/bower_components/jquery/dist/jquery.min.js"></script>
<script
	src="/bitin/assets/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<script src="/bitin/assets/vendors/bower_components/flot/jquery.flot.js"></script>
<script
	src="/bitin/assets/vendors/bower_components/flot/jquery.flot.resize.js"></script>
<script
	src="/bitin/assets/vendors/bower_components/flot.curvedlines/curvedLines.js"></script>
<script src="/bitin/assets/vendors/sparklines/jquery.sparkline.min.js"></script>
<script
	src="/bitin/assets/vendors/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>

<script
	src="/bitin/assets/vendors/bower_components/moment/min/moment.min.js"></script>
<script
	src="/bitin/assets/vendors/bower_components/fullcalendar/dist/fullcalendar.min.js "></script>
<script
	src="/bitin/assets/vendors/bower_components/simpleWeather/jquery.simpleWeather.min.js"></script>
<script
	src="/bitin/assets/vendors/bower_components/Waves/dist/waves.min.js"></script>
<script
	src="/bitin/assets/vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
<script
	src="/bitin/assets/vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>
<script
	src="/bitin/assets/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>

<script src="/bitin/assets/js/flot-charts/curved-line-chart.js"></script>
<script src="/bitin/assets/js/flot-charts/line-chart.js"></script>
<script src="/bitin/assets/js/charts.js"></script>

<script src="/bitin/assets/js/charts.js"></script>
<script src="/bitin/assets/js/functions.js"></script>
<!-- Javascript Libraries -->

<script
	src="/bitin/assets/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
<script
	src="/bitin/assets/vendors/bower_components/Waves/dist/waves.min.js"></script>
<script
	src="/bitin/assets/vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
<script
	src="/bitin/assets/vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>
<script src="/bitin/assets/vendors/bootgrid/jquery.bootgrid.updated.js"></script>
</body>
</html>
