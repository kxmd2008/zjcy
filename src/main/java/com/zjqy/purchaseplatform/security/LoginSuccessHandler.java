package com.zjqy.purchaseplatform.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.luis.basic.domain.FilterAttributes;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.util.StringUtils;

import com.zjqy.purchaseplatform.domain.CompanyInfo;
import com.zjqy.purchaseplatform.domain.RoleType;
import com.zjqy.purchaseplatform.mybitis.mapper.ServiceFactory;

public class LoginSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {

	private RequestCache requestCache = new HttpSessionRequestCache();

	public void setRequestCache(RequestCache requestCache) {
		this.requestCache = requestCache;
	}

	private final Logger logger = Logger.getLogger(LoginSuccessHandler.class);

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request,
			HttpServletResponse response, Authentication authentication)
			throws IOException, ServletException {

		WrappedUserLogin userDetails = (WrappedUserLogin) authentication
				.getPrincipal();
		UserLogin userLogin = userDetails.getUserLogin();

		HttpSession session = request.getSession();
		session.setAttribute("userLogin", userLogin);
		String userType = userLogin.getUserType();
		if(RoleType.SUPPLIER.name().equals(userType)){
			FilterAttributes fa = FilterAttributes.blank().add("accountId", userLogin.getId());
			CompanyInfo company = ServiceFactory.getCompanyService().findOneByFilter(fa);
			session.setAttribute("company", company);
		}
		// Account dbUser =
		// accountService.getAccount(userDetails.getUsername());
		// session.setAttribute("custAccount", dbUser);

		// 获取登录之前的访问地址
		SavedRequest savedRequest = requestCache.getRequest(request, response);
		System.out.println("savedRequest is  " + savedRequest);
		if (savedRequest == null) {
			// 用户判断是否要使用上次通过session里缓存的回调URL地址
			int flag = 0;
			// 通过提交登录请求传递需要回调的URL callCustomRediretUrl
			if (request.getSession().getAttribute("callCustomRediretUrl") != null
					&& !"".equals(request.getSession().getAttribute(
							"callCustomRediretUrl"))) {
				String url = String.valueOf(request.getSession().getAttribute(
						"callCustomRediretUrl"));
				// 若session 存在则需要使用自定义回调的URL 而不是缓存的URL
				super.setDefaultTargetUrl(url);
				super.setAlwaysUseDefaultTargetUrl(true);
				flag = 1;
				request.getSession().setAttribute("callCustomRediretUrl", "");
			}
			// 重设置默认URL为主页地址
			if (flag == 0) {
				// super.setDefaultTargetUrl(LOCAL_SERVER_URL);
				super.setDefaultTargetUrl(targetUrl(userLogin));
			}

			super.onAuthenticationSuccess(request, response, authentication);
			return;
		}
		// targetUrlParameter 是否存在
		String targetUrlParameter = getTargetUrlParameter();
		if (isAlwaysUseDefaultTargetUrl()
				|| (targetUrlParameter != null && StringUtils.hasText(request
						.getParameter(targetUrlParameter)))) {
			requestCache.removeRequest(request, response);
			super.setAlwaysUseDefaultTargetUrl(false);
			super.setDefaultTargetUrl(targetUrl(userLogin));
			super.onAuthenticationSuccess(request, response, authentication);
			return;
		}
		// 清除属性
		clearAuthenticationAttributes(request);
		// Use the DefaultSavedRequest URL
		String targetUrl = savedRequest.getRedirectUrl();
		logger.debug("Redirecting to DefaultSavedRequest Url: " + targetUrl);
		if (targetUrl != null && "".equals(targetUrl)) {
			targetUrl = targetUrl(userLogin);
		}
		getRedirectStrategy().sendRedirect(request, response, targetUrl);

	}

	private String targetUrl(UserLogin userLogin) {
		String targetUrl = "/";
		if (RoleType.ADMIN.name().equals(userLogin.getUserType())) {
			targetUrl = getAdminUrl();
		} else if (RoleType.PURCHASE.name().equals(userLogin.getUserType())
				|| RoleType.PM.name().equals(userLogin.getUserType())) {
			targetUrl = getPurchaseUrl();
		} else if (RoleType.SUPPLIER.name().equals(userLogin.getUserType())) {
			targetUrl = getSupplierUrl();
		}
		return targetUrl;
	}

	private String adminUrl;
	private String purchaseUrl;
	private String supplierUrl;

	public String getAdminUrl() {
		return adminUrl;
	}

	public void setAdminUrl(String adminUrl) {
		this.adminUrl = adminUrl;
	}

	public String getPurchaseUrl() {
		return purchaseUrl;
	}

	public void setPurchaseUrl(String purchaseUrl) {
		this.purchaseUrl = purchaseUrl;
	}

	public String getSupplierUrl() {
		return supplierUrl;
	}

	public void setSupplierUrl(String supplierUrl) {
		this.supplierUrl = supplierUrl;
	}

}
