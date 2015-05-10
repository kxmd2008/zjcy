package com.zjqy.purchaseplatform.util;

import org.luis.basic.util.BasicUtil;

public class BaseUtil {
	private static final String AUTH_PATH = "auth/";
	
	public static String getAuthPath() {
		return BasicUtil.getWebAppPath() + AUTH_PATH;
	}
}
