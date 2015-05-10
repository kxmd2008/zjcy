package com.zjqy.purchaseplatform.domain;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.luis.basic.domain.BaseEntity;

@Entity
@Table(name = "t_raw_materials")
public class RawMaterials extends BaseEntity {

	private static final long serialVersionUID = 1L;

	private String name;// 原材料名称

	private String type;// 原材料所属类型

	private Long parentId;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Long getParentId() {
		return parentId;
	}

	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}

}
