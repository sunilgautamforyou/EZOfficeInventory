package com.erp.ezofficeinventory.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;




@RestController
public class ViewController {
	
	
	@GetMapping("/")
	public ModelAndView getLoginPage() {
		System.err.println("Login Page Load");
		ModelAndView view = new ModelAndView();
		view.setViewName("login");
//		view.addObject("sMode", "new");
//		view.setViewName("HomePGMrn");
		return view;		
	}
	
	@GetMapping("/dashBoard")
	public ModelAndView getDashboardPage() {
		System.err.println("-----dasboard---");
		ModelAndView view = new ModelAndView();
		view.setViewName("HomePGCustomer");
		return view;
	}	
	@GetMapping("/uomMaster")
	public ModelAndView getUomMaster() {
		System.err.println("-----uomMaster---");
		ModelAndView view = new ModelAndView();
		view.setViewName("HomePGUom");
		return view;
	}	
	@GetMapping("/ItemMaster")
	public ModelAndView getItemMasterPage() {
		System.err.println("-----Item Master ---");
		ModelAndView view = new ModelAndView();
		view.setViewName("HomePGItemMaster");
		return view;
	}	
	
	@GetMapping("/partyMaster")
	public ModelAndView getPartyMasterPage() {
		System.err.println("-----Party Master ---");
		ModelAndView view = new ModelAndView();
		view.setViewName("HomePGPartyMaster");
		return view;
	}
	
	@GetMapping("/AddNewUOM")
	public ModelAndView getUomMasterEntryPage() {	
		System.err.println("-----New UOM Master ---");
		ModelAndView view = new ModelAndView();
		view.addObject("sMode", "new");
		view.setViewName("UOM");
		return view;
	}
	
	@GetMapping("/AddNewpartyMaster")
	public ModelAndView getAddNewPartyMasterPage() {
		System.err.println("-----New Party Master ---");
		ModelAndView view = new ModelAndView();
		view.addObject("sMode", "new");
		view.setViewName("partyMaster");
		return view;
	}	
	
	@GetMapping("/AddNewItemMaster")
	public ModelAndView getAddNewItemMasterPage() {
		System.err.println("-----New Item Master ---");
		ModelAndView view = new ModelAndView();
		view.addObject("sMode", "new");
		view.setViewName("ItemMaster");
		return view;
	}	
	
	@GetMapping("/AddNewCustomerMaster")
	public ModelAndView getAddNewCustomerMasterPage() {
		System.err.println("-----New Customer Master ---");
		ModelAndView view = new ModelAndView();
		view.addObject("sMode", "new");
		view.setViewName("CustomerMaster");
		return view;
	}	
	
	@GetMapping("/AddNewPO")
	public ModelAndView getAddNewPurchaseOrderPage() {
		System.err.println("-----New Purchase Order ---");
		ModelAndView view = new ModelAndView();
		view.addObject("sMode", "new");
		view.setViewName("purchase");
		return view;
	}	
	
	@GetMapping("/purchase")
	public ModelAndView getPoHomePG() {
		System.err.println("----- Purchase Order Home Page ---");
		ModelAndView view = new ModelAndView();
		view.addObject("sMode", "new");
		view.setViewName("HomePGPO");
		return view;
	}	
	
	@GetMapping("/salesOrder")
	public ModelAndView getSoHomePG() {
		System.err.println("----- Sales Order Home Page ---");
		ModelAndView view = new ModelAndView();
		view.addObject("sMode", "new");
		view.setViewName("HomePGSalesOrder");
		return view;
	}	
	
	@GetMapping("/AddNewSalesOrder")
	public ModelAndView getAddNewSalesOrderPage() {
		System.err.println("-----New Sales order ---");
		ModelAndView view = new ModelAndView();
		view.addObject("sMode", "new");
		view.setViewName("SalesOrder");
		return view;
	}	
	
	@GetMapping("/makePayment")
	public ModelAndView getMakePayment() {
		System.err.println("----- Make Payment Home Page ---");
		ModelAndView view = new ModelAndView();
		view.addObject("sMode", "new");
		view.setViewName("MakePayment");
		return view;
	}	
	
	@GetMapping("/receicePymnt")
	public ModelAndView getRecievePayment() {
		System.err.println("----- Make Receive Home Page ---");
		ModelAndView view = new ModelAndView();
		view.addObject("sMode", "new");
		view.setViewName("ReceivePymnt");
		return view;
	}	
	@GetMapping("/mrn")
	public ModelAndView openMrnEntryPage() {
		System.err.println("----- Make MRN Home Page ---");
		ModelAndView view = new ModelAndView();
		view.addObject("sMode", "new");
		view.setViewName("HomePGMrn");
		return view;
	}	
	@GetMapping("/AddNewMRN")
	public ModelAndView addNewMrnEntryPage() {
		System.err.println("----- Opem New MRN Entry Page ---");
		ModelAndView view = new ModelAndView();
		view.addObject("sMode", "new");
		view.setViewName("Mrn");
		return view;
	}	
	@GetMapping("/rfq")
	public ModelAndView openRFQPage() {
		System.err.println("----- Opem Quotation Home Page ---");
		ModelAndView view = new ModelAndView();
		view.addObject("sMode", "new");
		view.setViewName("HomePGRFQ");
		return view;
	}	
	@GetMapping("/AddNewRFQ")
	public ModelAndView addNewRFQEntryPage() {
		System.err.println("----- Opem New RFQ Entry Page ---");
		ModelAndView view = new ModelAndView();
		view.addObject("sMode", "new");
		view.setViewName("RFQ");
		return view;
	}	
	
	@GetMapping("/stockReport")
	public ModelAndView openStockReport() {
		System.err.println("----- Opem Stock Report Page ---");
		ModelAndView view = new ModelAndView();
		view.addObject("sMode", "new");
		view.setViewName("StockReport");
		return view;
	}
	
	@GetMapping("/category")
	public ModelAndView openCateoryMaster() {
		System.err.println("----- Open Category Master Page ---");
		ModelAndView view = new ModelAndView();
		view.addObject("sMode", "new");
		view.setViewName("CategoryMaster");
		return view;
	}	
}
