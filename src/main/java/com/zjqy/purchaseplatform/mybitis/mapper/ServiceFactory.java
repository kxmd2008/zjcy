package com.zjqy.purchaseplatform.mybitis.mapper;

import org.luis.basic.domain.BaseServiceBuilder;
import org.luis.basic.domain.IGenericService;

import com.zjqy.purchaseplatform.domain.Account;

public class ServiceFactory {

	private static IGenericService<Account> accountService;
	
	
	public static IGenericService<Account> getAccountService(){
		if(accountService == null){
			accountService = BaseServiceBuilder.build(Account.class);
		}
		return accountService;
	}
}
