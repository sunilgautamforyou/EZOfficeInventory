package com.erp.ezofficeinventory.entity;

public class stockMasterDto {
	private int itemId;
	private int categoryId;
	private String categoryName;
	private String itemName;
	private String uom;
	private double opening_Qty;
	private double mrnQty;
	private double saleQuantity;
	private double closingQuantity;
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getUom() {
		return uom;
	}
	public void setUom(String uom) {
		this.uom = uom;
	}
	public double getOpening_Qty() {
		return opening_Qty;
	}
	public void setOpening_Qty(double opening_Qty) {
		this.opening_Qty = opening_Qty;
	}
	public double getMrnQty() {
		return mrnQty;
	}
	public void setMrnQty(double mrnQty) {
		this.mrnQty = mrnQty;
	}
	public double getSaleQuantity() {
		return saleQuantity;
	}
	public void setSaleQuantity(double saleQuantity) {
		this.saleQuantity = saleQuantity;
	}
	public double getClosingQuantity() {
		return closingQuantity;
	}
	public void setClosingQuantity(double closingQuantity) {
		this.closingQuantity = closingQuantity;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	
	
}
