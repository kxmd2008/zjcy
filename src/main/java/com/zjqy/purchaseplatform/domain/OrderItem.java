package com.zjqy.purchaseplatform.domain;

import java.math.BigDecimal;

import org.luis.basic.domain.BaseEntity;

public class OrderItem extends BaseEntity {

	private static final long serialVersionUID = 1L;
	private String itemNo;// 编号
	private String productName;// 货物名称
	private String spec;// 规格/型号
	private String unit;// 单位
	private Double quantity;// 数量
	private BigDecimal price;// 单价
	private String contractNo;// 合同号
	private String date;// 交货期

	public String getItemNo() {
		return itemNo;
	}

	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getSpec() {
		return spec;
	}

	public void setSpec(String spec) {
		this.spec = spec;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public Double getQuantity() {
		return quantity;
	}

	public void setQuantity(Double quantity) {
		this.quantity = quantity;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getContractNo() {
		return contractNo;
	}

	public void setContractNo(String contractNo) {
		this.contractNo = contractNo;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

}
