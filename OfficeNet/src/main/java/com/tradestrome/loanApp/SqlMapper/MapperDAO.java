package com.tradestrome.loanApp.SqlMapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.web.bind.annotation.RequestParam;

import com.tradestrome.loanApp.Entity.CustomerDocs;
import com.tradestrome.loanApp.Entity.CustomerMasterDto;
import com.tradestrome.loanApp.Entity.DtoDayBookPayable;
import com.tradestrome.loanApp.Entity.ProjInputParam;

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
			+ "(#{customerDocs.attachMentId},\r\n"
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
	
	
	@Select("select coalesce(Max(attachment_id)+1,1) from customer_master_attachment where customer_id=#{customerId}")
	public int GetCustAttachId(@Param("customerId") String customerId);
	
	@Select("select attachment_id, customer_id, attach_type, attach_path, file_name, attach_file_data\r\n"
			+ " from customer_master_attachment where customer_id=#{prjInputParam.customerId} "
			+ "and attachment_id = coalesce(#{prjInputParam.fileAttachmentId},attachment_id)")
	@Results({
		@Result(property = "attachMentId",column = "attachment_id"),
		@Result(property = "customerId",column = "customer_id"),
		@Result(property = "docType",column = "attach_type"),
		@Result(property = "docFilePath",column = "attach_path"),
		@Result(property = "docFileName",column = "file_name")
	})
	public List<CustomerDocs> showCustomerDocs(@Param("prjInputParam") ProjInputParam prjInputParam);
	
	
	@Select("select cutomer_id,customerName,father_name,Area,customer_mobileno from customer_master")
	@Results({
		@Result(property = "cust_Id",column = "cutomer_id"),
		@Result(property = "cust_Name",column = "customerName"),
		@Result(property = "cust_Father",column = "father_name"),
		@Result(property = "area",column = "Area"),
		@Result(property = "cust_Mobile",column = "customer_mobileno")
	})
	public List<CustomerMasterDto> getDataCustomerHomePG();
	
	@Select("Select cutomer_id,CONCAT(customerName,\" [\",customer_mobileno,\"]\") CustomerName,\r\n"
			+ "coalesce(current_address,permant_address)Address \r\n"
			+ "from customer_master where (customerName like '%' #{prjInputParam.searchText} '%'\r\n"
			+ "OR customer_mobileno like '%' #{prjInputParam.searchText} '%')")
	@Results({
		@Result(property = "cust_Id",column = "cutomer_id"),
		@Result(property = "cust_Name",column = "CustomerName"),
		@Result(property = "cust_CAdd",column = "Address")
	})
	public List<CustomerMasterDto> fillCustomerData(@Param("prjInputParam") ProjInputParam prjInputParam);
	
	
	@Insert("INSERT INTO dsndb.bill_pymnt\r\n"
			+ "(bill_date,\r\n"
			+ "customer_id,\r\n"
			+ "guarantor_id,\r\n"
			+ "issue_office,\r\n"
			+ "remarks,\r\n"
			+ "bill_type,\r\n"
			+ "bill_value,\r\n"
			+ "bill_tenaure,\r\n"
			+ "bill_emi,\r\n"
			+ "bill_file_charge,\r\n"
			+ "bill_advance,\r\n"
			+ "bill_pct_type,\r\n"
			+ "total_bill_amt,\r\n"
			+ "final_bill_amt,\r\n"
			+ "created_by,\r\n"
			+ "created_date,bill_no)\r\n"
			+ "VALUES\r\n"
			+ "(STR_TO_DATE(#{bill.bill_date}, '%d-%b-%y'),\r\n"
			+ "#{bill.customer_id},\r\n"
			+ "#{bill.guarantor_id},\r\n"
			+ "#{bill.issue_office},\r\n"
			+ "#{bill.remarks},\r\n"
			+ "#{bill.bill_type},\r\n"
			+ "#{bill.bill_value},\r\n"
			+ "#{bill.bill_tenaure},\r\n"
			+ "#{bill.bill_emi},\r\n"
			+ "#{bill.bill_file_charge},\r\n"
			+ "#{bill.bill_advance},\r\n"
			+ "#{bill.bill_pct_type},\r\n"
			+ "#{bill.total_bill_amt},\r\n"
			+ "#{bill.final_bill_amt},\r\n"
			+ "#{bill.created_by},\r\n"
			+ "now(),'')")
	@Options(useGeneratedKeys = true, keyProperty = "billid", keyColumn = "bill_id")
	public int iInsertBillPayableData(@Param("bill") DtoDayBookPayable bill);
	
	@Select("SELECT bill_type_id,bill_type_name,bill_shrt_name FROM dsndb.master_bill_type WHERE Active=0")
	@Results({
		@Result(property = "billType_id",column = "bill_type_id"),
		@Result(property = "billType_shrt_nm",column = "bill_shrt_name"),
		@Result(property = "bill_type",column = "bill_type_name")
	})
	public List<DtoDayBookPayable> getAllBillType();
	
	@Update("Update bill_pymnt Set bill_no = #{billNo} where bill_id=#{billId}")
	public void iUpdateBillNo(@Param("billNo") String billNo,@Param("billId") Integer billId);
	
}
