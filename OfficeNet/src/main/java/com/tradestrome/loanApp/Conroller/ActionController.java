package com.tradestrome.loanApp.Conroller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.tradestrome.loanApp.Entity.CustomerMasterDto;
import com.tradestrome.loanApp.Entity.ResponseWrapper;
import com.tradestrome.loanApp.service.OfficeNetService;

@RestController
public class ActionController {
	
	@Autowired
	private OfficeNetService officeNetServiceObj;

	@PostMapping("customerMst/saveDocs")
	public ResponseWrapper saveDocumentObj(@RequestParam("adsImages") MultipartFile[] adsImages) throws IOException {
		ResponseWrapper wrapper = new ResponseWrapper();
		String uploadDirectory = "C:\\OfficeNet\\CustomerMasterDocs\\";
		
		for (MultipartFile imageFile : adsImages) {
			wrapper = officeNetServiceObj.saveImageToStorage(uploadDirectory, imageFile);
		}
		
		return wrapper;
		
	}
	
	@PostMapping("customerMst/saveCustomerMstObj")
	public ResponseWrapper saveCustomerMasterData(@RequestBody CustomerMasterDto customerMasterDto) {
		return officeNetServiceObj.saveCustomerDate(customerMasterDto);
	}

}
