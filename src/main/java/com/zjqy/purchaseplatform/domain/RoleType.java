package com.zjqy.purchaseplatform.domain;

import java.util.HashSet;
import java.util.Set;

public enum RoleType {
	ADMIN, SUPPLIER, PURCHASE, PM;
	static Set<String> roles = new HashSet<String>();
	static {
		roles.add(ADMIN.name());
		roles.add(SUPPLIER.name());
		roles.add(PURCHASE.name());
		roles.add(PM.name());
	}
	
	public static boolean hasRole(String roleType){
		return roles.contains(roleType);
	}
	
}
