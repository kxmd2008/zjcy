package com.zjqy.purchaseplatform.domain;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.luis.basic.domain.BaseEntity;

/**
 * 询价
 * 
 * @author Administrator
 */
@Entity
@Table(name = "t_materials_inquiry")
public class MaterialsInquiry extends BaseEntity {

	public static Integer STATUS_START = Integer.valueOf(0);
	public static Integer STATUS_COMPLETE = Integer.valueOf(1);// 竞价完成
	// public static Integer STATUS_COMPLETE = Integer.valueOf(2);//竞价完成

	private static final long serialVersionUID = -3396687012262521733L;
	private Long materialsId;// 原材料
	private String materialsName;// 原材料
	private String spec;// 规格
	private Integer num;
	private String unit;// 单位
	// private Long companyId;
	// private BigDecimal price;// 单价
	// private String companyName;
	private BigDecimal totalPrice;// 总价

	private String requireArrivalDate;// 要求到货日期
	private String arrivalDate;// 到货日期

	private Long timestamp;// 入库时间

	private Integer status = STATUS_START;
	private String endDate;

	@Transient
	private List<Long> companyIds;

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Long getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Long timestamp) {
		this.timestamp = timestamp;
	}

	public String getMaterialsName() {
		return materialsName;
	}

	public void setMaterialsName(String materialsName) {
		this.materialsName = materialsName;
	}

	public String getRequireArrivalDate() {
		return requireArrivalDate;
	}

	public void setRequireArrivalDate(String requireArrivalDate) {
		this.requireArrivalDate = requireArrivalDate;
	}

	public String getArrivalDate() {
		return arrivalDate;
	}

	public void setArrivalDate(String arrivalDate) {
		this.arrivalDate = arrivalDate;
	}

	public BigDecimal getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}

	public List<Long> getCompanyIds() {
		return companyIds;
	}

	public void setCompanyIds(List<Long> companyIds) {
		this.companyIds = companyIds;
	}

	public Long getMaterialsId() {
		return materialsId;
	}

	public void setMaterialsId(Long materialsId) {
		this.materialsId = materialsId;
	}

	public String getSpec() {
		return spec;
	}

	public void setSpec(String spec) {
		this.spec = spec;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

}
