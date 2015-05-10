package com.zjqy.purchaseplatform.mybitis.mapper;

import org.luis.basic.domain.BaseServiceBuilder;
import org.luis.basic.domain.IGenericService;

import com.zjqy.purchaseplatform.domain.Account;
import com.zjqy.purchaseplatform.domain.CompanyInfo;

public class ServiceFactory {

	private static IGenericService<Account> accountService;
	
	public static IGenericService<Account> getAccountService(){
		if(accountService == null){
			accountService = BaseServiceBuilder.build(Account.class);
		}
		return accountService;
	}
	
	private static IGenericService<CompanyInfo> companyService;
	
	public static IGenericService<CompanyInfo> getCompanyService(){
		if(companyService == null){
			companyService = BaseServiceBuilder.build(CompanyInfo.class);
		}
		return companyService;
	}
}
