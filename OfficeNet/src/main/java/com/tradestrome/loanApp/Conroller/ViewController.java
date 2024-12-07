package com.tradestrome.loanApp.Conroller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

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
	
	@GetMapping("/AddCustomer")
	public ModelAndView loadcustomerPG() {
		System.err.println("Customer Master Page");
		ModelAndView view = new ModelAndView();
		view.setViewName("Master_Customer");
		return view;		
	}		
}
