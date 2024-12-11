package com.tradestrome.loanApp.Conroller;

import java.io.IOException;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.tradestrome.loanApp.Entity.CustomerMasterDto;
import com.tradestrome.loanApp.Entity.ProjInputParam;
import com.tradestrome.loanApp.Entity.ResponseWrapper;
import com.tradestrome.loanApp.service.OfficeNetService;

@RestController
public class ActionController {
	
	@Autowired
	private OfficeNetService officeNetServiceObj;

@PostMapping("customerMst/saveDocs")
   // @RequestMapping(value = "customerMst/saveDocs", method = RequestMethod.POST, consumes = { "multipart/form-data" })
	public ResponseWrapper saveDocumentObj(@RequestPart("adsImages") @Valid @NotNull MultipartFile[] adsImages,
			@RequestPart("customer") @Valid CustomerMasterDto customerMasterDto
			) throws IOException {
		ResponseWrapper wrapper = new ResponseWrapper();
		String uploadDirectory = "./OfficeNet/src/main/resources/static/images/ads"; //"C:\\OfficeNet\\CustomerMasterDocs\\";
		
		for (MultipartFile imageFile : adsImages) {
			wrapper = officeNetServiceObj.saveImageToStorage(uploadDirectory, imageFile,customerMasterDto);
		}
		
		return wrapper;
		
	}
	
	@PostMapping("customerMst/saveCustomerMstObj")
	public ResponseWrapper saveCustomerMasterData(@RequestBody CustomerMasterDto customerMasterDto) {
		return officeNetServiceObj.saveCustomerDate(customerMasterDto);
	}
	
	@PostMapping("customerMst/fillCustomerData")
	public CustomerMasterDto fillCustomerDataOnPG(@RequestBody ProjInputParam prjData) {
		return officeNetServiceObj.fillCustomerDataOnPG(prjData.getCustomerId());
	}

}
