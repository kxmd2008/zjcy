package com.zjqy.purchaseplatform.service;

import java.util.List;

import org.luis.basic.domain.FilterAttributes;
import org.luis.basic.domain.IGenericService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zjqy.purchaseplatform.domain.MaterialsInquiry;
import com.zjqy.purchaseplatform.domain.RawMaterials;
import com.zjqy.purchaseplatform.mybitis.mapper.ServiceFactory;

@Service
public class CommonService {

	public MaterialsInquiry getOne(Long id) {
		return inquiryService.get(id);
	}

	public List<MaterialsInquiry> findInquiryByCompany(Long companyId, Integer status) {
		FilterAttributes fa = FilterAttributes.blank()
				.add("companyId", companyId);
		if(status != null){
			fa.add("status", status);
		}
		return inquiryService.findByAttributes(fa);
	}

	public void supplierInquiry(MaterialsInquiry mi) {
		inquiryService.save(mi);
	}
	
	/**
	 * 竞价结束，下单
	 * @param mi
	 */
	public void inquiryToOrder(MaterialsInquiry mi) {
		mi.setStatus(MaterialsInquiry.STATUS_COMPLETE);
		inquiryService.save(mi);
	}

	@Autowired
	private CompanyService companyService;
	private IGenericService<MaterialsInquiry> inquiryService = ServiceFactory
			.getMaterialsInquiryService();
	private IGenericService<RawMaterials> materialsService = ServiceFactory
			.getMaterialsService();

}
