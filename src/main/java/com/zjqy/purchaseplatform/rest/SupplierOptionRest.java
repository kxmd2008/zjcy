package com.zjqy.purchaseplatform.rest;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zjqy.purchaseplatform.domain.CompanyInfo;
import com.zjqy.purchaseplatform.domain.MaterialsInquiry;
import com.zjqy.purchaseplatform.service.CommonService;
import com.zjqy.purchaseplatform.util.BaseUtil;


@Controller
@RequestMapping("/supplier")
public class SupplierOptionRest {
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String purchaseMain(){
		return "redirect:/supplier/inquiry";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String purchaseMain2(){
		return "redirect:/supplier/inquiry";
	}

	@RequestMapping(value = "/inquiry", method = {RequestMethod.GET, RequestMethod.POST})
	public String inquiry(HttpServletRequest req, ModelMap map){
		CompanyInfo company = (CompanyInfo) BaseUtil.getSessionAttr(req, "company");
		List<MaterialsInquiry> inquirys = commonService.findInquiryByCompany(company.getId(), MaterialsInquiry.STATUS_START);
		map.put("inquirys", inquirys);
		return "supplier/productPrice";
	}
	
	@RequestMapping(value = "/inquiryHis", method = {RequestMethod.GET, RequestMethod.POST})
	public String inquiryHis(HttpServletRequest req, ModelMap map, Integer status){
		CompanyInfo company = (CompanyInfo) BaseUtil.getSessionAttr(req, "company");
		List<MaterialsInquiry> inquirys = commonService.findInquiryByCompany(company.getId(), null);
		map.put("inquirys", inquirys);
		return "supplier/productPriceHis";
	}
	
	@RequestMapping(value = "/inquiry/{id}", method = RequestMethod.GET)
	public String productPriceEdit(ModelMap map, @PathVariable Long id, HttpServletRequest req){
		MaterialsInquiry inquiry = commonService.getOne(id);
		BaseUtil.setSessionAttr(req, "inquiry", inquiry);
		map.put("inquiry", inquiry);
		return "supplier/productPriceEdit";
	}
	
	@RequestMapping(value = "/saveInquiry", method = RequestMethod.POST)
	public String saveInquiry(ModelMap map, MaterialsInquiry mi, HttpServletRequest req){
		MaterialsInquiry inquiry = (MaterialsInquiry) BaseUtil.getSessionAttr(req, "inquiry");
		inquiry.setPrice(mi.getPrice());
		inquiry.setArrivalDate(mi.getArrivalDate());
		commonService.supplierInquiry(inquiry);
		return "redirect:/supplier/inquiry";
	}
	
	
	
	@Autowired
	private CommonService commonService;
}
