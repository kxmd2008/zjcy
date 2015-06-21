package com.zjqy.purchaseplatform.domain;

public class ReturnBean {

	public boolean succ = true;
	public String errMsg;
	
	public boolean isSucc() {
		return succ;
	}

	public void setSucc(boolean succ) {
		this.succ = succ;
	}

	public String getErrMsg() {
		return errMsg;
	}

	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}

}
