<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="../head.jsp"/>
<link type="text/css" href="<%=request.getContextPath()%>/assets/css/optional/bootstrap-multiselect.min.css" rel="stylesheet" />
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
									<a href="productPrice">报价管理</a>
								</li>
							</ol>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<h1>
								<span aria-hidden="true" class="icon icon-dollar"></span>
								<span class="main-text">
									${title }
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
								<div class="block-content-outer">
									<div class="block-content-inner">
										<form class="form-horizontal product-edit" role="form">
<!-- 											<ul id="product-edit-tabs" class="nav nav-tabs tabs-alt-1"> -->
<!-- 												<li class="active"><a href="#product-edit-tabs-general" data-toggle="tab">General</a></li> -->
<!-- 												<li><a href="#product-edit-tabs-data" data-toggle="tab">Data</a></li> -->
<!-- 												<li><a href="#product-edit-tabs-more" data-toggle="tab">More Sample Fields</a></li> -->
<!-- 											</ul> -->
											<div class="row">
												<div class="" id="product-edit-tabs-general" style="width: 95%;margin-left: 20px;">
													<div class="form-group">
														<label for="product-name" class="col-sm-2 col-md-2 control-label">
															产品规格
															<span class="required-item">*</span>
														</label>
														<div class="col-sm-4">
															<input type="text" class="form-control" id="product-name" value=''>
														</div>
													</div>
													<div class="form-group">
														<label for="number" class="col-sm-2 col-md-2 control-label">
															数量
															<span class="required-item">*</span>
														</label>
														<div class="col-sm-4">
															<input type="text" class="form-control touchspin-type-1" value="0" id="number" >
														</div>
													</div>
													<div class="form-group">
														<label for="meta-keywords" class="col-sm-2 col-md-2 control-label">
															单位
															<span class="required-item">*</span>
														</label>
														<div class="col-sm-4">
															<select id="unit" class="form-control">
																<option value="t">吨
																<option value="kg">公斤
																<option value="z1">只
																<option value="z2">支
															</select>
														</div>
													</div>
													<div class="form-group">
														<label for="meta-keywords" class="col-sm-2 col-md-2 control-label">
															发送公司
															<span class="required-item">*</span>
														</label>
														<div class="col-sm-4">
															<select multiple data-role="tagsinput" class="form-control input-tags-1" id="companys">
																<option value="Amsterdam">公司1</option>
																<option value="Amsterdam">公司2</option>
																<option value="Amsterdam">公司3</option>
																<option value="Amsterdam">公司4</option>
															</select>
														</div>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
							<!-- END Block: Product Edit -->
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
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/optional/bootstrap-multiselect.min.js"></script>
	<!-- Optional JS Files -->
	<!-- add optional JS plugin files here -->

	<!-- REQUIRED: User Editable JS Files -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/script.js"></script>
	<!-- add additional User Editable files here -->
 
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/files/productEdit.js"></script>
</body>
</html>

