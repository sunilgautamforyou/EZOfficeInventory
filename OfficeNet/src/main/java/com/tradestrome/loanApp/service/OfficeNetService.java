package com.tradestrome.loanApp.service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.tradestrome.loanApp.Entity.CustomerDocs;
import com.tradestrome.loanApp.Entity.CustomerMasterDto;
import com.tradestrome.loanApp.Entity.DtoDayBookPayable;
import com.tradestrome.loanApp.Entity.ProjInputParam;
import com.tradestrome.loanApp.Entity.ResponseWrapper;

public interface OfficeNetService {
	public ResponseWrapper saveImageToStorage(String uploadDirectory, MultipartFile imageFile,CustomerMasterDto customerDto) throws IOException; 
	public ResponseWrapper saveCustomerDate(CustomerMasterDto customerDto);
	public CustomerMasterDto fillCustomerDataOnPG(String customerId);
	public List<CustomerDocs> showCustomerDocs(ProjInputParam prjInputParams);
	public List<CustomerMasterDto> getDataCustomerHomePG();
	public List<CustomerMasterDto> fillCustomerData(ProjInputParam projInputParam);
	public ResponseWrapper iInsertBillPayableData(DtoDayBookPayable billDto);
}
