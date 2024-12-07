package com.tradestrome.loanApp.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	
	

}
