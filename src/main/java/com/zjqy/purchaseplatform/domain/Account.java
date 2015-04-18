package com.zjqy.purchaseplatform.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.luis.basic.domain.BaseEntity;

@Entity
@Table(name = "t_account")
public class Account extends BaseEntity {
	public static final String TYPE_ADMIN = "ADMIN";// 系统管理员
	public static final String TYPE_SUPPLIER = "SUPPLIER";// 供应商
	public static final String TYPE_PURCHASE = "PURCHASE";// 采购
	private static final long serialVersionUID = 178723493562907433L;
	@Column(length = 50, name = "login_name")
	private String loginName;
	@Column(length = 50)
	private String password;
	@Column(length = 200)
	private String address;
	@Column(length = 20)
	private String phone;// 手机
	@Column(length = 15)
	private String type;// 帐号类型
	@Column(length = 30)
	private String email;

	@Column(length = 2)
	private String status;// 状态

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	// public String getPost() {
	// return post;
	// }
	//
	// public void setPost(String post) {
	// this.post = post;
	// }
	//
	// public String getAddress() {
	// return address;
	// }
	//
	// public void setAddress(String address) {
	// this.address = address;
	// }

}
