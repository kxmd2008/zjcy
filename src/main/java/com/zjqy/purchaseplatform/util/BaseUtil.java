package com.zjqy.purchaseplatform.util;

import javax.servlet.http.HttpServletRequest;

import org.luis.basic.util.BasicUtil;

import com.zjqy.purchaseplatform.domain.Account;

public class BaseUtil {
	public static final String AUTH_PATH = "auth/";
	
	public static String getAuthPath() {
		return BasicUtil.getWebAppPath() + AUTH_PATH;
	}
	
	public static void setSessionAttr(HttpServletRequest req, String key,
			Object value) {
		req.getSession().setAttribute(key, value);
	}

	public static Object getSessionAttr(HttpServletRequest req, String key) {
		return req.getSession().getAttribute(key);
	}

	public static void removeSessionAttr(HttpServletRequest req, String key) {
		req.getSession().removeAttribute(key);
	}
	
	public static void setSessionAccount(HttpServletRequest req, Account account) {
		setSessionAttr(req, KEY_SESSION_USER, account);
	}

	public static Account getSessionAccount(HttpServletRequest req) {
		Account account = (Account) req.getSession().getAttribute(KEY_SESSION_USER);
		return account;
	}

	public static String getLoginName(HttpServletRequest req) {
		return (String) req.getSession().getAttribute(KEY_SESSION_USER);
	}
	
	public static final String KEY_SESSION_USER = "LOGIN_ACCOUNT";
	
	public static void main(String[] args) {
		String name = "11.qqq.aaa..aaaaa.txt";
		int index = name.lastIndexOf(".");
		String prefix = name.substring(index);
		System.out.println(prefix);
	}
}
