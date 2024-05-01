package com.erp.ezofficeinventory.entity;

public class LoginDto {
	
	private int LoginId;
	private String userId;
	private String password;
	private String loginRole;
	private String loginUserName;
	private String loginActive;
	private String errorMesage;
	
	public int getLoginId() {
		return LoginId;
	}
	public void setLoginId(int loginId) {
		LoginId = loginId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLoginRole() {
		return loginRole;
	}
	public void setLoginRole(String loginRole) {
		this.loginRole = loginRole;
	}
	public String getLoginUserName() {
		return loginUserName;
	}
	public void setLoginUserName(String loginUserName) {
		this.loginUserName = loginUserName;
	}
	public String getLoginActive() {
		return loginActive;
	}
	public void setLoginActive(String loginActive) {
		this.loginActive = loginActive;
	}
	public String getErrorMesage() {
		return errorMesage;
	}
	public void setErrorMesage(String errorMesage) {
		this.errorMesage = errorMesage;
	}
	
	
	
}
