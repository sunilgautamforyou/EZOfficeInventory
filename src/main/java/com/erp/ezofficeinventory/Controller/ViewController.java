package com.erp.ezofficeinventory.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.erp.ezofficeinventory.entity.PrjSearch;




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
		ModelAndView view = new ModelAndView();
		view.addObject("sMode", "new");
		view.setViewName("CategoryMaster");
		return view;
	}
	
	@GetMapping("/SaleOrderStkRpt")
	public ModelAndView getSaleOrderStkRpt() {	
		ModelAndView view = new ModelAndView();
		view.setViewName("SalesOrderStockRpt");
		return view;
	}	
	
	@GetMapping("/pymntRcvdRpt")
	public ModelAndView getPymntRcptSOA() {	
		ModelAndView view = new ModelAndView();
		view.setViewName("Report_PymntRcpt");
		return view;
	}	
	
	@GetMapping("/pymntPaidRpt")
	public ModelAndView getPymntPaidSOA() {	
		ModelAndView view = new ModelAndView();
		view.setViewName("Report_pymntPaid");
		return view;
	}		

	@GetMapping("/reportPymntSOA")
	public ModelAndView openPymntRcdSOA(@RequestParam("towerNo") String towerNo,
			@RequestParam("flatNo") String flatNo,@RequestParam("customerId") String customerId,
			@RequestParam("customerMobileNo") String customerMobileNo,@RequestParam("salesOrderId") String salesOrderId,
			@RequestParam("customerName") String customerName,			
			@RequestParam("dtFrom") String fromDate,
			@RequestParam("dtTo") String toDate) 
	{
		PrjSearch projSrchData = new PrjSearch();
		projSrchData.setTowerNo(towerNo +"/" + flatNo);
		projSrchData.setFlatNo(flatNo==""?"0":flatNo);
		projSrchData.setCustomerId(customerId==""?"0":customerId);
		projSrchData.setCustomerMobileNo(customerMobileNo==""?"":customerMobileNo);
		projSrchData.setSalesOrderId(salesOrderId==""?"0":salesOrderId);
		projSrchData.setCustomerName(customerName==""?"":customerName);
		projSrchData.setTowerName(towerNo==""?"0":towerNo);
		projSrchData.setFromDate(fromDate);
		projSrchData.setToDate(toDate);
		
		
		ModelAndView view = new ModelAndView();
		view.setViewName("Print_customer_SOA");
		view.addObject("rcvdSOA", projSrchData);
		return view;
	}	
	
	@GetMapping("/reportPymntSOAStmt")
	public ModelAndView openPymntRcvdSOAStmt(@RequestParam("towerNo") String towerNo,
			@RequestParam("flatNo") String flatNo,
			@RequestParam("dtFrom") String fromDate,
			@RequestParam("dtTo") String toDate,
			@RequestParam("customerId") String customerId,
			@RequestParam("towerId") String towerId) {
		PrjSearch projSrchData = new PrjSearch();
		if (towerNo.trim().contains("Choose Tower Number..")) {
			towerNo = "";
		}
		projSrchData.setTowerNo(towerNo);
		projSrchData.setFlatNo(flatNo==""?"0":flatNo);
		projSrchData.setPoId(flatNo==""?"":flatNo);
		projSrchData.setFromDate(fromDate);
		projSrchData.setToDate(toDate);
		projSrchData.setCustomerId(customerId);
		projSrchData.setTowerId(towerId);
		ModelAndView view = new ModelAndView();
		view.setViewName("ReceivedPymntSOA");
		view.addObject("rcvdSOA", projSrchData);		
		return view;
	}
	
	@GetMapping("/reportSupplierSOA")
	public ModelAndView openSupplierPymntSOA(@RequestParam("supplierId") String supplierId,
			@RequestParam("supplierName") String supplierName,@RequestParam("supplierMobileNo") String supplierMobileNo,
			@RequestParam("poId") String poId,
			@RequestParam("fromDate") String fromDate,
			@RequestParam("toDate") String toDate
			) {
		PrjSearch prjSrchData = new PrjSearch();
		prjSrchData.setSupplierId(supplierId);
		prjSrchData.setSupplierName(supplierName);
		prjSrchData.setSupplierMobileNo(supplierMobileNo);
		prjSrchData.setPoId(poId);
		prjSrchData.setFromDate(fromDate);
		prjSrchData.setToDate(toDate);
		
		ModelAndView view = new ModelAndView();
		view.setViewName("PrintVendor_SOA");
		view.addObject("vendSOA",prjSrchData);
		return view;
	}
	
}
