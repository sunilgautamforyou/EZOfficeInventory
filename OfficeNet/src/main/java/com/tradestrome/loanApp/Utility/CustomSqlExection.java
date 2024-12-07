package com.tradestrome.loanApp.Utility;

import java.sql.SQLException;

import org.apache.commons.lang.StringUtils;
import org.mybatis.spring.MyBatisSystemException;


public class CustomSqlExection  {

	public String customSqlExection(Exception ex) {
		String exceptionMsg = "";
		if (ex.getClass().getName() == "SQLException" 
			|| ex.getClass().getName() == "org.mybatis.spring.MyBatisSystemException") {
			return "Error:" + ex.getCause();
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
