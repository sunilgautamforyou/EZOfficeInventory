package com.tradestrome.loanApp.Entity;

public class CustomerDocs {

	private String docType;
	private String docFilePath;
	private String docFileName;
	private int attachMentId;
	private String customerId;
	private String strMessage;
	private String encodedString;
	
	public String getDocType() {
		return docType;
	}
	public void setDocType(String docType) {
		this.docType = docType;
	}
	public String getDocFilePath() {
		return docFilePath;
	}
	public void setDocFilePath(String docFilePath) {
		this.docFilePath = docFilePath;
	}
	public String getDocFileName() {
		return docFileName;
	}
	public void setDocFileName(String docFileName) {
		this.docFileName = docFileName;
	}
	public int getAttachMentId() {
		return attachMentId;
	}
	public void setAttachMentId(int attachMentId) {
		this.attachMentId = attachMentId;
	}
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public String getStrMessage() {
		return strMessage;
	}
	public void setStrMessage(String strMessage) {
		this.strMessage = strMessage;
	}
	public String getEncodedString() {
		return encodedString;
	}
	public void setEncodedString(String encodedString) {
		this.encodedString = encodedString;
	}

	
	
	
	
}
