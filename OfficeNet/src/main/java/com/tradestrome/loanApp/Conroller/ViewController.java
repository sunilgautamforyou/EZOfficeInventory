package com.tradestrome.loanApp.Conroller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.tradestrome.loanApp.Entity.ProjInputParam;

@RestController
public class ViewController {

	@GetMapping("/")
	public ModelAndView loadMasterPage() {
		System.err.println("MasterPage Page Load");
		ModelAndView view = new ModelAndView();
		view.setViewName("DayBook_Payments");
		return view;		
	}
	
	@GetMapping("/receivedPymnt")
	public ModelAndView loadRecvdPymnt() {
		System.err.println("Recevied Page Load");
		ModelAndView view = new ModelAndView();
		view.setViewName("tran_Pymnt_recvd");
		return view;		
	}	
	
	@GetMapping("/CustomerHomePG")
	public ModelAndView loadcustomerPG() {
		System.err.println("Customer Master Page");
		ModelAndView view = new ModelAndView();
		view.setViewName("HomePage_Customer");
		return view;		
	}	
	@GetMapping("/AddNewCustomer")
	public ModelAndView addNewCustomer() {
		System.err.println("Customer Master Entry Page");
		ProjInputParam prjInputDat = new ProjInputParam();
		prjInputDat.setsMode("New");
		ModelAndView view = new ModelAndView();
		view.addObject("customer", prjInputDat);
		view.setViewName("Master_Customer");
		return view;		
	}		
}
