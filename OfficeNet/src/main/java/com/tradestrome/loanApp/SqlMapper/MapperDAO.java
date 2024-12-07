package com.tradestrome.loanApp.SqlMapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.tradestrome.loanApp.Entity.CustomerMasterDto;

@Mapper
public interface MapperDAO {
	@Insert("INSERT INTO dsndb.customer_master\r\n"
			+ "(customerName,\r\n"
			+ "customer_title,\r\n"
			+ "father_name,\r\n"
			+ "father_title,\r\n"
			+ "customer_mobileno,\r\n"
			+ "customer_job,\r\n"
			+ "current_address,\r\n"
			+ "permant_address)\r\n"
			+ "VALUES\r\n"
			+ "(#{customerObj.cust_Name},\r\n"
			+ "#{customerObj.cust_Title},\r\n"
			+ "#{customerObj.cust_Father},\r\n"
			+ "#{customerObj.father_Title},\r\n"
			+ "#{customerObj.cust_Mobile},\r\n"
			+ "#{customerObj.cust_Job},\r\n"
			+ "#{customerObj.cust_CAdd},\r\n"
			+ "#{customerObj.cust_PAdd})")
	@Options(useGeneratedKeys = true, keyProperty = "cust_Id", keyColumn = "cutomer_id")	
	public int iInsertCustomerMasterData(@Param("customerObj") CustomerMasterDto customerObj);
}
