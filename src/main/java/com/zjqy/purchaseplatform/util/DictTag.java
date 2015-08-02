package com.zjqy.purchaseplatform.util;

import java.io.IOException;

import javax.servlet.jsp.JspException;

import org.apache.commons.lang.StringUtils;
import org.luis.basic.tag.BaseTag;

public class DictTag extends BaseTag {
	private static final long serialVersionUID = 1L;

	private String code;
	private String itemValue;

	public int doEndTag() throws JspException {
		String label = DictManager.getInstance().getLabel(code, itemValue);
		if(StringUtils.isBlank(label)){
			label = code;
		}
		writeMessage(label);
		return EVAL_PAGE;
	}

	protected void writeMessage(String msg) throws JspException {
		try {
			pageContext.getOut().write(String.valueOf(msg));
		} catch (IOException ioe) {
			throw new JspException(ioe);
		}
	}

	public void setCode(String code) {
		this.code = code;
	}

	public void setItemValue(String itemValue) {
		this.itemValue = itemValue;
	}

}
