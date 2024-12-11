package com.tradestrome.loanApp.SqlMapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.web.bind.annotation.RequestParam;

import com.tradestrome.loanApp.Entity.CustomerDocs;
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
	
	@Insert("INSERT INTO dsndb.customer_master_attachment\r\n"
			+ "(attachment_id,\r\n"
			+ "customer_id,\r\n"
			+ "attach_type,\r\n"
			+ "attach_path,\r\n"
			+ "file_name)\r\n"
			+ "VALUES\r\n"
			+ "((select coalesce(Max(attachment_id)+1,1) from customer_master_attachment where customer_id=#{customerDocs.customerId}),\r\n"
			+ "#{customerDocs.customerId},\r\n"
			+ "#{customerDocs.docType},\r\n"
			+ "#{customerDocs.docFilePath},\r\n"
			+ "#{customerDocs.docFileName})")
	 public void iInsertCustomerAttach(@Param("customerDocs") CustomerDocs customerDocs);
	
	@Select("Select cutomer_id,customerName,customer_title,father_name,customer_mobileno,customer_job,current_address,\r\n"
			+ "permant_address\r\n"
			+ " from customer_master where cutomer_id = #{customerId}")
	@Results({
		@Result(property = "cust_Id",column = "cutomer_id"),
		@Result(property = "cust_Name",column = "customerName"),
		@Result(property = "cust_Title",column = "customer_title"),
		@Result(property = "cust_Father",column = "father_name"),
		@Result(property = "cust_Mobile",column = "customer_mobileno"),
		@Result(property = "cust_Job",column = "customer_job"),
		@Result(property = "cust_CAdd",column = "current_address"),
		@Result(property = "cust_PAdd",column = "permant_address")
	})
	public CustomerMasterDto fillCustomerDataOnPG(@Param("customerId") String customerId);
}
