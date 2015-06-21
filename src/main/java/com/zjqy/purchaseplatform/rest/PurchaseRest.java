package com.zjqy.purchaseplatform.rest;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PurchaseRest {
	
	@RequestMapping(value = "purchase", method = RequestMethod.GET)
	public String purchaseMain(){
		return "purchase/main";
	}
	
	@RequestMapping(value = "purchase/productPrice", method = RequestMethod.GET)
	public String productPrice(){
		return "purchase/productPrice";
	}
	
	@RequestMapping(value = "purchase/productPriceAdd", method = RequestMethod.GET)
	public String productPriceAdd(ModelMap map){
		map.put("title", "新增报价");
		return "purchase/productPriceEdit";
	}
	
	@RequestMapping(value = "purchase/productPriceEdit/{id}", method = RequestMethod.GET)
	public String productPriceEdit(ModelMap map, @PathVariable Long id){
		map.put("title", "修改报价");
		return "purchase/productPriceEdit";
	}

}
