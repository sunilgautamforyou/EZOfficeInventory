package com.erp.ezofficeinventory.entity;

public class PODto {
	
	private String sMode;
	private String itemId;
	private String uomId;
	private String poQty;
	private String poRate;
	private String poAmount;
	private String poDate;
	private String supplierId;
	private String supplierName;
	private String remarks;
	private int ipoId;
	private String poNo;
	private String createdbyName;
	private int createdById;
	private String itemDesc;
	private String uomDesc;
	private double gstPct;
	private String partyContactNo;
	private String partyAddress;
	private String categeoryName;
	private double taxAmount;
	private double withoutTaxAmount;
	
	private double totalBillAmount;
	private double totalPaidAmount;
	private double advanceAmount;
	private String strMessage;
	private String partyBillNo;
	
	public String getsMode() {
		return sMode;
	}
	public void setsMode(String sMode) {
		this.sMode = sMode;
	}
	public String getItemId() {
		return itemId;
	}
	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	public String getUomId() {
		return uomId;
	}
	public void setUomId(String uomId) {
		this.uomId = uomId;
	}
	public String getPoQty() {
		return poQty;
	}
	public void setPoQty(String poQty) {
		this.poQty = poQty;
	}
	public String getPoRate() {
		return poRate;
	}
	public void setPoRate(String poRate) {
		this.poRate = poRate;
	}
	public String getPoAmount() {
		return poAmount;
	}
	public void setPoAmount(String poAmount) {
		this.poAmount = poAmount;
	}
	
	
	
	public String getPoDate() {
		return poDate;
	}
	public void setPoDate(String poDate) {
		this.poDate = poDate;
	}
	public String getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	public int getIpoId() {
		return ipoId;
	}
	public void setIpoId(int ipoId) {
		this.ipoId = ipoId;
	}
	
	
	
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	public String getPoNo() {
		return poNo;
	}
	public void setPoNo(String poNo) {
		this.poNo = poNo;
	}
	public String getCreatedbyName() {
		return createdbyName;
	}
	public void setCreatedbyName(String createdbyName) {
		this.createdbyName = createdbyName;
	}
	public int getCreatedById() {
		return createdById;
	}
	public void setCreatedById(int createdById) {
		this.createdById = createdById;
	}
	
	
	
	
	public String getItemDesc() {
		return itemDesc;
	}
	public void setItemDesc(String itemDesc) {
		this.itemDesc = itemDesc;
	}
	public String getUomDesc() {
		return uomDesc;
	}
	public void setUomDesc(String uomDesc) {
		this.uomDesc = uomDesc;
	}
	
	
	
	public double getGstPct() {
		return gstPct;
	}
	public void setGstPct(double gstPct) {
		this.gstPct = gstPct;
	}
	
	
	
	public String getPartyContactNo() {
		return partyContactNo;
	}
	public void setPartyContactNo(String partyContactNo) {
		this.partyContactNo = partyContactNo;
	}
	public String getPartyAddress() {
		return partyAddress;
	}
	public void setPartyAddress(String partyAddress) {
		this.partyAddress = partyAddress;
	}
	
	
	
	public String getCategeoryName() {
		return categeoryName;
	}
	public void setCategeoryName(String categeoryName) {
		this.categeoryName = categeoryName;
	}
	
	
	
	
	public double getTaxAmount() {
		return taxAmount;
	}
	public void setTaxAmount(double taxAmount) {
		this.taxAmount = taxAmount;
	}
	public double getWithoutTaxAmount() {
		return withoutTaxAmount;
	}
	public void setWithoutTaxAmount(double withoutTaxAmount) {
		this.withoutTaxAmount = withoutTaxAmount;
	}
	
	
	
	public double getTotalBillAmount() {
		return totalBillAmount;
	}
	public void setTotalBillAmount(double totalBillAmount) {
		this.totalBillAmount = totalBillAmount;
	}
	public double getTotalPaidAmount() {
		return totalPaidAmount;
	}
	public void setTotalPaidAmount(double totalPaidAmount) {
		this.totalPaidAmount = totalPaidAmount;
	}
	
	
	
	public double getAdvanceAmount() {
		return advanceAmount;
	}
	public void setAdvanceAmount(double advanceAmount) {
		this.advanceAmount = advanceAmount;
	}
	
	
	
	public String getStrMessage() {
		return strMessage;
	}
	public void setStrMessage(String strMessage) {
		this.strMessage = strMessage;
	}
	
	
	
	public String getPartyBillNo() {
		return partyBillNo;
	}
	public void setPartyBillNo(String partyBillNo) {
		this.partyBillNo = partyBillNo;
	}
	@Override
	public String toString() {
		return "PODto [itemId=" + itemId + ", uomId=" + uomId + ", poQty=" + poQty + ", poRate=" + poRate
				+ ", poAmount=" + poAmount + "]";
	}
	
	
	
}
