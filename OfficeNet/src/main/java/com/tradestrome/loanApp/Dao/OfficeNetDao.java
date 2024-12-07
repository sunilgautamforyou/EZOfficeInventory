package com.tradestrome.loanApp.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tradestrome.loanApp.Entity.CustomerMasterDto;
import com.tradestrome.loanApp.SqlMapper.MapperDAO;

@Repository
public interface OfficeNetDao {
	
	public int iInsertCustomerMasterData(CustomerMasterDto customerDatObj);
}
