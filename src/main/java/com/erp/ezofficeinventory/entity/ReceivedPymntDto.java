package com.erp.ezofficeinventory.entity;

public class ReceivedPymntDto {
	private int pymntId;
	private int customerId;
	private int soID;
	private String pymntDate;
	private double soAmount;
	private int createdBy;
	private String createdDate;
	private String sMode;
	private String soNo;
	private double pymntAmount;
	private double totalsoAmount;
	private double totalAmtRecvd;
	private double balance;
	private String soDate;
	private String pymntRemarks;
	
	public int getPymntId() {
		return pymntId;
	}
	public void setPymntId(int pymntId) {
		this.pymntId = pymntId;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public int getSoID() {
		return soID;
	}
	public void setSoID(int soID) {
		this.soID = soID;
	}
	public String getPymntDate() {
		return pymntDate;
	}
	public void setPymntDate(String pymntDate) {
		this.pymntDate = pymntDate;
	}
	public double getSoAmount() {
		return soAmount;
	}
	public void setSoAmount(double soAmount) {
		this.soAmount = soAmount;
	}
	public int getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public String getsMode() {
		return sMode;
	}
	public void setsMode(String sMode) {
		this.sMode = sMode;
	}
	public String getSoNo() {
		return soNo;
	}
	public void setSoNo(String soNo) {
		this.soNo = soNo;
	}
	public double getPymntAmount() {
		return pymntAmount;
	}
	public void setPymntAmount(double pymntAmount) {
		this.pymntAmount = pymntAmount;
	}
	public double getTotalsoAmount() {
		return totalsoAmount;
	}
	public void setTotalsoAmount(double totalsoAmount) {
		this.totalsoAmount = totalsoAmount;
	}
	public double getTotalAmtRecvd() {
		return totalAmtRecvd;
	}
	public void setTotalAmtRecvd(double totalAmtRecvd) {
		this.totalAmtRecvd = totalAmtRecvd;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public String getSoDate() {
		return soDate;
	}
	public void setSoDate(String soDate) {
		this.soDate = soDate;
	}
	public String getPymntRemarks() {
		return pymntRemarks;
	}
	public void setPymntRemarks(String pymntRemarks) {
		this.pymntRemarks = pymntRemarks;
	}
	
	
	
}
