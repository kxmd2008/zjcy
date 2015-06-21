<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="../head.jsp"/>
<style>
<!--
.block form.product-edit .form-group {
  padding-bottom: 15px;
  border-bottom: 1px dotted #cccccc;
}
.block form.product-edit .form-group label {
  text-align: left;
}
.product-image-preview {
  text-align: center;
  border: 1px solid #cccccc;
  padding: 10px 10px 0;
}
.product-image-preview p {
  border-top: 1px solid #cccccc;
  padding-top: 6px;
}
-->
</style>
<!-- 产品报价 -->
<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp"/>
		<div id="body-container">
			<jsp:include page="../menu.jsp"/>
			<div id="right-column">
				<div class="right-column-content container-fluid">
					<div class="row">
						<div class="col-xs-12">
							<ol class="breadcrumb">
								<li>
									<a href="#">首页</a>
								</li>
								<li>
									<a href="#">修改密码</a>
								</li>
							</ol>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<h1>
								<span aria-hidden="true" class="icon icon-dollar"></span>
								<span class="main-text">
									修改密码
								</span>
							</h1>
						</div>
						<div class="col-md-6">
							<!-- START Main Buttons -->
							<div class="page-heading-controls">
								<a href="ecommerce-product-list.html" role="button" class="btn btn-primary">保存</a>
								<a href="productPrice" role="button" class="btn btn-danger">取消</a>
							</div>
							<!-- END Main Buttons -->
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<!-- START Block: Product Edit -->
							<div class="block">
								<form class="registration-form form-horizontal" role="form" action="<%=request.getContextPath()%>/mgt/changePwd">
								<div class="modal-body">
									<div class="block-content-outer" style="margin-left: 18%;">
										<div class="block-content-inner">
												<div class="form-group">
													<label for="oldPassword" class="col-sm-3 control-label">旧密码</label>
													<div class="col-sm-6">
														<input type="password" class="form-control" id="oldPassword" placeholder="旧密码" name="oldPwd">
													</div>
												</div>
												<div class="form-group">
													<label for="password" class="col-sm-3 control-label">新密码</label>
													<div class="col-sm-6">
														<input type="password" class="form-control" id="password" placeholder="新密码" name="password">
													</div>
												</div>
												<div class="form-group">
													<label for="passwordConfirm" class="col-sm-3 control-label">确认新密码</label>
													<div class="col-sm-6">
														<input type="password" class="form-control" id="passwordConfirm" placeholder="确认新密码" name="passwordConfirm">
													</div>
												</div>
											
										</div>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
									<button type="button" class="btn btn-primary">保存</button>
								</div>
								</form>
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


	<!-- REQUIRED: User Editable JS Files -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/changePwd.js"></script>
	<!-- add additional User Editable files here -->
 
</body>
</html>

