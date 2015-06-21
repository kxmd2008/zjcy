<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="../head.jsp"/>

<!-- 产品报价 -->
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp"/>
		<div id="body-container">
			<jsp:include page="../menu.jsp"/>
			<div id="right-column">
				<div class="right-column-content container-fluid">
					<div class="row">
						<div class="col-md-6">
							<h1>
								<span aria-hidden="true" class="icon icon-settings"></span>
								<span class="main-text">
									Form Elements
								</span>
							</h1>
						</div>
						<div class="col-md-6">
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 col-sm-6">
							<div class="block">
								<div class="block-heading">
									<div class="main-text h2">
										Horizontal Form
									</div>
									<div class="block-controls">
										<span aria-hidden="true" class="icon icon-cross icon-size-medium block-control-remove"></span>
										<span aria-hidden="true" class="icon icon-arrow-down icon-size-medium block-control-collapse"></span>
									</div>
								</div>
								<div class="block-content-outer">
									<div class="block-content-inner">
										<form class="form-horizontal" role="form">
											<div class="form-group">
												<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
												<div class="col-sm-10">
													<input type="email" class="form-control" id="inputEmail9" placeholder="Email">
<%-- 													<span class="help-block">We promise not to spam you</span> --%>
												</div>
											</div>
											<div class="form-group">
												<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
												<div class="col-sm-10">
													<input type="password" class="form-control" id="inputPassword3" placeholder="Password">
												</div>
											</div>
											<div class="form-group">
												<div class="col-sm-offset-2 col-sm-10">
													<div class="checkbox">
														<label>
															<input type="checkbox"> Remember me
														</label>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="col-sm-offset-2 col-sm-10">
													<button type="submit" class="btn btn-success">Sign in</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<jsp:include page="../footer.jsp"/>
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

