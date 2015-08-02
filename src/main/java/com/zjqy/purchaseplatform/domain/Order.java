package com.zjqy.purchaseplatform.domain;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.luis.basic.domain.BaseEntity;

@Entity
@Table(name = "t_order")
public class Order extends BaseEntity {

	private static final long serialVersionUID = 1L;
	private String orderNo;
	private String supplier;
	private String deliveryAddress;
	private String seller;
	private String fax;
	private String packingFreght;

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getSupplier() {
		return supplier;
	}

	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}

	public String getDeliveryAddress() {
		return deliveryAddress;
	}

	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}

	public String getSeller() {
		return seller;
	}

	public void setSeller(String seller) {
		this.seller = seller;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getPackingFreght() {
		return packingFreght;
	}

	public void setPackingFreght(String packingFreght) {
		this.packingFreght = packingFreght;
	}

}
