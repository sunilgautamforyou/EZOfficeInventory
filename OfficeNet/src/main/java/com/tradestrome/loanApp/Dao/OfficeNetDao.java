package com.tradestrome.loanApp.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tradestrome.loanApp.Entity.CustomerDocs;
import com.tradestrome.loanApp.Entity.CustomerMasterDto;
import com.tradestrome.loanApp.Entity.DtoDayBookPayable;
import com.tradestrome.loanApp.Entity.ProjInputParam;

@Repository
public interface OfficeNetDao {
	
	public int iInsertCustomerMasterData(CustomerMasterDto customerDatObj);
	public boolean iInsertCustomerAttach(CustomerDocs customerDocs);
	public CustomerMasterDto fillCustomerDataOnPG(String customerId);
	public int GetCustAttachId(String customerId);
	public List<CustomerDocs> showCustomerDocs(ProjInputParam prjInputParams);
	public List<CustomerMasterDto> getDataCustomerHomePG();
	public List<CustomerMasterDto> fillCustomerData(ProjInputParam projInputParam);
	public int iInsertBillPayableData(DtoDayBookPayable billDto);
}
