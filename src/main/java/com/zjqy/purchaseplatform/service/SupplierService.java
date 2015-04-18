package com.zjqy.purchaseplatform.service;

import org.luis.basic.domain.IGenericService;
import org.springframework.stereotype.Service;

import com.zjqy.purchaseplatform.domain.Account;
import com.zjqy.purchaseplatform.mybitis.mapper.ServiceFactory;

@Service
public class SupplierService {

	public void createAccount(Account account) {
		accountService.save(account);
	}
	
	public void updateAccount(Account account) {
		accountService.update(account);
	}
	
	
	
	
	
	private IGenericService<Account> accountService = ServiceFactory.getAccountService();
}
