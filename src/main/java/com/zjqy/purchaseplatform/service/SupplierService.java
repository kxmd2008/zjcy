package com.zjqy.purchaseplatform.service;

import org.luis.basic.domain.IGenericService;
import org.luis.basic.util.Encrypt;
import org.springframework.stereotype.Service;

import com.zjqy.purchaseplatform.domain.Account;
import com.zjqy.purchaseplatform.domain.CompanyInfo;
import com.zjqy.purchaseplatform.mybitis.mapper.ServiceFactory;

@Service
public class SupplierService {

	public void createAccount(Account account) {
		account.setPassword(Encrypt.init(account.getPassword()).md5().genrate());
		IGenericService<Account> accountService = ServiceFactory.getAccountService();
		accountService.save(account);
	}
	
	public void updateAccount(Account account) {
		IGenericService<Account> accountService = ServiceFactory.getAccountService();
		accountService.update(account);
	}
	
	public void createCompany(CompanyInfo bean) {
		IGenericService<CompanyInfo> service = ServiceFactory.getCompanyService();
		service.save(bean);
	}
	
	public void updateCompany(CompanyInfo bean) {
		IGenericService<CompanyInfo> service = ServiceFactory.getCompanyService();
		service.update(bean);
	}
	
//	private IGenericService<Account> accountService = ServiceFactory.getAccountService();
}
