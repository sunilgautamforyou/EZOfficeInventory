package com.erp.ezofficeinventory.entity;

public class CustomerDto {
	private String sMode;
	private int customerId;
	private String customerName;
	private String towerNuber;
	private int flatNumber;
	private String mobileNuber;
	private String remarks;
	private int createdBy;
	private String createdByName;
	private String createdModifiedDate;
	private String towerDesc;
	private int towerId;
	
	public String getsMode() {
		return sMode;
	}
	public void setsMode(String sMode) {
		this.sMode = sMode;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getTowerNuber() {
		return towerNuber;
	}
	public void setTowerNuber(String towerNuber) {
		this.towerNuber = towerNuber;
	}
	public int getFlatNumber() {
		return flatNumber;
	}
	public void setFlatNumber(int flatNumber) {
		this.flatNumber = flatNumber;
	}

	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public int getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}
	public String getCreatedByName() {
		return createdByName;
	}
	public void setCreatedByName(String createdByName) {
		this.createdByName = createdByName;
	}
	public String getTowerDesc() {
		return towerDesc;
	}
	public void setTowerDesc(String towerDesc) {
		this.towerDesc = towerDesc;
	}
	public int getTowerId() {
		return towerId;
	}
	public void setTowerId(int towerId) {
		this.towerId = towerId;
	}
	public String getCreatedModifiedDate() {
		return createdModifiedDate;
	}
	public void setCreatedModifiedDate(String createdModifiedDate) {
		this.createdModifiedDate = createdModifiedDate;
	}
	public String getMobileNuber() {
		return mobileNuber;
	}
	public void setMobileNuber(String mobileNuber) {
		this.mobileNuber = mobileNuber;
	}
	
	
	
}
