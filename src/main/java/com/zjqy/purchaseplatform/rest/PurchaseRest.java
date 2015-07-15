package com.zjqy.purchaseplatform.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zjqy.purchaseplatform.domain.MaterialsInquiry;
import com.zjqy.purchaseplatform.service.CommonService;
import com.zjqy.purchaseplatform.service.CompanyService;
import com.zjqy.purchaseplatform.service.PurchaseService;
import com.zjqy.purchaseplatform.unit.ConstantManager;

@Controller
@RequestMapping("/purchase")
public class PurchaseRest {
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String purchaseMain(){
		return "purchase/main";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String purchaseMain2(){
		return "purchase/main";
	}
	
	@RequestMapping(value = "/productPrice", method = RequestMethod.GET)
	public String productPrice(ModelMap map){
		List<MaterialsInquiry> list = purchaseService.getAll();
		map.put("inquirys", list);
		return "purchase/productPrice";
	}
	
	@RequestMapping(value = "/productPriceAdd", method = RequestMethod.GET)
	public String productPriceAdd(ModelMap map){
		map.put("title", "新增询价");
		setProducts(map);
		return "purchase/productPriceEdit";
	}
	
	@RequestMapping(value = "/productPriceEdit/{id}", method = RequestMethod.GET)
	public String productPriceEdit(ModelMap map, @PathVariable Long id){
		map.put("title", "修改询价");
		MaterialsInquiry inquiry = commonService.getOne(id);
		map.put("inquiry", inquiry);
		setProducts(map);
		return "purchase/productPriceEdit";
	}
	
	@RequestMapping(value = "/saveInquiry", method = RequestMethod.POST)
	public String saveInquiry(ModelMap map, MaterialsInquiry mi){
		purchaseService.saveInquiry(mi);
		return "purchase/productPrice";
	}
	
	private void setProducts(ModelMap map){
		map.put("materials", ConstantManager.getInstance().getGroupMaterials());
	}
	
	@Autowired
	private CompanyService companyService;
	@Autowired
	private PurchaseService purchaseService;
	@Autowired
	private CommonService commonService;
}
