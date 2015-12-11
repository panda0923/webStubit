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

</head>
<body class="background-dark">
	
	<div class="col-lg-3 col-sm-6">
                <section class="widget large">
                    <header>
                        <h4><i class="fa fa-home"></i> Top sources2</h4>
                    </header>
                    <div class="body">
                        <div id="sources-chart-pie" class="chart pie-chart">
                            <svg></svg>
                        </div>
                    </div>
                    <footer id="data-chart-footer" class="pie-chart-footer">
                    </footer>
                </section>
            </div>

	 
	
	<div class="loader-wrap hiding hide">
		<i class="fa fa-circle-o-notch fa-spin"></i>
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
<script src="/bitin/assets/lib/jquery/dist/jquery.min.js"></script>
<script src="/bitin/assets/lib/jquery-pjax/jquery.pjax.js"></script>
<script	src="/bitin/assets/lib/bootstrap-sass/assets/javascripts/bootstrap.min.js"></script>
<script src="/bitin/assets/lib/widgster/widgster.js"></script>
<script src="/bitin/assets/lib/underscore/underscore.js"></script>

<!-- common application js -->
<script src="/bitin/assets/js/app.js"></script>
<script src="/bitin/assets/js/settings.js"></script>

<script	src="/bitin/assets/lib/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
<script src="/bitin/assets/lib/underscore/underscore.js"></script>
<script src="/bitin/assets/lib/backbone/backbone.js"></script>
<script	src="/bitin/assets/lib/backbone.paginator/lib/backbone.paginator.min.js"></script>
<script src="/bitin/assets/lib/backgrid/lib/backgrid.min.js"></script>
<script	src="/bitin/assets/lib/backgrid-paginator/backgrid-paginator.js"></script>
<script	src="/bitin/assets/lib/datatables/media/js/jquery.dataTables.min.js"></script>

<!-- page application js -->
<script src="/bitin/assets/js/tables-dynamic.js"></script>
<script src="/bitin/assets/js/chart-test.js"></script>



<!-- page specific scripts -->
<!-- page libs -->
<script src="/bitin/assets/js/nvd3-custom-lb1.0/lib/d3.v2.min.js"></script>
<script src="/bitin/assets/js/nvd3-custom-lb1.0/nv.d3.custom.js"></script>

<!-- nvd3 models -->
<script src="/bitin/assets/js/nvd3-custom-lb1.0/src/models/scatter.js"></script>
<script src="/bitin/assets/js/nvd3-custom-lb1.0/src/models/axis.js"></script>
<script src="/bitin/assets/js/nvd3-custom-lb1.0/src/models/legend.js"></script>
<script src="/bitin/assets/js/nvd3-custom-lb1.0/src/models/stackedArea.js"></script>
<script src="/bitin/assets/js/nvd3-custom-lb1.0/src/models/stackedAreaChart.js"></script>
<script src="/bitin/assets/js/nvd3-custom-lb1.0/src/models/line.js"></script>
<script src="/bitin/assets/js/nvd3-custom-lb1.0/src/models/pie.js"></script>
<script src="/bitin/assets/js/nvd3-custom-lb1.0/src/models/pieChartTotal.js"></script>
<script src="/bitin/assets/js/nvd3-custom-lb1.0/stream_layers.js"></script>
<script src="/bitin/assets/js/nvd3-custom-lb1.0/src/models/lineChart.js"></script>
<script src="/bitin/assets/js/nvd3-custom-lb1.0/src/models/multiBar.js"></script>
<script src="/bitin/assets/js/nvd3-custom-lb1.0/src/models/multiBarChart.js"></script>

</body>
</html>