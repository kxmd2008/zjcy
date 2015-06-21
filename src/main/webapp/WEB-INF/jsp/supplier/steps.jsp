<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="icon" href="assets/images/required/ico/favicon.ico">
	<!-- Fav and touch icons -->
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/images/required/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/images/required/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/images/required/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="assets/images/required/ico/apple-touch-icon-57-precomposed.png">
	<link rel="shortcut icon" href="assets/images/required/ico/favicon.png">

	<title>Circloid - Responsive HTML Admin Template</title>

	<!-- Required CSS Files -->
	<link type="text/css" href="assets/css/required/bootstrap/bootstrap.min.css" rel="stylesheet">
	<link href='http://fonts.useso.com/css?family=Roboto:400,300&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
	<link type="text/css" href="assets/js/required/jquery-ui-1.11.0.custom/jquery-ui.min.css" rel="stylesheet" />
	<link type="text/css" href="assets/js/required/jquery-ui-1.11.0.custom/jquery-ui.structure.min.css" rel="stylesheet" />
	<link type="text/css" href="assets/js/required/jquery-ui-1.11.0.custom/jquery-ui.theme.min.css" rel="stylesheet" />
	<link type="text/css" href="assets/css/required/mCustomScrollbar/jquery.mCustomScrollbar.min.css" rel="stylesheet" />
	<link type="text/css" href="assets/css/required/icheck/all.css" rel="stylesheet" />
	<link type="text/css" href="assets/fonts/metrize-icons/styles-metrize-icons.css" rel="stylesheet">

	<!-- Optional CSS Files -->
	<link type="text/css" href="assets/css/optional/dropzone/basic.css" rel="stylesheet" />
	<link type="text/css" href="assets/css/optional/dropzone/dropzone.css" rel="stylesheet" />
	<link type="text/css" href="assets/css/optional/dropzone/circloid-dropzone.css" rel="stylesheet" />
	
	<link type="text/css" href="assets/css/optional/switchery.min.css" rel="stylesheet" />
	<link type="text/css" href="assets/css/optional/powerange.min.css" rel="stylesheet" />
	<link type="text/css" href="assets/css/optional/jquery.bootstrap-touchspin.min.css" rel="stylesheet" />
	<link type="text/css" href="assets/css/optional/bootstrap-tagsinput.min.css" rel="stylesheet" />
	<link type="text/css" href="assets/css/optional/bootstrap-datetimepicker.min.css" rel="stylesheet" />
	<link type="text/css" href="assets/css/files/form-extras.css" rel="stylesheet" />
	<!-- add CSS files here -->

	<!-- More Required CSS Files -->
	<link type="text/css" href="assets/css/styles-core.css" rel="stylesheet" />
	<link type="text/css" href="assets/css/styles-core-responsive.css" rel="stylesheet" />

	<!-- Demo CSS Files -->
	<link type="text/css" href="assets/css/demo-files/form-file-upload.css" rel="stylesheet" />
	<link type="text/css" href="assets/css/optional/bootstrap-multiselect.min.css" rel="stylesheet" />
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="assets/js/required/misc/ie10-viewport-bug-workaround.js"></script>

	<!--[if IE 7]>
	<link type="text/css" href="assets/css/required/misc/style-ie7.css" rel="stylesheet">
	<script type="text/javascript" src="assets/fonts/lte-ie7.js"></script>
	<![endif]-->
	<!--[if IE 8]>
	<link type="text/css" href="assets/css/required/misc/style-ie8.css" rel="stylesheet">
	<![endif]-->
	<!--[if lte IE 8]>
	<script type="text/javascript" src="assets/css/required/misc/excanvas.min.js"></script>
	<![endif]-->
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="assets/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<div class="container-fluid">
		<div id="body-container">
			<div id="right-column">
				<div class="right-column-content container-fluid">
					<div class="row">
						<div class="col-md-6">
							<h1>
								<span aria-hidden="true" class="icon icon-settings"></span>
								<span class="main-text">
									供应商注册
								</span>
							</h1>
						</div>
						<div class="col-md-6">
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="block">
<!-- 								<div class="block-heading"> -->
<!-- 									<div class="block-controls"> -->
<%-- 										<span aria-hidden="true" class="icon icon-cross icon-size-medium block-control-remove"></span> --%>
<%-- 										<span aria-hidden="true" class="icon icon-arrow-down icon-size-medium block-control-collapse"></span> --%>
<!-- 									</div> -->
<!-- 								</div> -->
								<div class="block-content-outer">
									<div class="block-content-inner">
										<div id="rootwizard-1" class="wizard-container">
											<ul class="nav nav-pills">
												<li>
													<a href="#tab1" data-toggle="tab">
														<span class="icon icon-number-one"></span>
														<span class="main-text">
															<span class="h2">基本信息</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#tab2" data-toggle="tab">
														<span class="icon icon-number-two"></span>
														<span class="main-text">
															<span class="h2">公司资料</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#tab3" data-toggle="tab">
														<span class="icon icon-number-three"></span>
														<span class="main-text">
															<span class="h2">提供产品</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#tab4" data-toggle="tab">
														<span class="icon icon-number-four"></span>
														<span class="main-text">
															<span class="h2">完成</span>
														</span>
													</a>
												</li>
											</ul>
											<div class="progress">
												<div class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100">
													<span class="sr-only"></span>
												</div>
											</div>
											<div class="tab-content">
												<div class="tab-pane" id="tab1">
													<div class="row"  style="margin-top: 15px;">
														<div class="col-md-6">
															<form id="step1" class="registration-form form-horizontal" >
																<div class="form-group">
<!-- 																	<label class="control-label">用户名</label> -->
<!-- 																	<input type="text" class="form-control wizard-stage-1-username" name="username" /> -->
																	<label for="username" class="col-sm-2 control-label">用户名</label>
																	<div class="col-sm-9">
																		<input autocomplete="off" class="form-control wizard-stage-1-username" id="username" type="text" name="username">
																	</div>
																</div>
																
																<div class="form-group">
																	<label  for="email"  class="col-sm-2 control-label">邮箱</label>
																	<div class="col-sm-9">
																		<input type="text" class="form-control wizard-stage-1-email" name="email" id="email"/>
																	</div> 
																</div>
																<div class="form-group">
																	<label for="password" class="col-sm-2 control-label">密码</label>
																	<div class="col-sm-9">
																		<input type="password" class="form-control wizard-stage-1-password" name="password" id="password"/>
																	</div>
																</div>
																<div class="form-group">
																	<label for="passwordConfirm" class="col-sm-2 control-label">密码确认</label>
																	<div class="col-sm-9">
																		<input type="password" class="form-control wizard-stage-1-passwordConfirm" name="passwordConfirm" id="passwordConfirm"/>
																	</div>
																</div>
																<div class="form-group">
																	<label for="qq" class="col-sm-2 control-label">QQ号</label>
																	<div class="col-sm-9">
																		<input type="text" class="form-control wizard-stage-1-qq" name="qq" id="qq"/>
																	</div>
																</div>
																<div class="form-group">
																	<label for="phone" class="col-sm-2 control-label">手机</label>
																	<div class="col-sm-9">
																		<input type="text" class="form-control wizard-stage-1-phone" name="phone" id="phone"/>
																	</div>
																</div>
																<div class="form-group">
																	<label for="contact" class="col-sm-2 control-label">联系人</label>
																	<div class="col-sm-9">
																		<input type="text" class="form-control wizard-stage-1-contact" name="contact" id="contact"/>
																	</div>
																</div>
															</form>
														</div>
													</div>
												</div>
												<div class="tab-pane" id="tab2">
													<div class="row" style="margin-top: 15px;">
														<div class="col-md-7">
<!-- 															<form method="post" id="wizard-stage-1" class="registration-form form-horizontal" > -->
															<div class="registration-form form-horizontal">
																<div class="form-group">
																	<label for="blStart" class="col-sm-3 control-label">营业执照有效期</label>
																	<div class="col-sm-6">
																		<input type="text" class="form-control date" autocomplete="off" id="blEnd" >
																	</div>
																</div>
																<div class="form-group">
																	<label for="blStart" class="col-sm-3 control-label">营业执照附件上传</label>
																	<div class="col-sm-6">
																		<div class="block">
<!-- 																			<div class="block-heading"> -->
<!-- 																				<div class="block-controls"> -->
<%-- 																					<span aria-hidden="true" class="icon icon-arrow-down icon-size-medium block-control-collapse"></span> --%>
<!-- 																				</div> -->
<!-- 																			</div> -->
																			<div class="block-content-outer">
																				<div class="block-content-inner">
																					<form action="auth/upload" class="dropzone" id="bl" style="min-height: 100px;">
																						<div class="fallback">
																							<input name="file" type="file" id="blFile"/>
																							<input type="hidden" name="type" value="bl"/>
																						</div>
																					</form>
																				</div>
																			</div>
																		</div> 
																	</div>
																</div>
																<div class="form-group">
																	<label for="blStart" class="col-sm-3 control-label">税务登记证有效期</label>
																	<div class="col-sm-6">
																		<input type="text" class="form-control date" autocomplete="off" id="trcEnd" >
																	</div>
																</div>
																<div class="form-group">
																	<label for="trcEnd" class="col-sm-3 control-label">税务登记证附件上传</label>
																	<div class="col-sm-6">
																		<div class="block">
<!-- 																			<div class="block-heading"> -->
<!-- 																				<div class="block-controls"> -->
<%-- 																					<span aria-hidden="true" class="icon icon-arrow-down icon-size-medium block-control-collapse"></span> --%>
<!-- 																				</div> -->
<!-- 																			</div> -->
																			<div class="block-content-outer">
																				<div class="block-content-inner">
																					<form action="auth/upload" class="dropzone" id="trc" style="min-height: 100px;">
																						<div class="fallback">
																							<input name="file" type="file" id="trcFile"/>
																							<input type="hidden" name="type" value="trc"/>
																						</div>
																					</form>
																				</div>
																			</div>
																		</div> 
																	</div>
																</div>
																<div class="form-group">
																	<label for="blStart" class="col-sm-3 control-label">组织机构代码有效期</label>
																	<div class="col-sm-6">
																		<input type="text" class="form-control date" autocomplete="off" id="ocEnd" >
																	</div>
																</div>
																<div class="form-group">
																	<label for="ocEnd" class="col-sm-3 control-label">组织机构代码证附件上传</label>
																	<div class="col-sm-6">
																		<div class="block">
<!-- 																			<div class="block-heading"> -->
<!-- 																				<div class="block-controls"> -->
<%-- 																					<span aria-hidden="true" class="icon icon-arrow-down icon-size-medium block-control-collapse"></span> --%>
<!-- 																				</div> -->
<!-- 																			</div> -->
																			<div class="block-content-outer">
																				<div class="block-content-inner">
																					<form action="auth/upload" class="dropzone" id="oc" style="min-height: 100px;">
																						<div class="fallback">
																							<input name="file" type="file" id="ocFile"/>
																							<input type="hidden" name="type" value="oc"/>
																						</div>
																					</form>
																				</div>
																			</div>
																		</div> 
																	</div>
																</div>
<!-- 															</form> -->
															</div>
														</div>
													</div>
												</div>
												<div class="tab-pane" id="tab3">
													<div class="row" style="margin-top: 15px;">
														<div class="col-md-6">
															<div class="form-wizard-review-block">
																<form method="post" id="productForm" class="registration-form form-horizontal" >
																	<div class="form-group">
																		<label for="rawMaterialsTypes" class="col-sm-2 control-label">所共原材料</label>
																		<div class="multiselect col-sm-6">
																			<select id="rawMaterialsTypes" multiple>
																				<optgroup label="薄膜">
																					<option value="BM">薄膜</option>
																				</optgroup>
																				<optgroup label="粒子">
																					<option value="ZGM">珠光膜</option>
																					<option value="FOH">FOH</option>
																					<option value="ZZ">纸张</option>
																					<option value="KBOPP">KBOPP</option>
																					<option value="KNY">KNY</option>
																					<option value="KPET">KPET</option>
																					<option value="KYOPP">KYOPP</option>
																					<option value="PA">PA</option>
																					<option value="AL">AL</option>
																					<option value="PET">PET</option>
																					<option value="BOPP">BOPP</option>
																					<option value="YBOPP">YBOPP</option>
																					<option value="VMPET">VMPET</option>
																					<option value="VMCPP">VMCPP</option>
																					<option value="VMOPP">VMOPP</option>
																				</optgroup>
																				<optgroup label="油墨">
																					<option value="YM">油墨</option>
																				</optgroup>
																				<optgroup label="胶水">
																					<option value="JS">胶水</option>
																				</optgroup>
																				<optgroup label="溶剂">
																					<option value="RJ">溶剂</option>
																				</optgroup>
																				<optgroup label="包材辅料">
																					<option value="BCFL">包材辅料</option>
																				</optgroup>
																			</select>
																		</div>
																	</div>
																	<div class="form-group">
																		<label for="supplierType" class="col-sm-2 control-label">供应商类型</label>
																		<div class="col-sm-6">
																			<select id="supplierType" class="form-control" onchange="supplierTypeChange(this.value)">
																				<option value=""></option>
																				<option value="1">贸易商</option>
																				<option value="2">生产企业</option>
																			</select>
																		</div>
																	</div>
																
																</form>
															</div>
														</div>
													</div>
												</div>
												<div class="tab-pane" id="tab4">
													<div class="row">
														<div class="col-md-6">
															<h2>完成注册，等待审核!</h2>
<!-- 															<p>Thanks for filling out this form. We'll get back to you shortly.</p> -->
														</div>
													</div>
												</div>
												<ul class="pager wizard">
<!-- 													<li class="previous first" style="display:none;"><a href="#">First</a></li> -->
													<li class="previous"><a href="#">上一步</a></li>
<!-- 													<li class="next last" style="display:none;"><a href="#">Last</a></li> -->
													<li class="next"><a href="#">下一步</a></li>
												</ul>
											</div>	
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="footer-container">
					<div class="footer-content">
						&copy; <a href="#?ref=Base5Builder"></a>  <span style="color:#FF0000;">&#10084;</span> <a href="" target="_blank" style="font-weight:300;color:#ffffff;background:#1d1d1d;padding:0 3px;"><span style="color:#ffa733;font-weight:bold"></span></a>
					</div>
				</div>
			</div>
		</div>
	</div><!-- /.container -->
	
	<input type="hidden" id="loginName"> 
	<input type="hidden" id="accountId"> 
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
	<!-- <script type="text/javascript" src="assets/js/optional/bootstrapValidator-language/languagecode_COUNTRYCODE.js"></script> -->
	<script type="text/javascript" src="assets/js/optional/jquery.bootstrap.wizard.min.js"></script>
	<script type="text/javascript" src="assets/js/optional/circloid-functions-optional.js"></script>
	<!-- add optional JS plugin files here -->

	<!-- REQUIRED: User Editable JS Files -->
	<script type="text/javascript" src="assets/js/script.js"></script>
	<script type="text/javascript" src="assets/js/files/form-wizard.js"></script>

	<!-- Optional JS Files -->
	<script type="text/javascript" src="assets/js/optional/dropzone.min.js"></script>
	<!-- add optional JS plugin files here -->

	<!-- add additional User Editable files here -->

	<!-- Demo JS Files -->
	<script type="text/javascript" src="assets/js/optional/jquery.mask.min.js"></script>
	<script type="text/javascript" src="assets/js/optional/switchery.min.js"></script>
	<script type="text/javascript" src="assets/js/optional/powerange.min.js"></script>
	<script type="text/javascript" src="assets/js/optional/jquery.bootstrap-touchspin.min.js"></script>
	<script type="text/javascript" src="assets/js/optional/bootstrap-tagsinput.min.js"></script>
	<script type="text/javascript" src="assets/js/optional/misc/typeahead.bundle.min.js"></script>
	<script type="text/javascript" src="assets/js/optional/misc/moment.js"></script>
	<script type="text/javascript" src="assets/js/files/form-file-upload.js"></script>
	<script type="text/javascript" src="assets/js/optional/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript" src="assets/js/files/register.js"></script>
	<script type="text/javascript" src="assets/js/optional/bootstrap-multiselect.min.js"></script>
	
	
</body>
</html>
