<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
						<div class="col-xs-12">
							<ol class="breadcrumb">
								<li>
									<a href="#">首页</a>
								</li>
								<li>
									<a href="#">竞价管理</a>
								</li>
							</ol>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<h1>
								<span aria-hidden="true" class="icon icon-dollar"></span>
								<span class="main-text">
									竞价查询
								</span>
							</h1>
						</div>
						<div class="col-md-6">
							<!-- START Main Buttons -->
							<!-- END Main Buttons -->
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">

							<!-- START Block: Product List -->
							<div class="block">
<!-- 								<div class="block-heading"> -->
<!-- 									<div class="main-text h2"> -->
<!-- 										Products -->
<!-- 									</div> -->
<!-- 								</div> -->
								<div class="block-content-outer">
									<div class="block-content-inner">
										<div class="table-responsive">
											<form role="form">
												<table class="table table-condensed table-striped table-bordered table-hover">
													<thead>
														<tr>
															<th class="text-center col-xs-1">产品名称</th>
															<th class="text-center col-xs-1">产品规格</th>
															<th class="text-center col-xs-1">数量</th>
															<th class="text-center col-xs-1">单位</th>
															<th class="text-center col-xs-1">单价</th>
															<th class="text-center col-xs-2">要求交货日期</th>
															<th class="text-center col-xs-2">供应商确认到货日期</th>
															<th class="text-center col-xs-2">单据</th>
															<th class="text-center col-xs-2">操作</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach items="${ inquirys}" var="item">
															<tr>
																<td class="text-center">
<!-- 																	<img src="test-data/ecommerce-product-list/images/htcthd.jpg" width="40" height="40" class="list-thumbnail" alt="" /> -->
																	${item.materialsName }
																</td>
																<td>${item.spec }</td>
																<td>${item.num }</td>
																<td class="text-right">${item.unit }</td>
																<td class="text-right">
																	<span class="highlight-color-green-text">${item.price }</span>
																</td>
																<td class="text-right">${item.requireArrivalDate }</td>
																<td class="text-right">${item.arrivalDate }</td>
																<td class="text-right"></td>
																<td class="text-right">
																	<a href="inquiry/${item.id }" role="button" class="btn btn-primary">竞价</a>
																</td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
												<div class="help-text">Showing 1 - 20 of 98</div>
												<ul class="pagination">
													<li class="disabled"><a href="#">&laquo;</a></li>
													<li class="active"><a href="#"><span>1 <span class="sr-only">(current)</span></span></a></li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#">5</a></li>
													<li><a href="#">&raquo;</a></li>
												</ul>
											</form>
										</div>
									</div>
								</div>
							</div>
							<!-- END Block: Product List -->
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

