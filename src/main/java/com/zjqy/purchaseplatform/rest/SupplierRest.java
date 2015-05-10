package com.zjqy.purchaseplatform.rest;

import javax.servlet.http.HttpServletRequest;

import org.luis.basic.rest.model.SimpleMessage;
import org.luis.basic.util.SpringContextFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zjqy.purchaseplatform.domain.Account;
import com.zjqy.purchaseplatform.domain.CompanyInfo;
import com.zjqy.purchaseplatform.service.SupplierService;

@Controller
public class SupplierRest {

	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(HttpServletRequest request) {
		return "index";
	}
	
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register(HttpServletRequest request) {
		return "supplier/steps";
	}
	
	@RequestMapping(value = "create", method = RequestMethod.GET)
	public String createAccount(HttpServletRequest request) {
		return "supplier/register";
	}
	
	@RequestMapping(value = "forgotPassword", method = RequestMethod.GET)
	public String forgotPassword(HttpServletRequest request) {
		return "supplier/forgotPassword";
	}
	
	@RequestMapping(value = "supplier", method = RequestMethod.GET)
	public String supplier(HttpServletRequest request) {
		return "supplier/supplier";
	}
	
	
	
	/////////////////////////////////////////////////
	@RequestMapping(value = "saveBaseInfo", method = RequestMethod.POST)
	@ResponseBody
	public SimpleMessage<Object> step1(Account account){
		account.setType(Account.TYPE_PURCHASE);
		supplierService.createAccount(account);
		SimpleMessage<Object> sm = new SimpleMessage<Object>();
		return sm;
	}
	
	@RequestMapping(value = "saveCompanyInfo", method = RequestMethod.POST)
	@ResponseBody
	public SimpleMessage<Object> step2(CompanyInfo ci){
		supplierService.createCompany(ci);
		SimpleMessage<Object> sm = new SimpleMessage<Object>();
		return sm;
	}
	
	@RequestMapping(value = "saveProduct", method = RequestMethod.POST)
	@ResponseBody
	public SimpleMessage<Object> step3(CompanyInfo ci){
		SimpleMessage<Object> sm = new SimpleMessage<Object>();
		return sm;
	}
	
	
	
	private SupplierService supplierService = SpringContextFactory
			.getSpringBean(SupplierService.class);
}
