<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="icon" href="<%=request.getContextPath()%>/assets/images/required/ico/favicon.ico">
	<!-- Fav and touch icons -->
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=request.getContextPath()%>/assets/images/required/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=request.getContextPath()%>/assets/images/required/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=request.getContextPath()%>/assets/images/required/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/assets/images/required/ico/apple-touch-icon-57-precomposed.png">
	<link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/images/required/ico/favicon.png">

	<title>Circloid - Responsive HTML Admin Template</title>

	<!-- Required CSS Files -->
	<link type="text/css" href="<%=request.getContextPath()%>/assets/css/required/bootstrap/bootstrap.min.css" rel="stylesheet">
	<link href='http://fonts.useso.com/css?family=Roboto:400,300&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
	<link type="text/css" href="<%=request.getContextPath()%>/assets/js/required/jquery-ui-1.11.0.custom/jquery-ui.min.css" rel="stylesheet" />
	<link type="text/css" href="<%=request.getContextPath()%>/assets/js/required/jquery-ui-1.11.0.custom/jquery-ui.structure.min.css" rel="stylesheet" />
	<link type="text/css" href="<%=request.getContextPath()%>/assets/js/required/jquery-ui-1.11.0.custom/jquery-ui.theme.min.css" rel="stylesheet" />
	<link type="text/css" href="<%=request.getContextPath()%>/assets/css/required/mCustomScrollbar/jquery.mCustomScrollbar.min.css" rel="stylesheet" />
	<link type="text/css" href="<%=request.getContextPath()%>/assets/css/required/icheck/all.css" rel="stylesheet" />
	<link type="text/css" href="<%=request.getContextPath()%>/assets/fonts/metrize-icons/styles-metrize-icons.css" rel="stylesheet">

	<!-- Optional CSS Files -->
	<!-- add CSS files here -->

	<!-- More Required CSS Files -->
	<link type="text/css" href="<%=request.getContextPath()%>/assets/css/styles-core.css" rel="stylesheet" />
	<link type="text/css" href="<%=request.getContextPath()%>/assets/css/styles-core-responsive.css" rel="stylesheet" />

	<!-- Demo CSS Files -->
	<link type="text/css" href="<%=request.getContextPath()%>/assets/css/demo-files/pages-404-500.css" rel="stylesheet" />

	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="<%=request.getContextPath()%>/assets/js/required/misc/ie10-viewport-bug-workaround.js"></script>

	<!--[if IE 7]>
	<link type="text/css" href="<%=request.getContextPath()%>/assets/css/required/misc/style-ie7.css" rel="stylesheet">
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/fonts/lte-ie7.js"></script>
	<![endif]-->
	<!--[if IE 8]>
	<link type="text/css" href="<%=request.getContextPath()%>/assets/css/required/misc/style-ie8.css" rel="stylesheet">
	<![endif]-->
	<!--[if lte IE 8]>
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/css/required/misc/excanvas.min.js"></script>
	<![endif]-->
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="<%=request.getContextPath()%>/assets/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>

	<div class="container-fluid">
		<jsp:include page="header.jsp"/>
		<div id="body-container">
			<jsp:include page="menu.jsp"/>
			<div id="right-column">
				<div class="right-column-content">
					<div class="row">
						<div class="col-md-12">
							<div class="page-not-found highlight-color-red">
								<div class="not-found-icons highlight-color-red-icon">
									<span class="icon icon-number-five icon-size-large"></span>
									<span class="icon icon-number-zero icon-size-large"></span>
									<span class="icon icon-number-zero icon-size-large"></span>
								</div>
								<div class="not-found-title">
									服务器错误
								</div>
								<div class="not-found-description">
									<p class="text-center">You are seeing this page because there is an error with our server.</p>
									<p class="text-center"><strong>Don't panic, just wait a bit then <a onclick="location.reload()">refresh</a>.</strong></p>
									<p class="text-center">If you've already done that and this error still shows up, please email us at <a href="#">email@example.com</a></p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<jsp:include page="footer.jsp"/>
			</div>
		</div>
	</div><!-- /.container -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- Required JS Files -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/required/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/required/jquery-ui-1.11.0.custom/jquery-ui.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/required/bootstrap/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/required/jquery.easing.1.3-min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/required/jquery.mCustomScrollbar.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/required/misc/jquery.mousewheel-3.0.6.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/required/misc/retina.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/required/icheck.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/required/misc/jquery.ui.touch-punch.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/required/circloid-functions.js"></script>

	<!-- Optional JS Files -->
	<!-- add optional JS plugin files here -->

	<!-- REQUIRED: User Editable JS Files -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/script.js"></script>
	<!-- add additional User Editable files here -->
 </body>
</html>
