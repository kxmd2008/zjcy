package com.zjqy.purchaseplatform.rest;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		return "supplier/register";
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
}
