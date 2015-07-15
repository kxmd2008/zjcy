package com.zjqy.purchaseplatform.service;

import java.util.Arrays;
import java.util.List;

import org.luis.basic.domain.IGenericService;
import org.luis.basic.util.MyBatisBuilder;
import org.springframework.stereotype.Service;

import com.zjqy.purchaseplatform.domain.CompanyInfo;
import com.zjqy.purchaseplatform.mybitis.mapper.ServiceFactory;

@Service
public class CompanyService {

	public List<CompanyInfo> findCompany(String productTypes) {

		String[] types = productTypes.split(",");
		List<String> typeList = Arrays.asList(types);
		List<CompanyInfo> list = MyBatisBuilder.findListByParam("company.findCompany", typeList);
		return list;
	}
	
	public CompanyInfo getCompany(Long id){
		return companyComomService.get(id);
	}
	
	private IGenericService<CompanyInfo> companyComomService = ServiceFactory.getCompanyService();
}
