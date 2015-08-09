package com.zjqy.purchaseplatform.service;

import java.util.List;

import org.luis.basic.domain.FilterAttributes;
import org.luis.basic.domain.IGenericService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zjqy.purchaseplatform.domain.CompanyInfo;
import com.zjqy.purchaseplatform.domain.MaterialsInquiry;
import com.zjqy.purchaseplatform.domain.Quote;
import com.zjqy.purchaseplatform.domain.RawMaterials;
import com.zjqy.purchaseplatform.mybitis.mapper.ServiceFactory;

@Service
public class PurchaseService {

	/**
	 * 询价保存。关联保存每个公司的竞价表
	 * @param mi
	 */
	public void saveInquiry(MaterialsInquiry mi){
		if(mi.getCompanyIds() == null || mi.getCompanyIds().isEmpty()) {
			throw new RuntimeException("发送公司不能为空");
		}
		
		RawMaterials materials = materialsService.get(mi.getMaterialsId());
		mi.setMaterialsName(materials.getName());
		inquiryService.save(mi);
		for(Long companyId : mi.getCompanyIds()) {
			CompanyInfo company = companyService.getCompany(companyId);
			Quote quote = new Quote();
			quote.setCompanyId(companyId);
			quote.setCompanyName(company.getName());
			quote.setInquiryId(mi.getId());
			quoteService.save(quote);
		}
	}
	
	public List<MaterialsInquiry> getAll(){
		return inquiryService.findAll();
	}
	
	/**
	 * 根据询价ID查询竞价单
	 * @param inquiryId
	 * @return
	 */
	public List<Quote> getQuotes(Long inquiryId){
		FilterAttributes fa = FilterAttributes.blank().add("inquiryId", inquiryId);
		return quoteService.findByAttributes(fa);
	}
	
	@Autowired
	private CompanyService companyService;
	private IGenericService<MaterialsInquiry> inquiryService = ServiceFactory.getMaterialsInquiryService();
	private IGenericService<RawMaterials> materialsService = ServiceFactory.getMaterialsService();
	private IGenericService<Quote> quoteService = ServiceFactory.getQuoteService();
}
