<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../head.jsp"/>
<link type="text/css" href="<%=request.getContextPath()%>/assets/css/optional/bootstrap-datetimepicker.min.css" rel="stylesheet" />
<style>
<!--
.block form.product-edit .form-group {
  padding-bottom: 15px;
  border-bottom: 1px dotted #cccccc;
}
.block form.product-edit .form-group label {
  text-align: left;
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
									<a href="productPrice">竞价管理</a>
								</li>
								<li>
									<a href="#">报价</a>
								</li>
							</ol>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<h1>
								<span aria-hidden="true" class="icon icon-dollar"></span>
								<span class="main-text">
									报价
								</span>
							</h1>
						</div>
						<div class="col-md-6">
							<!-- START Main Buttons -->
							<div class="page-heading-controls">
								<a href="#" role="button" class="btn btn-primary" onclick="save();return false;">确认</a>
								<a href="<%=request.getContextPath()%>/supplier/inquiry" role="button" class="btn btn-danger">取消</a>
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
										<form class="form-horizontal product-edit" role="form" id="product-edit" action="<%=request.getContextPath()%>/supplier/saveInquiry" method="post">
											<div class="row">
												<div class="" id="product-edit-tabs-general" style="width: 95%;margin-left: 20px;">
													<div class="form-group">
														<label for="product-name" class="col-sm-2 col-md-2 control-label">
															产品
														</label>
														<div class="col-sm-4">
															${inquiry.materialsName }
														</div>
													</div>
													<div class="form-group">
														<label for="product-name" class="col-sm-2 col-md-2 control-label">
															产品规格
														</label>
														<div class="col-sm-4">
															${inquiry.spec }
														</div>
													</div>
													<div class="form-group">
														<label for="number" class="col-sm-2 col-md-2 control-label">
															数量
														</label>
														<div class="col-sm-4">
															${inquiry.num }
														</div>
													</div>
													<div class="form-group">
														<label for="meta-keywords" class="col-sm-2 col-md-2 control-label">
															单位
														</label>
														<div class="col-sm-4">
															${inquiry.unit }
														</div>
													</div>
													<div class="form-group">
														<label for="meta-keywords" class="col-sm-2 col-md-2 control-label">
															要求到货日期
														</label>
														<div class="col-sm-4">
															${inquiry.requireArrivalDate }
														</div>
													</div>
													<div class="form-group">
														<label for="meta-keywords" class="col-sm-2 col-md-2 control-label">
															单价
															<span class="required-item">*</span>
														</label>
														<div class="col-sm-4">
															<input type="text" class="form-control touchspin-type-1" value="${inquiry.price }" id="price" name="price">
														</div>
													</div>
													<div class="form-group">
														<label for="meta-keywords" class="col-sm-2 col-md-2 control-label">
															货物送达日期
															<span class="required-item">*</span>
														</label>
														<div class="col-sm-4">
															<div class="input-group date form_date" data-date="" data-date-format="yyyy-mm-dd" data-link-field="arrivalDate" data-link-format="yyyy-mm-dd">
											                    <input class="form-control" type="text" value="${inquiry.arrivalDate }" readonly>
											                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
																<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
											                </div>
											                <input type="hidden" id="arrivalDate" value="${inquiry.arrivalDate }" name="arrivalDate"/>
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
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/optional/misc/moment.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/optional/bootstrap-datetimepicker.min.js" charset="UTF-8"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/optional/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
	
	<!-- Optional JS Files -->
	<!-- add optional JS plugin files here -->

	<!-- REQUIRED: User Editable JS Files -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/script.js"></script>
	<!-- add additional User Editable files here -->
 
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/files/productEditSupplier.js"></script>
	<script type="text/javascript">
		function save(){
			$("#product-edit").submit();
		}
	
	</script>
</body>
</html>

