package com.zjqy.purchaseplatform.domain;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.luis.basic.domain.BaseEntity;

@Entity
@Table(name = "t_supplier_rawmaterials")
public class SupplierRawMaterials extends BaseEntity {
	private static final long serialVersionUID = 1L;
	private String rawmaterialsName;
	private Long companyId;

	public String getRawmaterialsName() {
		return rawmaterialsName;
	}

	public void setRawmaterialsName(String rawmaterialsName) {
		this.rawmaterialsName = rawmaterialsName;
	}

	public Long getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Long companyId) {
		this.companyId = companyId;
	}

}
