<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>  
<!-- START Header Container -->
<div id="header-container">
	<div class="header-bar navbar navbar-inverse" role="navigation"> <!-- NOTE TO READER: Accepts the following class(es) "navbar-fixed-top" class -->
		<div class="container">
			<div class="navbar-header">
				<!-- START logo -->
				<div class="logo">
					<a href="#">
						<img class="default-logo" src="<%=request.getContextPath()%>/assets/images/required/logo-default.png" width="156" height="44" alt="Logo" />
						<img class="small-logo" src="<%=request.getContextPath()%>/assets/images/required/logo-small.png" width="48" height="44" alt="Logo" />
					</a>
				</div>
				<!-- END logo -->
				
				<div style="float: left; margin: 9px 15px 0 2px;">
					<h3 style="color: white;font-weight: bold;">
					<s:message code="system.title"/>
					</h3>
				</div>
				
				<!-- START Mobile Menu Toggle -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<!-- END Mobile Menu Toggle -->
				<c:if test="${!empty userLogin}">
				<!-- START Header Info Container -->
				<div class="header-info">
					<!-- START Header User Profile -->
					<div class="header-profile"> <!-- NOTE TO READER: Accepts the following class(es) "animate" class -->
						<ul class="header-profile-menu">
							<li>
								<a href="#" class="top">
									<span class="header-profile-menu-icon">
										<img class="list-thumbnail" src="<%=request.getContextPath()%>/assets/images/required/profile/profile-pic-4.jpg" width="39" height="39" alt="profile-pic-4" />
									</span>
									<span class="main-menu-text">
										${userLogin.username }
										<i class="icon icon-arrow-down-bold-round icon-size-small"></i>
									</span>
								</a>
								<ul>
									<li>
										<a href="<%=request.getContextPath()%>/mgt/toChangePwd" >
											<span aria-hidden="true" class="icon icon-user"></span>
											<span class="main-text">修改密码</span>
										</a>
									</li>
									<li>
										<a href="<%=request.getContextPath()%>/logout">
<!-- 										<a href="javascript:logout();"> -->
											<span aria-hidden="true" class="icon icon-arrow-curve-right"></span>
											<span class="main-text">退出</span>
										</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- END Header User Profile -->

					<!-- START Header Notification Alert -->
					<div class="header-notifications"> <!-- NOTE TO READER: Accepts the following class(es) "animate" class -->
						<ul class="header-notifications-inner">
							<li class="notifications-alert-info notifications-alert notifications-alert-mobile">
								<a href="#">
									<span aria-hidden="true" class="icon icon-three-points"></span>
								</a>
							</li>
							<li class="notifications-alert-info notifications-alert">
								<a href="#">
									<span aria-hidden="true" class="icon icon-email-download"></span>
								</a>
								<span class="badge badge-bordered pull-bottom-right">4</span>
								<ul>
									<li class="notifications-alert-desc">
										<p>You have 4 new messages</p>
									</li>
									<li class="notifications-alert-block">
										<ul class="notifications-alert-list">
											<li class="notifications-alert-list-item">
												<a href="#">
													<span class="notifications-alert-list-text">
														<span class="notifications-alert-list-image">
															<img class="list-thumbnail" src="<%=request.getContextPath()%>/assets/images/required/profile/profile-pic-6.jpg" width="40" height="40" alt="profile-pic-6" />
														</span>
														<span class="notifications-alert-list-header">Samantha Carter</span>
														Re: Updated proposal. Approved.
														<span class="timestamp">Just now</span>
													</span>
												</a>
											</li>
											<li class="notifications-alert-list-item">
												<a href="#">
													<span class="notifications-alert-list-text">
														<span class="notifications-alert-list-image">
															<img class="list-thumbnail" src="<%=request.getContextPath()%>/assets/images/required/profile/profile-pic-3.jpg" width="40" height="40" alt="profile-pic-3" />
														</span>
														<span class="notifications-alert-list-header">Daniel Jackson</span>
														Meeting minutes attached
														<span class="timestamp">2 minutes ago</span>
													</span>
												</a>
											</li>
											<li class="notifications-alert-list-item">
												<a href="#">
													<span class="notifications-alert-list-text">
														<span class="notifications-alert-list-image">
															<img class="list-thumbnail" src="<%=request.getContextPath()%>/assets/images/required/profile/profile-pic-2.jpg" width="40" height="40" alt="profile-pic-2" />
														</span>
														<span class="notifications-alert-list-header">Sally Skyler</span>
														Bug Report #2
														<span class="timestamp">2 hours ago</span>
													</span>
												</a>
											</li>
											<li class="notifications-alert-list-item">
												<a href="#">
													<span class="notifications-alert-list-text">
														<span class="notifications-alert-list-image">
															<img class="list-thumbnail" src="<%=request.getContextPath()%>/assets/images/required/profile/profile-pic-5.jpg" width="40" height="40" alt="profile-pic-5" />
														</span>
														<span class="notifications-alert-list-header">Teal'c Jafar</span>
														Interesting Sales Tips
														<span class="timestamp">5 hours ago</span>
													</span>
												</a>
											</li>
										</ul>
									</li>
									<li class="notifications-alert-more">
										<p>
											<a href="#">See all messages<i class="icon icon-arrow-right-bold-round icon-size-small"></i></a>
										</p>
									</li>
								</ul>
							</li>
							<li class="notifications-alert-info notifications-alert">
								<a href="#">
									<span aria-hidden="true" class="icon icon-info"></span>
								</a>
								<span class="badge badge-bordered pull-bottom-right">5</span>
								<ul>
									<li class="notifications-alert-desc">
										<p>You have 5 new notifications</p>
									</li>
									<li class="notifications-alert-block">
										<ul class="notifications-alert-list">
											<li class="notifications-alert-list-item">
												<a href="#">
													<span class="notifications-alert-list-text">
														<span class="notifications-alert-list-icon">
															<span class="icon icon-settings"></span>
														</span>
														System upgrade complete
														<span class="timestamp">Just now</span>
													</span>
												</a>
											</li>
											<li class="notifications-alert-list-item">
												<a href="#">
													<span class="notifications-alert-list-text">
														<span class="notifications-alert-list-icon">
															<span class="icon icon-user-add"></span>
														</span>
														<span class="main-text">
															Bulk user email import
															<span class="progress">
																<span class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
																	<span class="sr-only">40% Complete (success)</span>
																</span>
															</span>
														</span>
														<span class="timestamp">4 minutes ago</span>
													</span>
												</a>
											</li>
											<li class="notifications-alert-list-item">
												<a href="#">
													<span class="notifications-alert-list-text">
														<span class="notifications-alert-list-icon">
															<span class="icon icon-info"></span>
														</span>
														You now have a total of 2500 registered users.
														<span class="timestamp">5 minutes ago</span>
													</span>
												</a>
											</li>
											<li class="notifications-alert-list-item">
												<a href="#">
													<span class="notifications-alert-list-text">
														<span class="notifications-alert-list-icon">
															<span class="icon icon-sos"></span>
														</span>
														General maintenance
														<span class="progress">
															<span class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
																<span class="sr-only">60% Complete (success)</span>
															</span>
														</span>
														<span class="timestamp">10 minutes ago</span>
													</span>
												</a>
											</li>
											<li class="notifications-alert-list-item">
												<a href="#">
													<span class="notifications-alert-list-text">
														<span class="notifications-alert-list-icon">
															<span class="icon icon-user-add"></span>
														</span>
														New user registration
														<span class="timestamp">30 minutes ago</span>
													</span>
												</a>
											</li>
											<li class="notifications-alert-list-item">
												<a href="#">
													<span class="notifications-alert-list-text">
														<span class="notifications-alert-list-icon">
															<span class="icon icon-comments"></span>
														</span>
														You have a new chat message
														<span class="timestamp">1 hour ago</span>
													</span>
												</a>
											</li>
											<li class="notifications-alert-list-item">
												<a href="#">
													<span class="notifications-alert-list-text">
														<span class="notifications-alert-list-icon">
															<span class="icon icon-pin"></span>
														</span>
														New location added
														<span class="timestamp">Yesterday</span>
													</span>
												</a>
											</li>
										</ul>
									</li>
									<li class="notifications-alert-more">
										<p>
											<a href="#">See all notifications<i class="icon icon-arrow-right-bold-round icon-size-small"></i></a>
										</p>
									</li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- END Header Notification Alert -->

				</div>
				<!-- END Header Info Container -->
				</c:if>
			</div>
		</div>
	</div>
</div>
<!-- END Header Container -->
