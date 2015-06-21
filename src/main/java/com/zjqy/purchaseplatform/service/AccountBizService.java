package com.zjqy.purchaseplatform.service;

import org.luis.basic.domain.FilterAttributes;
import org.luis.basic.domain.IGenericService;
import org.luis.basic.rest.model.SimpleMessage;
import org.springframework.stereotype.Service;

import com.zjqy.purchaseplatform.domain.Account;
import com.zjqy.purchaseplatform.mybitis.mapper.ServiceFactory;

@Service
public class AccountBizService {

	public Account getByLoginName(String loginName){
		FilterAttributes fa = FilterAttributes.blank().add("loginName", loginName);
		Account account = accountService.findOneByFilter(fa);
		return account;
	}
	
	public SimpleMessage<Object> changePwd(Account newAccount, Account account){
		SimpleMessage<Object> sm = new SimpleMessage<Object>();
		if(!account.getPassword().equals(newAccount.getOldPwd())){
			sm.getHead().setRep_code("100");
			sm.getHead().setRep_message("旧密码不正确！");
			return sm;
		}
		if(!newAccount.getPassword().equals(newAccount.getPasswordConfirm())){
			sm.getHead().setRep_code("100");
			sm.getHead().setRep_message("新密码输入不一致！");
			return sm;
		}
		account.setPassword(newAccount.getPassword());
		accountService.update(account);
		return sm;
	}
	
	
	
	
	private IGenericService<Account> accountService = ServiceFactory.getAccountService();
}
