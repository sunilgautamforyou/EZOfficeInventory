package com.tradestrome.loanApp.service;

import java.io.File;
import java.nio.file.Files;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;

import org.apache.tomcat.jakartaee.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.tradestrome.loanApp.Dao.OfficeNetDao;
import com.tradestrome.loanApp.Entity.AppConstrant;
import com.tradestrome.loanApp.Entity.CustomerDocs;
import com.tradestrome.loanApp.Entity.CustomerMasterDto;
import com.tradestrome.loanApp.Entity.DtoDayBookPayable;
import com.tradestrome.loanApp.Entity.ProjInputParam;
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
			String currentDateTime = new SimpleDateFormat("yyyyMMddhhmmss").format(new Date());
			String fileExtension = FilenameUtils.getExtension(imageFile.getOriginalFilename());
			
			uniqueFileName = currentDateTime + "_" + customerDto.getDocType()+"."+ fileExtension;
			
			uniqueFileName = StringUtils.cleanPath(uniqueFileName);
			
			Path uploadPath = Path.of(uploadDirectory);
			Path filePath = uploadPath.resolve(uniqueFileName);
			
			if (!Files.exists(uploadPath)) {
				Files.createDirectories(uploadPath);
			}
			
			System.out.println("Path:"+filePath.toString());
			
			Files.copy(imageFile.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);
			customerDocs.setAttachMentId(officeNetDao.GetCustAttachId(customerDto.getCust_Id()));
			customerDocs.setDocFileName(uniqueFileName);
			customerDocs.setCustomerId(customerDto.getCust_Id());
			customerDocs.setDocFilePath(filePath.toAbsolutePath().toString());
			customerDocs.setDocType(customerDto.getDocType());
			officeNetDao.iInsertCustomerAttach(customerDocs);
			wrapperObj.setErrorFlag(false);
			wrapperObj.setStrMessage(AppConstrant.errorMsg.UPLOAD_SUCCESS_MESSAGE);
			wrapperObj.setStrFileName(uniqueFileName);
			wrapperObj.setRecordNumber(customerDocs.getAttachMentId());
			wrapperObj.setFilePath(filePath.toAbsolutePath().toString());
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
			wrapperObj.setStrMessage(AppConstrant.errorMsg.SUCCESS_MESSAGE);
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

	@Override
	public List<CustomerDocs> showCustomerDocs(ProjInputParam prjInputParams) {
		List<CustomerDocs> customerDocsArray = new ArrayList<>();
		try {
			if (prjInputParams.getFileAttachmentId().equalsIgnoreCase("")) {
				prjInputParams.setFileAttachmentId(null);
			}
			customerDocsArray = officeNetDao.showCustomerDocs(prjInputParams);
			
			for (CustomerDocs customerDocs : customerDocsArray) {
				File dataFile = new File(customerDocs.getDocFilePath());
				if (dataFile.exists()) {
					byte[] fileContent  = Files.readAllBytes(dataFile.toPath());
					customerDocs.setEncodedString(Base64.getEncoder().encodeToString(fileContent));
				}
			}
		} catch (Exception ex) {
			customerDocsArray.get(0).setStrMessage(exceptionObj.customSqlExection(ex));
		}
		return customerDocsArray;
	}

	@Override
	public List<CustomerMasterDto> getDataCustomerHomePG() {
		return officeNetDao.getDataCustomerHomePG();
	}

	@Override
	public List<CustomerMasterDto> fillCustomerData(ProjInputParam projInputParam) {
		List<CustomerMasterDto> dtoCustomerListObj = new ArrayList<>();
		try {
			dtoCustomerListObj = officeNetDao.fillCustomerData(projInputParam);
		} catch (Exception ex) {
			dtoCustomerListObj.get(0).setStrErrorMsg(exceptionObj.customSqlExection(ex));
		}
		return dtoCustomerListObj;
	}

	@Override
	public ResponseWrapper iInsertBillPayableData(DtoDayBookPayable billDto) {
		ResponseWrapper wrapperObj = new ResponseWrapper();
		try {
			officeNetDao.iInsertBillPayableData(billDto);
			wrapperObj.setRecordNumber(billDto.getBill_id());
			
			@SuppressWarnings("deprecation")
			
			Date billDate = new Date(billDto.getBill_date());
			
			Calendar calendar = new GregorianCalendar();
			calendar.setTime(billDate);
			int year = calendar.get(Calendar.YEAR);
			int month = calendar.get(Calendar.MONTH) + 1;
			
			String monthName = month + "-" + year;
			
			String paddedString  = org.apache.commons.lang.StringUtils.leftPad(String.valueOf(wrapperObj.getRecordNumber()), 2, "0");
			
			String customerName = billDto.getCustomerName().substring(0,billDto.getCustomerName().indexOf(" "));
			
			String mobileNo = billDto.getCustomerName()
					.substring(billDto.getCustomerName().indexOf("[")+1,billDto.getCustomerName().indexOf("]"));
			
			String billNo = "DSN/"+ billDto.getBillType_shrt_nm() +"/"+ monthName + 
			"/"+customerName+"-"+ mobileNo.substring(5, mobileNo.length()) +"/"+paddedString;	
			
			officeNetDao.iUpdateBillNo(billNo, wrapperObj.getRecordNumber());
			
			wrapperObj.setErrorFlag(false);
			wrapperObj.setStrMessage(AppConstrant.errorMsg.SUCCESS_MESSAGE + "[" + billNo + "]");
			wrapperObj.setBillNumber(billNo);
			
			
		} catch (Exception ex) {
			wrapperObj.setErrorFlag(true);
			wrapperObj.setStrMessage(exceptionObj.customSqlExection(ex));
		}
		return wrapperObj;
	}
	

	@Override
	public List<DtoDayBookPayable> getAllBillType() {
		return officeNetDao.getAllBillType();
	}

}
