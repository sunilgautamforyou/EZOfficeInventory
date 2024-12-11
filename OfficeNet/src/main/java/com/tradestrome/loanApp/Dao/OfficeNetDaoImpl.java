package com.tradestrome.loanApp.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tradestrome.loanApp.Entity.CustomerDocs;
import com.tradestrome.loanApp.Entity.CustomerMasterDto;
import com.tradestrome.loanApp.SqlMapper.MapperDAO;

@Repository
public class OfficeNetDaoImpl implements OfficeNetDao {

	@Autowired
	MapperDAO officeNetMapperObj;
	
	@Override
	public int iInsertCustomerMasterData(CustomerMasterDto customerDatObj) {
		return officeNetMapperObj.iInsertCustomerMasterData(customerDatObj);
	}

	@Override
	public boolean iInsertCustomerAttach(CustomerDocs customerDocs) {
		boolean status = false;
		officeNetMapperObj.iInsertCustomerAttach(customerDocs);
		status = true;
		return status;
		
	}

	@Override
	public CustomerMasterDto fillCustomerDataOnPG(String customerId) {
		return officeNetMapperObj.fillCustomerDataOnPG(customerId);
	}
	
	

}
