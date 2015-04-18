package com.zjqy.purchaseplatform.security;

import java.io.Serializable;

public class IMReport implements Serializable {

	private static final long serialVersionUID = 853149584491717927L;

	private String o_status;
	private String o_retmsg;
	private String o_seqno;


	public String getO_status() {
		return o_status;
	}

	public void setO_status(String o_status) {
		this.o_status = o_status;
	}

	public String getO_retmsg() {
		return o_retmsg;
	}

	public void setO_retmsg(String o_retmsg) {
		this.o_retmsg = o_retmsg;
	}

	public String getO_seqno() {
		return o_seqno;
	}

	public void setO_seqno(String o_seqno) {
		this.o_seqno = o_seqno;
	}

}
