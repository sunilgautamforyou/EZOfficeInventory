package com.erp.ezofficeinventory.entity;

public class UomDto {

	private String sMode;
	private int uomId;
	private String uomShortName;
	private String uomDescription;
	private int createdById;
	private String createdByName;
	private String createdDt;
	
	private boolean active;
	
	
	
	
	public String getsMode() {
		return sMode;
	}
	public void setsMode(String sMode) {
		this.sMode = sMode;
	}
	public int getUomId() {
		return uomId;
	}
	public void setUomId(int uomId) {
		this.uomId = uomId;
	}
	public String getUomShortName() {
		return uomShortName;
	}
	public void setUomShortName(String uomShortName) {
		this.uomShortName = uomShortName;
	}
	public String getUomDescription() {
		return uomDescription;
	}
	public void setUomDescription(String uomDescription) {
		this.uomDescription = uomDescription;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	
	
	
	public int getCreatedById() {
		return createdById;
	}
	public void setCreatedById(int createdById) {
		this.createdById = createdById;
	}
	public String getCreatedByName() {
		return createdByName;
	}
	public void setCreatedByName(String createdByName) {
		this.createdByName = createdByName;
	}
	public String getCreatedDt() {
		return createdDt;
	}
	public void setCreatedDt(String createdDt) {
		this.createdDt = createdDt;
	}
	@Override
	public String toString() {
		return "UomDto [uomId=" + uomId + ", uomShortName=" + uomShortName + ", uomDescription=" + uomDescription
				+ ", active=" + active + "]";
	}
	
	
	
	
}
