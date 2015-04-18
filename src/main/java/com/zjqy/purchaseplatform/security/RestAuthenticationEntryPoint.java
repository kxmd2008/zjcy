package com.zjqy.purchaseplatform.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;

@Component("loginUrlEntryPoint")
public class RestAuthenticationEntryPoint implements AuthenticationEntryPoint {

	@Override
	public void commence(HttpServletRequest request,
			HttpServletResponse response, AuthenticationException authException)
			throws IOException, ServletException {
		String targetUrl = "";
		String url = request.getRequestURI();
		if (url.endsWith(".js") || url.endsWith(".css") || url.endsWith(".png")
				|| url.endsWith(".jpg") || url.endsWith(".gif") || url.endsWith(".jpeg")) {
			return;
		}
		targetUrl = request.getContextPath() + targetUrl;
		response.sendRedirect(targetUrl);
	}

}
