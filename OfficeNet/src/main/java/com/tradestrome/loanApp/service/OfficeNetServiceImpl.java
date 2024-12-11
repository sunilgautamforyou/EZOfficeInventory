package com.tradestrome.loanApp.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.tradestrome.loanApp.Dao.OfficeNetDao;
import com.tradestrome.loanApp.Entity.CustomerDocs;
import com.tradestrome.loanApp.Entity.CustomerMasterDto;
import com.tradestrome.loanApp.Entity.ResponseWrapper;
import com.tradestrome.loanApp.Utility.CustomSqlExection;

@Service
public class OfficeNetServiceImpl implements OfficeNetService {

	@Autowired
	OfficeNetDao officeNetDao;
	
	CustomSqlExection exceptionObj = new CustomSqlExection();
	
	@Override
	public ResponseWrapper saveImageToStorage(String uploadDirectory, MultipartFile imageFile,CustomerMasterDto customerDto) throws IOException {
		// Save image in a local directory
		ResponseWrapper wrapperObj = new ResponseWrapper();
		CustomerDocs customerDocs = new CustomerDocs();
		String uniqueFileName = "";
		try {
			uniqueFileName = //UUID.randomUUID().toString() + "_" +
		    imageFile.getOriginalFilename();
			Path uploadPath = Path.of(uploadDirectory);
			Path filePath = uploadPath.resolve(uniqueFileName);
			if (!Files.exists(uploadPath)) {
				Files.createDirectories(uploadPath);
			}
			Files.copy(imageFile.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);
			
			//customerDocs.setCustomerId(customerMasterDto.getCust_Id());
			customerDocs.setDocFileName(uniqueFileName);
			customerDocs.setDocFilePath(uploadDirectory);
			customerDocs.setCustomerId(uniqueFileName);
			customerDocs.setCustomerId(customerDto.getCust_Id());
			officeNetDao.iInsertCustomerAttach(customerDocs);
		} catch (Exception ex) {
			wrapperObj.setErrorFlag(true);
			wrapperObj.setStrMessage(ex.getMessage());
		}
		return wrapperObj;
	}

	@Override
	public ResponseWrapper saveCustomerDate(CustomerMasterDto customerDto) {
		ResponseWrapper wrapperObj = new ResponseWrapper();
		try {
			wrapperObj.setRecordNumber(officeNetDao.iInsertCustomerMasterData(customerDto));
			wrapperObj.setErrorFlag(false);
			wrapperObj.setStrMessage("Record Successfully Saved");
		}  catch (Exception ex) {
			wrapperObj.setErrorFlag(true);
			wrapperObj.setStrMessage(exceptionObj.customSqlExection(ex));
		}
		return wrapperObj;
	}

	@Override
	public CustomerMasterDto fillCustomerDataOnPG(String customerId) {
		CustomerMasterDto customerDtoObj = new CustomerMasterDto();
		try {
			customerDtoObj = officeNetDao.fillCustomerDataOnPG(customerId);
		} catch (Exception ex) {
			customerDtoObj.setStrErrorMsg(exceptionObj.customSqlExection(ex));
		}
		return customerDtoObj;
	}

}
