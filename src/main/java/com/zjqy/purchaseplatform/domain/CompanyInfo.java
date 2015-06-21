package com.zjqy.purchaseplatform.domain;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.luis.basic.domain.BaseEntity;

@Entity
@Table(name = "t_company_info")
public class CompanyInfo extends BaseEntity {
	private static final long serialVersionUID = 1L;

	private String userName;
	private Long accountId;

	private String contact;// 联系人

	private String blFile;// 营业执照文件地址businessLicense
	// private String blValidPeriodStart;// 营业执照有效期
	private String blValidPeriodEnd;// 营业执照有效期

	private String trcFile;// 税务登记证文件地址Tax registration certificate
	// private String trcValidPeriodStart;// 税务登记证有效期
	private String trcValidPeriodEnd;// 税务登记证有效期

	private String ocFile;// 组织结构代码证文件地址organizationCode
	// private String ocalidPeriodStart;// 组织结构代码证有效期
	private String ocValidPeriodEnd;// 组织结构代码证有效期

	@Transient
	private String[] rawMaterialsTypes;// 所供原材料类型

	private String supplierType = SUPPLIER_TYPE_FACTORY;// 供应商类型

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Long getAccountId() {
		return accountId;
	}

	public void setAccountId(Long accountId) {
		this.accountId = accountId;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getBlFile() {
		return blFile;
	}

	public void setBlFile(String blFile) {
		this.blFile = blFile;
	}

	public String getBlValidPeriodEnd() {
		return blValidPeriodEnd;
	}

	public void setBlValidPeriodEnd(String blValidPeriodEnd) {
		this.blValidPeriodEnd = blValidPeriodEnd;
	}

	public String getTrcFile() {
		return trcFile;
	}

	public void setTrcFile(String trcFile) {
		this.trcFile = trcFile;
	}

	public String getTrcValidPeriodEnd() {
		return trcValidPeriodEnd;
	}

	public void setTrcValidPeriodEnd(String trcValidPeriodEnd) {
		this.trcValidPeriodEnd = trcValidPeriodEnd;
	}

	public String getOcFile() {
		return ocFile;
	}

	public void setOcFile(String ocFile) {
		this.ocFile = ocFile;
	}

	public String getOcValidPeriodEnd() {
		return ocValidPeriodEnd;
	}

	public void setOcValidPeriodEnd(String ocValidPeriodEnd) {
		this.ocValidPeriodEnd = ocValidPeriodEnd;
	}

	public String[] getRawMaterialsTypes() {
		return rawMaterialsTypes;
	}

	public void setRawMaterialsTypes(String[] rawMaterialsTypes) {
		this.rawMaterialsTypes = rawMaterialsTypes;
	}

	public String getSupplierType() {
		return supplierType;
	}

	public void setSupplierType(String supplierType) {
		this.supplierType = supplierType;
	}

	public static final String SUPPLIER_TYPE_TRADER = "1";// 贸易商
	public static final String SUPPLIER_TYPE_FACTORY = "2";// 生产型工厂
}
