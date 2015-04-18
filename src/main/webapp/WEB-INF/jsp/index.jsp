<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="head.jsp"/>
<body id="signin-type-2">
	<div class="container-fluid">
		<div id="body-container">
			<div class="standalone-page">
				<div class="standalone-page-logo">
					<img src="assets/images/required/logo-default.png" width="156" height="44" alt="Logo" />
				</div>
				<div class="error-messages hidden"></div>
				<div class="standalone-page-content" data-border-top="multi">
					<div class="standalone-page-block">
						<div class="row">
							<div class="col-xs-12">
								<h2 class="heading">
									<span aria-hidden="true" class="icon icon-key"></span>
									<span class="main-text">
										请输入登陆信息
									</span>
								</h2>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<p class="text-center text-primary">
									<span class="label label-success"></span> 
<!-- 									Try submiting the form without filling it in. -->
								</p>
								<form role="form" class="login-form form-horizontal" action="j_login" method="post">
									<div class="form-group">
										<label for="inputEmail" class="col-sm-3 control-label">用户名</label>
										<div class="col-sm-9">
											<input autocomplete="off" class="form-control" id="inputEmail" placeholder="请输入用户名" type="text" name="loginName">
											<span class="help-block text-muted"></span>
										</div>
									</div>
									<div class="form-group">
										<label for="inputPassword" class="col-sm-3 control-label">密码</label>
										<div class="col-sm-9">
											<input autocomplete="off" class="form-control" id="inputPassword" placeholder="请输入密码" type="password" name="password">
											<span class="help-block text-muted"></span>
										</div>
									</div>
<!-- 									<div class="form-group"> -->
<!-- 										<div class="col-sm-offset-3 col-sm-9"> -->
<!-- 											<div class="checkbox"> -->
<!-- 												<label> -->
<!-- 													<input type="checkbox"> 记住我 -->
<!-- 												</label> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 									</div> -->
									<div class="form-group">
										<div class="col-sm-offset-3 col-sm-9">
											<button id="submit-form" type="submit" class="btn btn-success">登陆</button>
											<a href="forgotPassword" class="btn btn-link btn-sm pull-right">忘记密码</a>
										</div>
									</div>
								</form>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="change-section">
									<h3 class="heading">还未注册?</h3>
									<a href="register" class="btn btn-default btn-block">创建新用户</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div><!-- /.container -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- Required JS Files -->
	<script type="text/javascript" src="assets/js/required/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="assets/js/required/jquery-ui-1.11.0.custom/jquery-ui.min.js"></script>
	<script type="text/javascript" src="assets/js/required/bootstrap/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/required/jquery.easing.1.3-min.js"></script>
	<script type="text/javascript" src="assets/js/required/jquery.mCustomScrollbar.min.js"></script>
	<script type="text/javascript" src="assets/js/required/misc/jquery.mousewheel-3.0.6.min.js"></script>
	<script type="text/javascript" src="assets/js/required/misc/retina.min.js"></script>
	<script type="text/javascript" src="assets/js/required/icheck.min.js"></script>
	<script type="text/javascript" src="assets/js/required/misc/jquery.ui.touch-punch.min.js"></script>
	<script type="text/javascript" src="assets/js/required/circloid-functions.js"></script>

	<!-- Optional JS Files -->
	<script type="text/javascript" src="assets/js/optional/bootstrapValidator.min.js"></script>
	<script type="text/javascript" src="assets/js/optional/toastr.min.js"></script>
	<!-- add optional JS plugin files here -->

	<!-- REQUIRED: User Editable JS Files -->
	<script type="text/javascript" src="assets/js/script.js"></script>
	<!-- add additional User Editable files here -->

	<!-- Demo JS Files -->
	<script type="text/javascript" src="assets/js/files/pages-signin-1.js"></script>
 
</body>
</html>
