package com.zjqy.purchaseplatform.service;

import java.util.List;

import org.luis.basic.domain.IGenericService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zjqy.purchaseplatform.domain.CompanyInfo;
import com.zjqy.purchaseplatform.domain.MaterialsInquiry;
import com.zjqy.purchaseplatform.domain.RawMaterials;
import com.zjqy.purchaseplatform.mybitis.mapper.ServiceFactory;

@Service
public class PurchaseService {

	public void saveInquiry(MaterialsInquiry mi){
		if(mi.getCompanyIds() == null || mi.getCompanyIds().isEmpty()) {
			throw new RuntimeException("发送公司不能为空");
		}
		
		RawMaterials materials = materialsService.get(mi.getMaterialsId());
		mi.setMaterialsName(materials.getName());
		for(Long companyId : mi.getCompanyIds()) {
			CompanyInfo company = companyService.getCompany(companyId);
			mi.setCompanyId(companyId);
			mi.setCompanyName(company.getName());
			
			inquiryService.save(mi);
		}
	}
	
	public List<MaterialsInquiry> getAll(){
		return inquiryService.findAll();
	}
	
	@Autowired
	private CompanyService companyService;
	private IGenericService<MaterialsInquiry> inquiryService = ServiceFactory.getMaterialsInquiryService();
	private IGenericService<RawMaterials> materialsService = ServiceFactory.getMaterialsService();
}
