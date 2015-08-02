package com.zjqy.purchaseplatform.domain;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.luis.basic.domain.BaseEntity;

@Entity
@Table(name = "t_order")
public class Order extends BaseEntity {

	private static final long serialVersionUID = 2760875962580013405L;
	private String orderNo;// 订单号
	private String supplier;// 供应商
	private Long supplierId;
	private String deliveryAddress;// 送货地点
	private String seller;// 联系人
	private String fax;// 传真
	private String packingFreght;// 包装运输费
	private String receiptNo;// 发票号
	private String orderDate;//
	private BigDecimal amount;
	private Long orderTime;// 下单时间
	private String payDate;//
	private Long payTime;// 下单时间
	private String status;// 订单状态

	public Long getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(Long supplierId) {
		this.supplierId = supplierId;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public BigDecimal getAmount() {
		return amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	public Long getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(Long orderTime) {
		this.orderTime = orderTime;
	}

	public String getPayDate() {
		return payDate;
	}

	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}

	public Long getPayTime() {
		return payTime;
	}

	public void setPayTime(Long payTime) {
		this.payTime = payTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getReceiptNo() {
		return receiptNo;
	}

	public void setReceiptNo(String receiptNo) {
		this.receiptNo = receiptNo;
	}

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
