<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="../head.jsp"/>
<body>
	<div class="container-fluid">
		<div id="body-container">
			<div class="standalone-page registration-page">
				<div class="standalone-page-logo">
<!-- 					<a href=""> -->
						<img src="assets/images/required/logo-default.png" width="156" height="44" alt="Logo" />
<!-- 					</a> -->
				</div>
				<div class="standalone-page-top-border">
					<span class="border-block bg-color-green"></span>
					<span class="border-block bg-color-orange"></span>
					<span class="border-block bg-color-yellow"></span>
					<span class="border-block bg-color-blue"></span>
					<span class="border-block bg-color-red"></span>
					<span class="border-block bg-color-lime"></span>
					<span class="border-block bg-color-purple"></span>
				</div>
				<div class="standalone-page-block">
					<div class="row">
						<div class="col-xs-12">
							<h2 class="heading">
								<span aria-hidden="true" class="icon icon-user"></span>
								<span class="main-text">
									创建新用户
								</span>
							</h2>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12">
							<form role="form" class="registration-form form-horizontal" method="post" action="index.html">
								<div class="form-group">
									<label for="inputUsername" class="col-sm-3 control-label">用户名</label>
									<div class="col-sm-9">
										<input autocomplete="off" class="form-control" id="inputUsername" placeholder="请输入用户名" type="text" name="username">
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail" class="col-sm-3 control-label">邮箱</label>
									<div class="col-sm-9">
										<input autocomplete="off" class="form-control" id="inputEmail" placeholder="请输入邮箱" type="email" name="email">
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword" class="col-sm-3 control-label">密码</label>
									<div class="col-sm-9">
										<input autocomplete="off" class="form-control" id="inputPassword" placeholder="请输入密码" type="password" name="password">
									</div>
								</div>
								<div class="form-group">
									<label for="inputPasswordConfirm" class="col-sm-3 control-label">确认密码</label>
									<div class="col-sm-9">
										<input autocomplete="off" class="form-control" id="inputPasswordConfirm" placeholder="请输入确认密码" type="password" name="passwordConfirm">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-9">
										<button type="submit" class="btn btn-success">创建用户</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12">
							<div class="change-section">
								<h3 class="heading">已经有用户?</h3>
								<a href="login" class="btn btn-default btn-block">登陆</a>
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
	<!-- add optional JS plugin files here -->

	<!-- REQUIRED: User Editable JS Files -->
	<script type="text/javascript" src="assets/js/script.js"></script>
	<!-- add additional User Editable files here -->

	<!-- Demo JS Files -->
	<script type="text/javascript" src="assets/js/files/pages-signup.js"></script>
 
</body>
</html>
