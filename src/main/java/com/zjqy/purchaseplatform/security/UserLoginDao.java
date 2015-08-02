package com.zjqy.purchaseplatform.security;

import java.util.ArrayList;

import org.luis.basic.domain.FilterAttributes;
import org.luis.basic.domain.IGenericService;
import org.springframework.security.core.GrantedAuthority;

import com.zjqy.purchaseplatform.domain.Account;
import com.zjqy.purchaseplatform.mybitis.mapper.ServiceFactory;

public class UserLoginDao {
	
	static IGenericService<Account> service = ServiceFactory.getAccountService();
	public static UserLogin findByEmail(String name) {
		FilterAttributes fa = FilterAttributes.blank().add("email", name);
		Account account = service.findOneByFilter(fa);
		
		UserLogin ul = new UserLogin(account.getLoginName(), account.getPassword(), true, true, true, true,
				new ArrayList<GrantedAuthority>());
		ul.setAccount(account);
		ul.setId(account.getId());
		ul.setEmail(account.getEmail());
		ul.setMobile(account.getPhone());
		ul.setUserType(account.getType());
		return ul;
	}
	
	public static UserLogin findByNick(String name) {
		FilterAttributes fa = FilterAttributes.blank().add("loginName", name);
		Account account = service.findOneByFilter(fa);
		
		UserLogin ul = new UserLogin(account.getLoginName(), account.getPassword(), true, true, true, true,
				new ArrayList<GrantedAuthority>());
		ul.setAccount(account);
		ul.setId(account.getId());
		ul.setEmail(account.getEmail());
		ul.setMobile(account.getPhone());
		ul.setUserType(account.getType());
		
		return ul;
	}

}
