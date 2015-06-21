<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<div id="left-column" class=""> <!-- NOTE TO READER: Accepts the following class(es) "menu-icon-only", "fixed" class -->
	<div id="mainnav">
		<ul class="mainnav"> <!-- NOTE TO READER: Accepts the following class(es) "animate" class -->
			<li class="menu-item-top">
				<a href="#" class="top">
					<span class="main-menu-icon">
						<span aria-hidden="true" class="icon icon-block-menu"></span>
					</span>
					<span class="main-menu-text">系统管理</span>
				</a>
				<ul>
					<li><a href="#">帐号管理</a></li>
					<li><a href="#">角色管理</a></li>
				</ul>
			</li>
			<li class="menu-item-top">
				<a href="#" class="top">
					<span class="main-menu-icon">
						<span aria-hidden="true" class="icon icon-documents"></span>
					</span>
					<span class="badge pull-right-corner hidden-collapsed highlight-color-green">7</span>
					<span class="main-menu-text">采购</span>
				</a>
				<ul>
					<li><a href="<%=request.getContextPath()%>/purchase/productPrice">报价管理</a></li>
					<li><a href="#">供应商管理</a></li>
				</ul>
			</li>
			
		</ul>
	</div>
</div>

