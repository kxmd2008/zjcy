package com.zjqy.purchaseplatform.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SecurityServiceImpl {

	@RequestMapping(value = "/authorizedFail", method = RequestMethod.GET)
	@ResponseBody
	public IMReport authorizedFailure(HttpServletRequest request,
			HttpServletResponse response) {
		IMReport ir = new IMReport();
		ir.setO_status("401");
		ir.setO_retmsg("权限验证失败 !");
		return ir;
	}
	
	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	@ResponseBody
	public IMReport welcome(HttpServletRequest request,
			HttpServletResponse response) {
		IMReport ir = new IMReport();
		ir.setO_status("200");
		ir.setO_retmsg("do welcome !");
		return ir;
	}
	
//	public static void main(String[] args) {
//		System.out.println(BCrypt.hashpw("ml", BCrypt.gensalt()));
//	}
	
}
