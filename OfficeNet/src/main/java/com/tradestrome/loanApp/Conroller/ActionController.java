package com.tradestrome.loanApp.Conroller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Base64;
import java.util.List;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.tradestrome.loanApp.Entity.CustomerDocs;
import com.tradestrome.loanApp.Entity.CustomerMasterDto;
import com.tradestrome.loanApp.Entity.ProjInputParam;
import com.tradestrome.loanApp.Entity.ResponseWrapper;
import com.tradestrome.loanApp.service.OfficeNetService;

@RestController
public class ActionController {
	
	@Autowired
	private OfficeNetService officeNetServiceObj;

@PostMapping("customerMst/saveDocs")
	public ResponseWrapper saveDocumentObj(@RequestPart("adsImages") @Valid @NotNull MultipartFile[] adsImages,
			@RequestPart("customer") @Valid CustomerMasterDto customerMasterDto
			) throws IOException {
		ResponseWrapper wrapper = new ResponseWrapper();
		String uploadDirectory = "/OfficeNet/CustomerMasterDocs"; //"C:\\OfficeNet\\CustomerMasterDocs\\";
		
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
	
	@PostMapping("customerMst/showCustomerDocs")
	public List<CustomerDocs> getCustomerImg(@RequestBody ProjInputParam prjData) {
		return officeNetServiceObj.showCustomerDocs(prjData);
	}


}
