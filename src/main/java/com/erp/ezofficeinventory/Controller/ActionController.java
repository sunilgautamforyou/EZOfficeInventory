package com.erp.ezofficeinventory.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.erp.ezofficeinventory.Constrant.AppConstant.sysMessage;
import com.erp.ezofficeinventory.Service.EZService;
import com.erp.ezofficeinventory.entity.CategoryMasterDto;
import com.erp.ezofficeinventory.entity.CustomerDto;
import com.erp.ezofficeinventory.entity.ItemMasterDto;
import com.erp.ezofficeinventory.entity.LoginDto;
import com.erp.ezofficeinventory.entity.MakePymntDto;
import com.erp.ezofficeinventory.entity.MrnDto;
import com.erp.ezofficeinventory.entity.PODto;
import com.erp.ezofficeinventory.entity.PartyMasterDto;
import com.erp.ezofficeinventory.entity.PrjSearch;
import com.erp.ezofficeinventory.entity.RFQDto;
import com.erp.ezofficeinventory.entity.ReceivedPymntDto;
import com.erp.ezofficeinventory.entity.ResponseWrapper;
import com.erp.ezofficeinventory.entity.SalesOrderDto;
import com.erp.ezofficeinventory.entity.TowerMaster;
import com.erp.ezofficeinventory.entity.UomDto;
import com.erp.ezofficeinventory.entity.UserInputParam;
import com.erp.ezofficeinventory.entity.stockMasterDto;






@RestController
public class ActionController {

	@Autowired
	EZService ezServiceObj;

	@PostMapping("/login")
	public Object loginIntoSystem(@RequestBody LoginDto loginDato) {
		System.err.println("loginDetails---------------"+loginDato.toString());
		LoginDto loginDetails = ezServiceObj.loginValidate(loginDato);
		if (loginDetails != null) {
			System.err.println("Login Success");
		}
		return loginDetails;
	}
	
	@PostMapping("/Create-New-UomMaster")
	public ResponseWrapper saveUomMaster(@RequestBody UomDto uomDao) {
		System.err.println("/save payment Receipts data--------------"+uomDao.toString());
		return ezServiceObj.iInsertIntoUomMaster(uomDao);
	}
	
	@PostMapping("/get-uom-search-list")
	public List<UomDto> searchUomMaster(@RequestBody UserInputParam searchVal) {
		System.err.println("/save Uom Data--------------"+searchVal.toString());
			return ezServiceObj.searchUomMasterData(searchVal);
	}
 	
	@PostMapping("/Create-New-ItemMaster")
	public ResponseWrapper saveItemMaster(@RequestBody ItemMasterDto itemMasterDto) {
		System.err.println("saveItemMaster---------------"+itemMasterDto.toString());
		return ezServiceObj.iInsertItemMaster(itemMasterDto);
	}
	
	@PostMapping("/Create-New-PartyMaster")
	public ResponseWrapper savePartyMaster(@RequestBody PartyMasterDto partyMasterDto) {
		System.err.println("saveItemMaster---------------"+partyMasterDto.toString());
		return ezServiceObj.iInsertPartyMaster(partyMasterDto);
	}
	
	@PostMapping("get-all-HomePG-uom-data")
	public List<UomDto> getUomHomePGData(@RequestBody PrjSearch prjSrch) {
		System.err.println("LoadUOMHomePageData---------------");
		return ezServiceObj.getUOMDataHomePG();
	}
	
	@GetMapping("/OpenUOM")
	public ModelAndView getOpenUomMasterPage(@RequestParam("searchVarData") String searchVarData,
			@RequestParam("uomId") Integer clientId) {	
		System.err.println("-----Open UOM Master ---");
		ModelAndView view = new ModelAndView();
		view.setViewName("UOM");
		view.addObject("sMode", searchVarData);
		view.addObject("uomData", ezServiceObj.fillUomDataOnEntryPG(clientId));
		return view;
	}	
	
	@PostMapping("get-all-HomePG-Party-data")
	public List<PartyMasterDto> getPartyMasterHomePGData(@RequestBody PrjSearch prjSrch) {
		List<PartyMasterDto> partyMasterDto = new ArrayList<>();
		if (prjSrch.getSearchVarData().equalsIgnoreCase("poParty")) {
			partyMasterDto = ezServiceObj.getVendorWhichPOExists();
		} else  {
			partyMasterDto = ezServiceObj.getPartyMasterDataHomePG();
		}
		return partyMasterDto;
	}
	
	@GetMapping("/OpenParty")
	public ModelAndView getOpenPartyMasterPage(@RequestParam("searchVarData") String searchVarData,
			@RequestParam("partyId") Integer partyId) {	
		System.err.println("-----Open getOpenPartyMasterPage Master ---");
		ModelAndView view = new ModelAndView();
		view.setViewName("partyMaster");
		view.addObject("sMode", searchVarData);
		view.addObject("partyData", ezServiceObj.fillPartyDataOnEntryPG(partyId));
		return view;
	}	
	
	@PostMapping("get-all-HomePG-Item-data")
	public List<ItemMasterDto> getItemMasterHomePGData(@RequestBody PrjSearch prjSrch) {
		System.err.println("getItemMasterHomePGData---------------");
		return ezServiceObj.getAllItemMasterHomePG();
	}
	
	@GetMapping("/OpenItem")
	public ModelAndView getOpenItemMasterPage(@RequestParam("searchVarData") String searchVarData,
			@RequestParam("itemId") Integer itemId) {	
		System.err.println("-----Open getOpenItemMasterPage Master ---");
		ModelAndView view = new ModelAndView();
		view.setViewName("ItemMaster");
		view.addObject("sMode", searchVarData);
		view.addObject("itemData", ezServiceObj.fillItemMasterDataonEntryPG(itemId));
		return view;
	}	
	
	@PostMapping("/get-tower-list")
	public List<TowerMaster> getAllTowerMaster(@RequestBody PrjSearch prjSrch) {
		System.err.println("-----Open getAllTowerMaster Master ---");
		return ezServiceObj.getAllTowerMaster(prjSrch);
	}
	
	@PostMapping("/Save-Customer-Master-Data")
	public ResponseWrapper saveCustomerMaster(@RequestBody CustomerDto customerDto) {
		System.err.println("-----Open saveCustomerMaster Master ---");
		return ezServiceObj.iInsertCustomerMaster(customerDto);
	}
	
	@PostMapping("/get-All-Customer-HomePG-Data")
	public List<CustomerDto> getAllCustomerHomePGData(@RequestBody PrjSearch prjSrch) {
		System.err.println("-----Open getAllCustomerHomePGData Master ---");
		return ezServiceObj.getAllCustomerHomePGData(null);
	}
	
	@GetMapping("/OpenCustomer")
	public ModelAndView getOpenCustomerMasterPage(@RequestParam("searchVarData") String searchVarData,
			@RequestParam("customerId") String customerId) {	
		System.err.println("-----Open getOpenCustomerMasterPage Master ---");
		ModelAndView view = new ModelAndView();
		view.setViewName("CustomerMaster");
		view.addObject("sMode", searchVarData);
		view.addObject("customerData", ezServiceObj.getAllCustomerHomePGData(customerId).get(0));
		return view;
	}	
	
	@PostMapping("/Search-ItemMaster-Data")
	public List<ItemMasterDto> searchItemMasterData(@RequestBody PrjSearch prjSrch) {
		System.err.println("-----Open Search Master ---" + prjSrch.getSearchVarData());
		return ezServiceObj.searchItemMasterData(prjSrch);
	}
	
	@PostMapping("/Save-PO-Data")
	public ResponseWrapper savePurchaseOrder(@RequestBody List<PODto> poDto) {
		System.err.println("-----Save savePurchaseOrder ---" + poDto.toString());
		return ezServiceObj.iSavePurchaseOrderData(poDto);
		
	}
	
	@PostMapping("/get-All-PO-HomePG-Data")
	public List<PODto> getAllPOHomePGData(@RequestBody PrjSearch prjSrch) {
		System.err.println("-----Open getAllPOHomePGData Master ---");
		return ezServiceObj.getAllPOData(null);
	}	
	
	@GetMapping("/OpenPurchaseOrder")
	public ModelAndView getOpenPODataPage(@RequestParam("searchVarData") String searchVarData,
			@RequestParam("poId") String poId) {	
		System.err.println("-----Open getOpenPODataPage Master ---");
		ModelAndView view = new ModelAndView();
		view.setViewName("purchase");
		view.addObject("sMode", searchVarData);
		view.addObject("po", ezServiceObj.getAllPOData(poId).get(0));
		return view;
	}	
	
	@PostMapping("/Fill-PO-DTL-GRID-DATA")
	public List<PODto> fillPoDtlGridData(@RequestBody PrjSearch prjSrch) {
		System.err.println("-----Open getAllPOHomePGData Master ---");
		return ezServiceObj.getAllPoDetailData(prjSrch.getSearchVarData());
	}
	
	@PostMapping("/search-customer-by-flatNo")
	public List<SalesOrderDto> getCustomerDataByFlatNo(@RequestBody PrjSearch prjSrch) {
		System.err.println("-----Open getCustomerDataByFlatNo Master ---");
		return ezServiceObj.getCustomerDataByFlatNo(prjSrch);
	}	
	
	@PostMapping("/Save-SO-Data")
	public ResponseWrapper saveSalesOrder(@RequestBody List<SalesOrderDto> soDto) {
		System.err.println("-----Save saveSalesOrder ---" + soDto.toString());
		return ezServiceObj.iInsertSalesOrderHead(soDto);
	}	
	
	@PostMapping("/get-All-SO-HomePG-Data")
	public List<SalesOrderDto> getAllSaleOrderHomePGData(@RequestBody PrjSearch prjSrch) {
		System.err.println("-----Open getAllSaleOrderHomePGData Master ---");
		return ezServiceObj.getAllSalesOrderData(null);
	}
	
	@GetMapping("/OpenSalesOrder")
	public ModelAndView getOpenSalesOrderEntryPage(@RequestParam("searchVarData") String searchVarData,
			@RequestParam("salesOrderId") String salesOrderId) {	
		System.err.println("-----Open getOpenSalesOrderEntryPage Master ---");
		ModelAndView view = new ModelAndView();
		view.setViewName("SalesOrder");
		view.addObject("sMode", searchVarData);
		view.addObject("so", ezServiceObj.getAllSalesOrderData(salesOrderId).get(0));
		return view;
	}	
	
	@PostMapping("/Fill-SO-DTL-GRID-DATA")
	public List<SalesOrderDto> getAllSaleOrderDtlPGData(@RequestBody PrjSearch prjSrch) {
		System.err.println("-----Open getAllSaleOrderDtlPGData Master ---");
		return ezServiceObj.getAllSalesOrderDetailsItem(prjSrch.getSearchVarData());
	}	
	
	@PostMapping("/getAllCategoryMaster")
	public List<CategoryMasterDto> getAllCategoryMaster(@RequestBody PrjSearch prjSrch) {
		System.err.println("-----Open getAllCategoryMaster Master ---");
		return ezServiceObj.getAllCategoryMaster();
	}
	
	@PostMapping("/fillPOInMakePymntPG")
	public List<PODto> fillPOInMakePymntPG(@RequestBody PrjSearch prjSrch) {
		System.err.println("-----Open getAllCategoryMaster Master ---");
		return ezServiceObj.fillPOInMKPymntPG(prjSrch.getSearchVarData());
	}	
	
	@PostMapping("/InsertMakePaymentData")
	public ResponseWrapper iInsertMakePaymentData(@RequestBody MakePymntDto makePaymentDto) {
		System.err.println("-----Insert iInsertMakePaymentData Master ---");
		return ezServiceObj.iInsertMakePaymentData(makePaymentDto);
	}
	
	@PostMapping("/getAllPaymentDetails")
	public List<MakePymntDto> getAllPaymentDataDto(@RequestBody PrjSearch prjSrch) {
		System.err.println("-----Open getAllPaymentDataDto ---");
		return ezServiceObj.getAllPaymentDataDto(Integer.valueOf(prjSrch.getSearchVarData()));
	}
	
	@PostMapping("/fillSOInRecvdPymntPG")
	public List<ReceivedPymntDto> fillSOInRecvdPymntPG(@RequestBody PrjSearch prjSrch) {
		System.err.println("-----Open fillSOInRecvdPymntPG Master ---");
		return ezServiceObj.fillSOInRecvdPymntPG(prjSrch.getSearchVarData());
	}
	
	@PostMapping("/iInsertRecevdPaymentData")
	public ResponseWrapper iInsertRecevdPaymentData(@RequestBody ReceivedPymntDto receivedPymntDto) {
		System.err.println("-----Insert iInsertRecevdPaymentData Master ---");
		return ezServiceObj.iInsertRecevdPaymentData(receivedPymntDto);
	}
	
	@PostMapping("/getAllPymntRecvdData")
	public List<ReceivedPymntDto> iInsertRecevdPaymentData(@RequestBody PrjSearch prjSearch) {
		System.err.println("-----Insert getAllPymntRecvdData Master ---");
		return ezServiceObj.getAllPymntRecvdData(prjSearch.getSearchVarData());
	}	
	
	@PostMapping("/InsertUpdateMrnData")
	public ResponseWrapper insertMrnDataObj(@RequestBody List<MrnDto> lstMrnDto) {
		System.err.println("-----Insert insertMrnDataObj  ---");
		return ezServiceObj.iInsertUpdateMrnDataObj(lstMrnDto);
	}
	
	@PostMapping("/getAllPoItemsForMrnDetails")
	public List<MrnDto> getAllPoItemsForMrnDetails(@RequestBody PrjSearch prjSrch) {
		System.err.println("-----open getAllPoItemsForMrnDetails  ---");
		return ezServiceObj.getAllPoItemForMRNDetails(prjSrch.getSearchVarData());
	}
	
	@PostMapping("/getAllMrnHomePGDataObj")
	public List<MrnDto> getAllMrnHomePGDataObj(@RequestBody PrjSearch prjSrch) {
		System.err.println("-----open getAllMrnHomePGDataObj  ---");
		return ezServiceObj.getAllMrnDataOnHomePG(null);
	}	
	
	@PostMapping("/getAllItemForMRNDetails")
	public List<MrnDto> getAllItemForMRNDetails(@RequestBody PrjSearch prjSrch) {
		System.err.println("-----open getAllMrnHomePGDataObj  ---");
		return ezServiceObj.getAllItemForMRNDetails(prjSrch.getSearchVarData());
	}	
	
	@GetMapping("/OpenMrnEntry")
	public ModelAndView getOpenMrnEntryPage(@RequestParam("searchVarData") String searchVarData,
			@RequestParam("mrnId") String mrnId) {	
		System.err.println("-----Open getOpenMrnEntryPage Entry Page ---");
		ModelAndView view = new ModelAndView();
		view.setViewName("Mrn");
		view.addObject("sMode", searchVarData);
		view.addObject("mrn", ezServiceObj.getAllMrnDataOnHomePG(mrnId).get(0));
		return view;
	}	
	@PostMapping("/Save-RFQ-Data")
	public ResponseWrapper iInsertRFQData(@RequestBody List<RFQDto> rfqArrayDto) {
		System.err.println("-----Insert rfqArrayDto Master ---");
		return ezServiceObj.iInsertRFQHeader(rfqArrayDto);
	}	
	
	@PostMapping("/LoadRFQHomePGData")
	public List<RFQDto> getAllQuotationDataHomePage(@RequestBody PrjSearch prjSrch) {
		System.out.println("Get All Quotation Home Page Data");
		return ezServiceObj.getAllQuotationHomePGData(null);
	}
	@GetMapping("/OpenRFQEntry")
	public ModelAndView getOpenRFQEntryPage(@RequestParam("searchVarData") String searchVarData,
			@RequestParam("rfQId") String rfQId) {	
		System.err.println("-----Open getOpenRFQEntryPage Entry Page ---");
		ModelAndView view = new ModelAndView();
		view.setViewName("RFQ");
		view.addObject("sMode", searchVarData);
		view.addObject("rfq", ezServiceObj.getAllQuotationHomePGData(rfQId).get(0));
		return view;
	}	
	
	@PostMapping("/bindQuotationDataGrid")
	public List<RFQDto> bindQuotationDataGrid(@RequestBody PrjSearch prjSrch) {
		return ezServiceObj.bindQuotationDataGrid(prjSrch.getSearchVarData());
	};
	
	@PostMapping("/findRFQInSalesOrder")
	public List<SalesOrderDto> findRFQInSalesOrder(@RequestBody PrjSearch prjSrch) {
		return ezServiceObj.findRFQInSalesOrder(Integer.valueOf(prjSrch.getTowerNo())
				,Integer.valueOf(prjSrch.getFlatNo())
				,Integer.valueOf(prjSrch.getCustomerName()));
	};	

	@GetMapping("/PrintPO")
	public ModelAndView openPOReport(@RequestParam("poId") String poId) {
		System.err.println("-----Print PO ---");
		ModelAndView view = new ModelAndView();
		view.setViewName("PORpt");
		view.addObject("poRpt", ezServiceObj.vwPurchaseOrderReport(Integer.valueOf(poId)));
		return view;
	}
	
	@PostMapping("/getAllPoItemReport")
	public List<PODto> getAllPoItemForReport(@RequestBody PrjSearch prjSrch) {
		return ezServiceObj.getAllPoDetailsForReport(Integer.valueOf(prjSrch.getSearchVarData()));
	};	
	
	@GetMapping("/PrintRFQ")
	public ModelAndView openRFQReport(@RequestParam("rfQId") String rfQId) {
		System.err.println("-----Print Quotation ---");
		ModelAndView view = new ModelAndView();
		view.setViewName("RFQRpt");
		view.addObject("rfqRpt", ezServiceObj.vwQuotationReportHeader(Integer.valueOf(rfQId)));
		return view;
	}	
	
	@PostMapping("/getAllRFQItemForReport")
	public List<RFQDto> getAllRFQItemForReport(@RequestBody PrjSearch prjSrch) {
		return ezServiceObj.getQuotationDtlReportDat(Integer.valueOf(prjSrch.getSearchVarData()));
	};		
	
	@GetMapping("/PrintSalesOrder")
	public ModelAndView openSalesOrderReport(@RequestParam("salesOrderId") String salesOrderId) {
		System.err.println("-----Print Sales Order Report ---");
		ModelAndView view = new ModelAndView();
		view.setViewName("SalesOrderRpt");
		view.addObject("soRpt", ezServiceObj.vwSalesOrderReportHeader(Integer.valueOf(salesOrderId)));
		return view;
	}	
	
	@GetMapping("/PrintSalesOrderStockReport")
	public ModelAndView openSalesOrderStockReport(@RequestParam("towerNo") String towerNo,
			@RequestParam("flatNo") String flatNo,@RequestParam("fromDate") String fromDate,
			@RequestParam("toDate") String toDate,@RequestParam("customerName") String customerName,
			@RequestParam("customerMobileNo") String customerMobileNo,@RequestParam("towerName") String towerName,
			@RequestParam("customerId") String customerId
			) {
		System.err.println("-----Print Sales Order Stock Report ---");
		PrjSearch projSrchData = new PrjSearch();
		projSrchData.setTowerNo(towerNo);
		projSrchData.setFlatNo(flatNo==""?"":flatNo);
		projSrchData.setFromDate(fromDate);
		projSrchData.setToDate(toDate);
		if (customerName.equalsIgnoreCase("Choose Customer")) {
			projSrchData.setCustomerName("");
			projSrchData.setSearchVarData("");
			projSrchData.setCustomerId("");
		} else {
			projSrchData.setCustomerName(customerName);
			projSrchData.setSearchVarData("Customer Name");
			projSrchData.setCustomerId(customerId);
		}
		projSrchData.setCustomerMobileNo(customerMobileNo);
		if (towerName.equalsIgnoreCase("Choose Tower Number..")) {
			projSrchData.setTowerName("");
		} else {
			projSrchData.setTowerName(towerName);
		}
		ModelAndView view = new ModelAndView();
		view.setViewName("PrintStockSalesRpt");
		view.addObject("stkRpt", projSrchData);
		return view;
	}	
	
	@PostMapping("/getAllSalesOrderDtlReport")
	public List<SalesOrderDto> getAllSalesOrderDtlReport(@RequestBody PrjSearch prjSrch) {
		return ezServiceObj.getAllSalesOrderDtlReport(Integer.valueOf(prjSrch.getSearchVarData()));
	};		
	
	@PostMapping("/getItemDetailStockReport")
	public List<ItemMasterDto> getItemDetailStockReport(@RequestBody PrjSearch prjSrch) {
		return ezServiceObj.getItemDetailStockReport(Integer.valueOf(prjSrch.getSearchVarData()));
	};
	
	@PostMapping("/getDataForStockMasterReport")
	public List<stockMasterDto> getDataForStockMasterReport(@RequestBody PrjSearch prjSrch) {
		return ezServiceObj.getStockItemReport(prjSrch);
	}
	
	@PostMapping("/save-category-master")
	public ResponseWrapper iInsertCategoryMaster(@RequestBody CategoryMasterDto categoryDto) {
		return ezServiceObj.iInsertCategoryMaster(categoryDto);
	}
	
	@PostMapping("/save-subCateg-master")
	public ResponseWrapper iInsertSubCategoryMaster(@RequestBody CategoryMasterDto categoryDto) {
		return ezServiceObj.iInsertSubCategoryMaster(categoryDto);
	}	
	
	@PostMapping("/getAllItemSubCatMasterDetail")
	public List<CategoryMasterDto> getAllItemSubCatMasterDetail(@RequestBody PrjSearch prjSrch) {
		return ezServiceObj.getAllItemSubCatDetails();
	}
	
	@PostMapping("/getSubCategoryItem")
	public List<CategoryMasterDto> getSubCategItem(@RequestBody PrjSearch prjSrch) {
		return ezServiceObj.getSubCategoryItem(Integer.valueOf(prjSrch.getCategId()));
	}	
	
	@PostMapping("/getContractorData")
	public List<PartyMasterDto> getContractorData(@RequestBody PrjSearch prjSrch) {
		return ezServiceObj.getContractorList(null, prjSrch.getSearchVarData());
	}
	
	@PostMapping("/getPaymentDataAgPO")
	public List<MakePymntDto> getPaymentAgPO(@RequestBody PrjSearch prjSrch) {
		return ezServiceObj.getPymntAgPO(prjSrch.getSearchVarData());
	}
	
	@PostMapping("/getPymntRecvdAgSO")
	public List<ReceivedPymntDto> getPymntRecvdAgSO(@RequestBody PrjSearch prjSrch) {
		return ezServiceObj.getPymntRecvdAgSO(prjSrch.getSearchVarData());
	}	
			
	
	@PostMapping("/search-SoStk-Rpt")
	public List<SalesOrderDto> getSalesOrderStkRpt(@RequestBody PrjSearch prjSrch) {
		return ezServiceObj.getSalesOrderStkRpt(prjSrch);
	}
	
	@PostMapping("/getSaleOrderPymntDtls")
	public SalesOrderDto getSaleOrderPymntDtls(@RequestBody PrjSearch prjSrch) {
		return ezServiceObj.getSaleOrderPymntDtls(prjSrch.getSearchVarData());
	}
	
	@PostMapping("/getSOPymntRecvdData")
	public List<SalesOrderDto> getSOPymntRecvdData(@RequestBody PrjSearch prjSrch) {
		return ezServiceObj.getSOPymntRecvdData(prjSrch);
	}
	
	@PostMapping("/getCustomerListFromSO")
	public List<SalesOrderDto> getCustomerListFromSO(@RequestBody PrjSearch prjSrch){
		return ezServiceObj.getCustomerListFromSO();
	}
	
	@PostMapping("/getTotalPaymentDetailsByPONo")
	public PODto getTotalPaymentDetailsByPONo(@RequestBody PrjSearch prjSrch) {
		return ezServiceObj.getTotalPaymentDetailsByPONo(prjSrch.getSearchVarData());
	}
	
	@PostMapping("/getAllPymentPaidHistoryData")
	public List<PODto> getAllPymentPaidHistoryData(@RequestBody PrjSearch prjSrch) {
		return ezServiceObj.getPymntDataByPO(prjSrch.getCustomerName(),prjSrch.getSearchVarData());
	}
	
	@PostMapping("/searchCustomerData")
	public List<CustomerDto> searchCustomerData(@RequestBody PrjSearch prjSrch) {
		return ezServiceObj.searchCustomerData(prjSrch);
	}	
	
	@PostMapping("/getCustomerSOAStmtData")
	public List<SalesOrderDto> getCustomerSOAStmtData(@RequestBody PrjSearch prjSrch) {
		return ezServiceObj.getCustomerSOAStmtData(prjSrch);
	}
	@PostMapping("/fillCustomerByFrmSO")
	public List<CustomerDto> fillCustomerByFrmSO(@RequestBody PrjSearch prjSrch) {
		System.err.println("-----Open getAllCustomerHomePGData Master ---");
		return ezServiceObj.fillCustomerByFrmSO(null);
	}	
	
	@PostMapping("/iUpdateReceivedPayment")
	public ResponseWrapper iUpdateReceivedPayment(@RequestBody ReceivedPymntDto receivedPymntDto) {
		return ezServiceObj.iUpdateReceivedPayment(receivedPymntDto);
	}

}
