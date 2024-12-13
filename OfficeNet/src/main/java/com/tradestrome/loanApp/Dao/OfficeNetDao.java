package com.tradestrome.loanApp.Dao;

import org.springframework.stereotype.Repository;

import com.tradestrome.loanApp.Entity.CustomerDocs;
import com.tradestrome.loanApp.Entity.CustomerMasterDto;

@Repository
public interface OfficeNetDao {
	
	public int iInsertCustomerMasterData(CustomerMasterDto customerDatObj);
	public boolean iInsertCustomerAttach(CustomerDocs customerDocs);
	public CustomerMasterDto fillCustomerDataOnPG(String customerId);
	public int GetCustAttachId(String customerId);
}
