package com.zjqy.purchaseplatform.security;

import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class WrappedUserLogin implements UserDetails {

	private static final long serialVersionUID = -4758825871028627535L;

	private UserLogin userLogin;

	private List<GrantedAuthority> resultAuths;

	public WrappedUserLogin(UserLogin userLogin,
			List<GrantedAuthority> resultAuths) {
		this.userLogin = userLogin;
		this.resultAuths = resultAuths;
	}

	public Collection<? extends GrantedAuthority> getAuthorities() {
		return resultAuths;
	}

	public String getPassword() {
		return userLogin.getPassword();
	}

	public String getUsername() {
		return userLogin.getUsername();
	}

	public boolean isAccountNonExpired() {
		return userLogin.isAccountNonExpired();
	}

	public boolean isAccountNonLocked() {
		return userLogin.isAccountNonLocked();
	}

	public boolean isCredentialsNonExpired() {
		return userLogin.isCredentialsNonExpired();
	}

	public boolean isEnabled() {
		return userLogin.isEnabled();
	}

	public UserLogin getUserLogin() {
		return userLogin;
	}

	public void setUserLogin(UserLogin userLogin) {
		this.userLogin = userLogin;
	}

}
