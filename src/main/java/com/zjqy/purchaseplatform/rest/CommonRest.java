package com.zjqy.purchaseplatform.rest;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.luis.basic.rest.model.SimpleMessage;
import org.luis.basic.util.SpringContextFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zjqy.purchaseplatform.domain.CompanyInfo;
import com.zjqy.purchaseplatform.service.CompanyService;

@Controller
public class CommonRest {
	
	@RequestMapping(value = "/common/findCompany", method = RequestMethod.POST)
	@ResponseBody
	public SimpleMessage<CompanyInfo> findCompany(HttpServletRequest req, ModelMap map, String id){
		SimpleMessage<CompanyInfo> sm = new SimpleMessage<CompanyInfo>();
		List<CompanyInfo> list = companyService.findCompany(id);
		sm.setRecords(list);
		return sm;
	}
	
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public String req403(){
		return "403";
	}
	
	@RequestMapping(value = "/404", method = RequestMethod.GET)
	public String req404(){
		return "404";
	}
	
	@RequestMapping(value = "/500", method = RequestMethod.GET)
	public String req500(){
		return "500";
	}
	
	private CompanyService companyService = SpringContextFactory
			.getSpringBean(CompanyService.class);
}
