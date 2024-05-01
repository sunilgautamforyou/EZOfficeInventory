package com.erp.ezofficeinventory.exception;

import java.sql.SQLException;

import org.apache.commons.lang.StringUtils;


public class CustomSqlExection  {

	public String customSqlExection(Exception ex) {
		String exceptionMsg = "";
		if (ex.getCause() instanceof SQLException) {
			return "" + ex.getCause();
		} else {
			exceptionMsg = extractDetailedMessage(ex);
		}
		return exceptionMsg;
	}
	
	private String extractDetailedMessage(Throwable e) {
	    final String message = e.getMessage();
	    if (message == null) {
	        return "";
	    }
	    final int tailIndex = StringUtils.indexOf(message, "; nested exception is");
	    if (tailIndex == -1) {
	        return message;
	    }
	    return StringUtils.left(message, tailIndex);
	}
}
