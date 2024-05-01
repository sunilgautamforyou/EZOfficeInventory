package com.erp.ezofficeinventory.entity;

public class MakePymntDto {
	
	private int pymntId;
	private int partyID;
	private int poID;
	private String pymntDate;
	private double pOAmount;
	private int createdBy;
	private String createdDate;
	private String sMode;
	private String poNo;
	private double pymntAmount;
	private double totalPoAmount;
	private double totalAmtPaid;
	private double balance;
	private String remarks;
	
	public int getPymntId() {
		return pymntId;
	}
	public void setPymntId(int pymntId) {
		this.pymntId = pymntId;
	}
	public int getPartyID() {
		return partyID;
	}
	public void setPartyID(int partyID) {
		this.partyID = partyID;
	}
	public int getPoID() {
		return poID;
	}
	public void setPoID(int poID) {
		this.poID = poID;
	}
	public String getPymntDate() {
		return pymntDate;
	}
	public void setPymntDate(String pymntDate) {
		this.pymntDate = pymntDate;
	}
	public double getpOAmount() {
		return pOAmount;
	}
	public void setpOAmount(double pOAmount) {
		this.pOAmount = pOAmount;
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
	public String getPoNo() {
		return poNo;
	}
	public void setPoNo(String poNo) {
		this.poNo = poNo;
	}
	public double getPymntAmount() {
		return pymntAmount;
	}
	public void setPymntAmount(double pymntAmount) {
		this.pymntAmount = pymntAmount;
	}
	public double getTotalPoAmount() {
		return totalPoAmount;
	}
	public void setTotalPoAmount(double totalPoAmount) {
		this.totalPoAmount = totalPoAmount;
	}
	public double getTotalAmtPaid() {
		return totalAmtPaid;
	}
	public void setTotalAmtPaid(double totalAmtPaid) {
		this.totalAmtPaid = totalAmtPaid;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	

}
