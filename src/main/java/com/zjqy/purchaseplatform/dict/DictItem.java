package com.zjqy.purchaseplatform.dict;

public class DictItem {

	public DictItem() {

	}

	public DictItem(String label, String value) {
		this.label = label;
		this.value = value;
	}

	private String label;
	private String value;

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

}
