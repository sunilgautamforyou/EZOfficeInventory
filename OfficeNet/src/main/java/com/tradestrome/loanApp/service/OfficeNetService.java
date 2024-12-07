package com.tradestrome.loanApp.service;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

import com.tradestrome.loanApp.Entity.CustomerMasterDto;
import com.tradestrome.loanApp.Entity.ResponseWrapper;

public interface OfficeNetService {
	public ResponseWrapper saveImageToStorage(String uploadDirectory, MultipartFile imageFile) throws IOException; 
	public ResponseWrapper saveCustomerDate(CustomerMasterDto customerDto);
}
