package com.tradestrome.loanApp.Entity;

public class DtoDayBookPayable {
	
	private int billid;
	private String bill_no;
	private String bill_date;
	private String customer_id;
	private String guarantor_id;
	private String issue_office;
	private String remarks;
	private String bill_type;
	private String bill_value;
	private String bill_tenaure;
	private String bill_emi;
	private String bill_file_charge;
	private String bill_advance;
	private boolean bill_pct_type;
	private String total_bill_amt;
	private String final_bill_amt;
	private String created_by;
	private String created_date;
	private String billType_id;
	private String billType_shrt_nm;
	private String customerName;
	private String customerMobileNo;

	public int getBill_id() {
		return billid;
	}
	public void setBill_id(int bill_id) {
		this.billid = bill_id;
	}
	public String getBill_no() {
		return bill_no;
	}
	public void setBill_no(String bill_no) {
		this.bill_no = bill_no;
	}
	public String getBill_date() {
		return bill_date;
	}
	public void setBill_date(String bill_date) {
		this.bill_date = bill_date;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getGuarantor_id() {
		return guarantor_id;
	}
	public void setGuarantor_id(String guarantor_id) {
		this.guarantor_id = guarantor_id;
	}
	public String getIssue_office() {
		return issue_office;
	}
	public void setIssue_office(String issue_office) {
		this.issue_office = issue_office;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getBill_type() {
		return bill_type;
	}
	public void setBill_type(String bill_type) {
		this.bill_type = bill_type;
	}
	public String getBill_value() {
		return bill_value;
	}
	public void setBill_value(String bill_value) {
		this.bill_value = bill_value;
	}
	public String getBill_tenaure() {
		return bill_tenaure;
	}
	public void setBill_tenaure(String bill_tenaure) {
		this.bill_tenaure = bill_tenaure;
	}
	public String getBill_emi() {
		return bill_emi;
	}
	public void setBill_emi(String bill_emi) {
		this.bill_emi = bill_emi;
	}
	public String getBill_file_charge() {
		return bill_file_charge;
	}
	public void setBill_file_charge(String bill_file_charge) {
		this.bill_file_charge = bill_file_charge;
	}
	public String getBill_advance() {
		return bill_advance;
	}
	public void setBill_advance(String bill_advance) {
		this.bill_advance = bill_advance;
	}

	
	
	public boolean isBill_pct_type() {
		return bill_pct_type;
	}
	public void setBill_pct_type(boolean bill_pct_type) {
		this.bill_pct_type = bill_pct_type;
	}
	public String getTotal_bill_amt() {
		return total_bill_amt;
	}
	public void setTotal_bill_amt(String total_bill_amt) {
		this.total_bill_amt = total_bill_amt;
	}
	public String getFinal_bill_amt() {
		return final_bill_amt;
	}
	public void setFinal_bill_amt(String final_bill_amt) {
		this.final_bill_amt = final_bill_amt;
	}
	public String getCreated_by() {
		return created_by;
	}
	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}
	public String getCreated_date() {
		return created_date;
	}
	public void setCreated_date(String created_date) {
		this.created_date = created_date;
	}
	
	
	
	public String getBillType_id() {
		return billType_id;
	}
	public void setBillType_id(String billType_id) {
		this.billType_id = billType_id;
	}
	public String getBillType_shrt_nm() {
		return billType_shrt_nm;
	}
	public void setBillType_shrt_nm(String billType_shrt_nm) {
		this.billType_shrt_nm = billType_shrt_nm;
	}
	
	
	
	public String getCustomerMobileNo() {
		return customerMobileNo;
	}
	public void setCustomerMobileNo(String customerMobileNo) {
		this.customerMobileNo = customerMobileNo;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	@Override
	public String toString() {
		return "DtoDayBookPayable [bill_id=" + billid + ", bill_no=" + bill_no + ", bill_date=" + bill_date
				+ ", customer_id=" + customer_id + ", guarantor_id=" + guarantor_id + ", issue_office=" + issue_office
				+ ", remarks=" + remarks + ", bill_type=" + bill_type + ", bill_value=" + bill_value + ", bill_tenaure="
				+ bill_tenaure + ", bill_emi=" + bill_emi + ", bill_file_charge=" + bill_file_charge + ", bill_advance="
				+ bill_advance + ", bill_pct_type=" + bill_pct_type + ", total_bill_amt=" + total_bill_amt
				+ ", final_bill_amt=" + final_bill_amt + ", created_by=" + created_by + ", created_date=" + created_date
				+ "]";
	}	
	
	

}
