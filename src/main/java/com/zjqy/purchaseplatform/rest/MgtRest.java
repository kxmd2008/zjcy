package com.zjqy.purchaseplatform.rest;

import javax.servlet.http.HttpServletRequest;

import org.luis.basic.rest.model.SimpleMessage;
import org.luis.basic.util.SpringContextFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zjqy.purchaseplatform.domain.Account;
import com.zjqy.purchaseplatform.service.AccountBizService;
import com.zjqy.purchaseplatform.util.BaseUtil;

@Controller()
@RequestMapping("/mgt")
public class MgtRest {
	
	@RequestMapping(value = "changePwd", method = RequestMethod.GET)
	public String toChangePwd(HttpServletRequest req, ModelMap map){
		return "common/changePwd";
	}
	
	@RequestMapping(value = "updPassword", method = RequestMethod.POST)
	@ResponseBody
	public SimpleMessage<Object> changePwd(HttpServletRequest req, ModelMap map, Account account){
		Account sessionAccount = BaseUtil.getSessionAccount(req);
		SimpleMessage<Object> sm = accountBizService.changePwd(account, sessionAccount);
		return sm;
	}
	
	private AccountBizService accountBizService = SpringContextFactory
			.getSpringBean(AccountBizService.class);
}
