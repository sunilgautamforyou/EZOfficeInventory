package com.erp.ezofficeinventory.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.erp.ezofficeinventory.Constrant.AppConstant;
import com.erp.ezofficeinventory.Utility.Utility;
import com.erp.ezofficeinventory.dao.EZDao;
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
import com.erp.ezofficeinventory.entity.StockRptDto;
import com.erp.ezofficeinventory.entity.TowerMaster;
import com.erp.ezofficeinventory.entity.UomDto;
import com.erp.ezofficeinventory.entity.UserInputParam;
import com.erp.ezofficeinventory.entity.stockMasterDto;
import com.erp.ezofficeinventory.exception.CustomSqlExection;


@Service
public class EZServiceImpl implements EZService {

	@Autowired
	EZDao ezDaoObj;
	
    @Autowired
    @Qualifier(value = "utility")
    Utility utility;
	
	CustomSqlExection sqlException = new CustomSqlExection();
	
	@Override
	public LoginDto loginValidate(LoginDto loginDetails) {
		LoginDto loginDto = new LoginDto();
		try {
			loginDto = ezDaoObj.loginValidate(loginDetails.getLoginUserName(), loginDetails.getPassword());
		} catch (Exception ex) {
			loginDto.setErrorMesage(Utility.getStackTrace(ex));
		}
		return loginDto;
	}



	@Override
	public ResponseWrapper iInsertIntoUomMaster(UomDto uomDto) {
		ResponseWrapper responseWrapper = new ResponseWrapper(); 
		try {
			if (uomDto.getsMode().equalsIgnoreCase("new")) {
				ezDaoObj.iInsertIntoUomMaster(uomDto);
				responseWrapper.setStrMessage(AppConstant.sysMessage.SUCCESS_MESSAGE);
			} else if (uomDto.getsMode().equalsIgnoreCase("edit")) {
				ezDaoObj.iUpdateUomEntryPgData(uomDto);
				responseWrapper.setStrMessage(AppConstant.sysMessage.SUCCESS_UPDATE_MESSAGE);
			}
			responseWrapper.setRecordNumber(uomDto.getUomId());
			responseWrapper.setErrorFlag(false);
		} catch (Exception ex) {
			responseWrapper.setErrorFlag(true);
			responseWrapper.setStrMessage(sqlException.customSqlExection(ex));			
		}
		return responseWrapper;
	}



	@Override
	public List<UomDto> searchUomMasterData(UserInputParam searchData) {
		return ezDaoObj.searchUomMasterData(searchData.getSearchVarData());
	}

	@Override
	public ResponseWrapper iInsertItemMaster(ItemMasterDto itemMasterDto) {
		ResponseWrapper responseWrapper = new ResponseWrapper(); 
		try {
			if (itemMasterDto.getsMode().equalsIgnoreCase("new")) {
				ezDaoObj.iInsertItemMaster(itemMasterDto);
				responseWrapper.setStrMessage(AppConstant.sysMessage.SUCCESS_MESSAGE);				
			} else {
				ezDaoObj.iUpdateItemMasterData(itemMasterDto);
				responseWrapper.setStrMessage(AppConstant.sysMessage.SUCCESS_UPDATE_MESSAGE);
			}
			responseWrapper.setRecordNumber(itemMasterDto.getItemId());
			responseWrapper.setErrorFlag(false);
		} catch (Exception ex) {
			responseWrapper.setErrorFlag(true);
			responseWrapper.setStrMessage(sqlException.customSqlExection(ex));			
		}
		return responseWrapper;
	}



	@Override
	public ResponseWrapper iInsertPartyMaster(PartyMasterDto partyMasterDto) {
		ResponseWrapper responseWrapper = new ResponseWrapper(); 
		try {
			if (partyMasterDto.getsMode().equalsIgnoreCase("new")) {
				ezDaoObj.iInsertPartyMaster(partyMasterDto);
				responseWrapper.setRecordNumber(partyMasterDto.getPartyId());
				responseWrapper.setStrMessage(AppConstant.sysMessage.SUCCESS_MESSAGE);	
			} else if (partyMasterDto.getsMode().equalsIgnoreCase("edit")) {
				ezDaoObj.iUpdatePartyMasterData(partyMasterDto);
				responseWrapper.setRecordNumber(partyMasterDto.getPartyId());
				responseWrapper.setStrMessage(AppConstant.sysMessage.SUCCESS_UPDATE_MESSAGE);	
			}
			responseWrapper.setErrorFlag(false);
					
		} catch (Exception ex) {
			responseWrapper.setErrorFlag(true);
			responseWrapper.setStrMessage(sqlException.customSqlExection(ex));			
		}
		return responseWrapper;
	}



	@Override
	public List<UomDto> getUOMDataHomePG() {
		return ezDaoObj.getUOMDataHomePG(null);
	}



	@Override
	public UomDto fillUomDataOnEntryPG(int uomId) {
		return ezDaoObj.getUOMDataHomePG(String.valueOf(uomId)).get(0);
	}



	@Override
	public List<PartyMasterDto> getPartyMasterDataHomePG() {
		return ezDaoObj.getPartyMasterDataHomePG(null,null);
	}



	@Override
	public PartyMasterDto fillPartyDataOnEntryPG(int partyId) {
		return ezDaoObj.getPartyMasterDataHomePG(String.valueOf(partyId),null).get(0);
	}



	@Override
	public List<ItemMasterDto> getAllItemMasterHomePG() {
		return ezDaoObj.getAllItemMasterHomePG(null);
	}



	@Override
	public ItemMasterDto fillItemMasterDataonEntryPG(int itemId) {
		return ezDaoObj.getAllItemMasterHomePG(String.valueOf(itemId)).get(0);
	}



	@Override
	public List<TowerMaster> getAllTowerMaster(PrjSearch prjSrch) {
		return ezDaoObj.getAllTowerMaster(prjSrch);
	}



	@Override
	public ResponseWrapper iInsertCustomerMaster(CustomerDto customerDto) {
		ResponseWrapper responseWrapper = new ResponseWrapper(); 
		try {
			if (customerDto.getsMode().equalsIgnoreCase("new")) {
				ezDaoObj.iInsertCustomerMaster(customerDto);
				responseWrapper.setRecordNumber(customerDto.getCustomerId());
				responseWrapper.setStrMessage(AppConstant.sysMessage.SUCCESS_MESSAGE);	
			} else if (customerDto.getsMode().equalsIgnoreCase("edit")) {
				ezDaoObj.iUpdateCustomerMaster(customerDto);
				responseWrapper.setRecordNumber(customerDto.getCustomerId());
				responseWrapper.setStrMessage(AppConstant.sysMessage.SUCCESS_UPDATE_MESSAGE);	
			}
			responseWrapper.setErrorFlag(false);
					
		} catch (Exception ex) {
			responseWrapper.setErrorFlag(true);
			responseWrapper.setStrMessage(sqlException.customSqlExection(ex));			
		}
		return responseWrapper;
	}



	@Override
	public List<CustomerDto> getAllCustomerHomePGData(String customerId) {
		return ezDaoObj.getAllCustomerData(customerId);
	}



	@Override
	public List<ItemMasterDto> searchItemMasterData(PrjSearch prjSrch) {
		return ezDaoObj.searchItemMasterData(prjSrch);
	}



	@Override
	public ResponseWrapper iSavePurchaseOrderData(List<PODto> poDtl) {
		ResponseWrapper responseWrapper = new ResponseWrapper();
		String poNumber = "";
		try {
			if (poDtl.get(0).getsMode().equalsIgnoreCase("new")) {
				ezDaoObj.iInsertPOMasterData(poDtl);
				poNumber = "PO/" + new SimpleDateFormat("yyyy").format(new Date()) + 
						"/" + new SimpleDateFormat("MMM").format(new Date()) + "/" + String.valueOf(poDtl.get(0).getIpoId());
				ezDaoObj.iUpdatePurchaseOrderNo(poNumber, poDtl.get(0).getIpoId());				
			}
			if (poDtl.get(0).getIpoId() != 0) {
				if (poDtl.get(0).getsMode().equalsIgnoreCase("edit")) {
					ezDaoObj.updateDelFlagInPoDtl(String.valueOf(poDtl.get(0).getIpoId()));
				}
			for (PODto poDtoData : poDtl) {
					poDtoData.setIpoId(poDtl.get(0).getIpoId());
					ezDaoObj.iInsertPODtlData(poDtoData);
				}
				responseWrapper.setErrorFlag(false);
				responseWrapper.setRecordNumber(poDtl.get(0).getIpoId());
				if (poDtl.get(0).getsMode().equalsIgnoreCase("new")) {
					responseWrapper.setStrMessage(AppConstant.sysMessage.SUCCESS_MESSAGE+ ":"+ poNumber);
				} else if (poDtl.get(0).getsMode().equalsIgnoreCase("edit")) {
					responseWrapper.setStrMessage(AppConstant.sysMessage.SUCCESS_MESSAGE+ ":"+ poDtl.get(0).getPoNo());
				}
			}			
		} catch (Exception ex) {
			responseWrapper.setErrorFlag(true);
			responseWrapper.setStrMessage(sqlException.customSqlExection(ex));				
		}
		return responseWrapper;
	}



	@Override
	public List<PODto> getAllPOData(String poId) {
		return ezDaoObj.getAllPOData(poId);
	}



	@Override
	public List<PODto> getAllPoDetailData(String poId) {
		return ezDaoObj.getAllPoDetailData(poId);
	}



	@Override
	public List<SalesOrderDto> getCustomerDataByFlatNo(PrjSearch prjSrch) {
		List<SalesOrderDto> salesOrderObj = new ArrayList<>();
		try {
			salesOrderObj = ezDaoObj.getCustomerDataByFlatNo(prjSrch);
		} catch (Exception ex) {
			System.out.println(ex.toString());
		}
		return salesOrderObj;
	}



	@Override
	public ResponseWrapper iInsertSalesOrderHead(List<SalesOrderDto> salesDto) {
		ResponseWrapper responseWrapper = new ResponseWrapper();
		String saleOrderNumber = "";		
		try {
			if (salesDto.get(0).getsMode().equalsIgnoreCase("new")) {
				ezDaoObj.iInsertSalesOrderHead(salesDto.get(0));
				saleOrderNumber = "SO/" + new SimpleDateFormat("yyyy").format(new Date()) + 
						"/" + new SimpleDateFormat("MMM").format(new Date()) + "/" + String.valueOf(salesDto.get(0).getSaleId());	
				ezDaoObj.iUpdateSalesOrderNo(saleOrderNumber, salesDto.get(0).getSaleId());
			}
			if (salesDto.get(0).getsMode().equalsIgnoreCase("edit")) {
				ezDaoObj.iUpdateSalesMasterHead(salesDto.get(0));
			}
			ezDaoObj.updateDelFlagInSoDtl(salesDto.get(0).getSaleId());
			for (SalesOrderDto saleOrderDto : salesDto) {
				saleOrderDto.setSaleId(salesDto.get(0).getSaleId());
				ezDaoObj.iInsertSODtlData(saleOrderDto);
			}
			responseWrapper.setErrorFlag(false);
			responseWrapper.setRecordNumber(Integer.valueOf(salesDto.get(0).getSaleId()));
			if (salesDto.get(0).getsMode().equalsIgnoreCase("new")) {
				responseWrapper.setStrMessage(AppConstant.sysMessage.SUCCESS_MESSAGE+ ":"+ saleOrderNumber);
			} else if (salesDto.get(0).getsMode().equalsIgnoreCase("edit")) {
				responseWrapper.setStrMessage(AppConstant.sysMessage.SUCCESS_MESSAGE+ ":"+ salesDto.get(0).getSalesOrderNumber());
			}			
		} catch (Exception ex) {
			responseWrapper.setErrorFlag(true);
			responseWrapper.setStrMessage(sqlException.customSqlExection(ex));				
		}
		return responseWrapper;
	}
	@Override
	public List<SalesOrderDto> getAllSalesOrderData(PrjSearch prjSrch) {
		List<SalesOrderDto> lsSalesOrderDto = new ArrayList<>();
		try {
			if (prjSrch.getSalesOrderId() == "") {
				prjSrch.setSalesOrderId(null);
			}			
			if (prjSrch.getCustomerId().equalsIgnoreCase("0")) {
				Date dtFrom = new SimpleDateFormat("dd-MMM-yy").parse(prjSrch.getFromDate());
				Date dtToDate = new SimpleDateFormat("dd-MMM-yy").parse(prjSrch.getToDate());
				
				prjSrch.setFromDate(new SimpleDateFormat("yy-MM-dd").format(dtFrom));
				prjSrch.setToDate(new SimpleDateFormat("yy-MM-dd").format(dtToDate));
				prjSrch.setCustomerId(null);
			} else {
				prjSrch.setFromDate(null);
				prjSrch.setToDate(null);
				if (prjSrch.getCustomerId() == "") {
					prjSrch.setCustomerId(null);
				}
			}
	
			lsSalesOrderDto = ezDaoObj.getAllSalesOrderData(prjSrch);
		} catch (Exception ex) {
			lsSalesOrderDto.get(0).setStrMessage(Utility.getStackTrace(ex));
		}
		return lsSalesOrderDto;
	}
	@Override
	public List<SalesOrderDto> getAllSalesOrderDetailsItem(String salesOrderId) {
		return ezDaoObj.getAllSalesOrderDetailsItem(salesOrderId);
	}
	@Override
	public List<CategoryMasterDto> getAllCategoryMaster() {
		return ezDaoObj.getAllCategoryMaster();
	}
	@Override
	public List<PODto> fillPOInMKPymntPG(String partyId) {
		return ezDaoObj.fillPOInMKPymntPG(partyId);
	}
	@Override
	public ResponseWrapper iInsertMakePaymentData(MakePymntDto makePymntDto) {
		ResponseWrapper responseWrapper = new ResponseWrapper();
		try {
			if (makePymntDto.getsMode().equalsIgnoreCase("new")) {
				responseWrapper.setRecordNumber(ezDaoObj.iInsertMakePaymentData(makePymntDto));
				responseWrapper.setErrorFlag(false);
				responseWrapper.setStrMessage(AppConstant.sysMessage.SUCCESS_MESSAGE);
			}
		}  catch (Exception ex) {
			responseWrapper.setErrorFlag(true);
			responseWrapper.setStrMessage(sqlException.customSqlExection(ex));				
		}
		return responseWrapper;
	}
	@Override
	public List<MakePymntDto> getAllPaymentDataDto(int partyId) {
		 List<MakePymntDto> lstMkPymntDto = ezDaoObj.getAllPaymentDataDto(partyId);
//		 List<String> arrpoNo = new ArrayList<>();
//		 double totalPoAmount = 0,totalPymntAmount = 0,totalBalance = 0;
//		 for (MakePymntDto mkPymntDataObj : lstMkPymntDto) {
//			 if (!arrpoNo.contains(mkPymntDataObj.getPoNo())) {
//				 totalPoAmount = totalPoAmount+mkPymntDataObj.getTotalPoAmount();
//				 arrpoNo.add(mkPymntDataObj.getPoNo());
//			 }
//		 }
		 return lstMkPymntDto;
	}
	@Override
	public List<ReceivedPymntDto> fillSOInRecvdPymntPG(String customerId) {
		return ezDaoObj.fillSOInRecvdPymntPG(customerId);
	}
	@Override
	public ResponseWrapper iInsertRecevdPaymentData(ReceivedPymntDto receivedPymntDto) {
		ResponseWrapper responseWrapper = new ResponseWrapper();
		try {
			if (receivedPymntDto.getsMode().equalsIgnoreCase("new")) {
				responseWrapper.setRecordNumber(ezDaoObj.iInsertRecevdPaymentData(receivedPymntDto));
				responseWrapper.setErrorFlag(false);
				responseWrapper.setStrMessage(AppConstant.sysMessage.SUCCESS_MESSAGE);				
			}
		} catch (Exception ex) {
			responseWrapper.setErrorFlag(true);
			responseWrapper.setStrMessage(sqlException.customSqlExection(ex));				
		}
		return responseWrapper;
	}
	@Override
	public List<ReceivedPymntDto> getAllPymntRecvdData(String customerId) {
		return ezDaoObj.getAllPymntRecvdData(customerId);
	}
	@Override
	public ResponseWrapper iInsertUpdateMrnDataObj(List<MrnDto> lstMrnDto) {
		ResponseWrapper responseWrapper = new ResponseWrapper();
		String mrnNumber = "";
		try {
			if (lstMrnDto.get(0).getsMode().equalsIgnoreCase("new")) {
				ezDaoObj.iInsertMrnHead(lstMrnDto.get(0));
				mrnNumber = "MRN/" + new SimpleDateFormat("yyyy").format(new Date()) + 
						"/" + new SimpleDateFormat("MMM").format(new Date()) + "/" + String.valueOf(lstMrnDto.get(0).getMrnId());
				ezDaoObj.updateMrnNoDataObj(lstMrnDto.get(0).getMrnId(), mrnNumber);
			} else {
				mrnNumber = lstMrnDto.get(0).getMrnNo();
			}
			if (lstMrnDto.get(0).getMrnId() != 0) {
				int iRowCount = 1;
				if (lstMrnDto.get(0).getsMode().equalsIgnoreCase("edit")) {
					ezDaoObj.updateBillNoInMrnDataObj(lstMrnDto.get(0).getMrnId(), lstMrnDto.get(0).getPartyBillNumber());
					ezDaoObj.updateDelFlagInMrnDtl(lstMrnDto.get(0).getMrnId());
				}
				for (MrnDto mrnDataObj : lstMrnDto) {
					mrnDataObj.setMrnId(lstMrnDto.get(0).getMrnId());
					mrnDataObj.setMrnDtlId(iRowCount);
					ezDaoObj.iInsertMrnDetail(mrnDataObj);
					iRowCount++;
				}
			}
			responseWrapper.setErrorFlag(false);
			if (lstMrnDto.get(0).getsMode().equalsIgnoreCase("new")) {
				responseWrapper.setStrMessage(AppConstant.sysMessage.SUCCESS_MESSAGE+ ":"+ mrnNumber);
			} else if (lstMrnDto.get(0).getsMode().equalsIgnoreCase("edit")) {
				responseWrapper.setStrMessage(AppConstant.sysMessage.SUCCESS_MESSAGE+ ":"+ lstMrnDto.get(0).getMrnNo());
			}			
		} catch (Exception ex) {
			responseWrapper.setErrorFlag(true);
			responseWrapper.setStrMessage(sqlException.customSqlExection(ex));	
			System.out.println(ex);
		}
		return responseWrapper;
	}
	@Override
	public List<MrnDto> getAllPoItemForMRNDetails(String poNo) {
		return ezDaoObj.getAllPoItemForMRNDetails(poNo);
	}
	@Override
	public List<MrnDto> getAllMrnDataOnHomePG(String mrnId) {
		return ezDaoObj.getAllMrnDataOnHomePG(mrnId);
	}
	@Override
	public List<MrnDto> getAllItemForMRNDetails(String mrnId) {
		return ezDaoObj.getAllItemForMRNDetails(mrnId);
	}
	@Override
	public ResponseWrapper iInsertRFQHeader(List<RFQDto> rfqDto) {
		ResponseWrapper responseWrapper = new ResponseWrapper();
		String RfqNumber = "";
		try {
			if (rfqDto.get(0).getsMode().equalsIgnoreCase("new")) {
				ezDaoObj.iInsertRFQHeader(rfqDto.get(0));
				RfqNumber = "RFQ/" + new SimpleDateFormat("yyyy").format(new Date()) + 
						"/" + new SimpleDateFormat("MMM").format(new Date()) + "/" + String.valueOf(rfqDto.get(0).getRfqId());	
				ezDaoObj.iUpdateRFQNumber(RfqNumber,Integer.valueOf(rfqDto.get(0).getRfqId()));
			}
			if (rfqDto.get(0).getsMode().equalsIgnoreCase("edit")) {
				ezDaoObj.iUpdateRFQCustomerData(rfqDto.get(0));
			}
			ezDaoObj.iUpdateDelFlagInRFQDtl(rfqDto.get(0));
			for (RFQDto rfqDtlData : rfqDto) {
				rfqDtlData.setRfqId(rfqDto.get(0).getRfqId());
				ezDaoObj.iInsertRFQDetailsDataObj(rfqDtlData);
			}
			responseWrapper.setErrorFlag(false);
			responseWrapper.setRecordNumber(Integer.valueOf(rfqDto.get(0).getRfqId()));
			if (rfqDto.get(0).getsMode().equalsIgnoreCase("new")) {
				responseWrapper.setStrMessage(AppConstant.sysMessage.SUCCESS_MESSAGE+ ":"+ RfqNumber);
			} else if (rfqDto.get(0).getsMode().equalsIgnoreCase("edit")) {
				responseWrapper.setStrMessage(AppConstant.sysMessage.SUCCESS_MESSAGE+ ":"+ rfqDto.get(0).getRfqNumber());
			}			
		} catch (Exception ex) {
			responseWrapper.setErrorFlag(true);
			responseWrapper.setStrMessage(sqlException.customSqlExection(ex));				
		}
		return responseWrapper;
	}



	@Override
	public List<RFQDto> getAllQuotationHomePGData(String rfQId) {
		return ezDaoObj.getAllQuotationHomePGData(rfQId);
	}



	@Override
	public List<RFQDto> bindQuotationDataGrid(String rfQId) {
		return ezDaoObj.bindQuotationDataGrid(rfQId);
	}



	@Override
	public List<SalesOrderDto> findRFQInSalesOrder(int TowerId, int FlatNo,int customerId) {
		return ezDaoObj.findRFQInSalesOrder(TowerId, FlatNo,customerId);
	}



	@Override
	public PODto vwPurchaseOrderReport(int PoId) {
		return ezDaoObj.vwPurchaseOrderReport(PoId);
	}



	@Override
	public List<PODto> getAllPoDetailsForReport(int poId) {
		return ezDaoObj.getAllPoDetailsForReport(poId);
	}



	@Override
	public RFQDto vwQuotationReportHeader(int rfqId) {
		RFQDto rfQDto = new RFQDto();
		try {
			rfQDto= ezDaoObj.getQuotationHeaderData(rfqId);
		} catch (Exception ex) {
			System.out.println(ex);
		}
		return rfQDto;
	}



	@Override
	public List<RFQDto> getQuotationDtlReportDat(int rfqId) {
		return ezDaoObj.getQuotationDtlReportDat(rfqId);
	}



	@Override
	public SalesOrderDto vwSalesOrderReportHeader(int SalesOrderId) {
		return ezDaoObj.getSalesOrderReportHead(SalesOrderId);
	}



	@Override
	public List<SalesOrderDto> getAllSalesOrderDtlReport(int salesOrderId) {
		List<SalesOrderDto> salesOrderArray = new ArrayList<>();
		try {
			salesOrderArray = ezDaoObj.getSalesOrderDetalReport(salesOrderId);
		} catch (Exception ex) {
			System.out.println(ex);
		}
	    return salesOrderArray;
	}



	@Override
	public List<ItemMasterDto> getItemDetailStockReport(int categoryid) {
		return ezDaoObj.getItemDetailStockReport(categoryid);
	}



	@Override
	public List<stockMasterDto> getStockItemReport(PrjSearch prjSearch) {
		if (prjSearch.getItemId().equalsIgnoreCase("0")) {
			prjSearch.setItemId(null);
		}
		if (prjSearch.getCategId().equalsIgnoreCase("0")) {
			prjSearch.setCategId(null);
		}
		return ezDaoObj.getStockItemReport(prjSearch);
	}



	@Override
	public ResponseWrapper iInsertCategoryMaster(CategoryMasterDto categMasterDto) {
		ResponseWrapper responseWrapper = new ResponseWrapper();
		try {
			categMasterDto.setCategoryCode(ezDaoObj.getMaxCategoryCode().getCategoryCode());
			ezDaoObj.iInsertCategoryMaster(categMasterDto);
			ezDaoObj.iInsertDefaultSubCategory(categMasterDto.getCategoryId());
			responseWrapper.setRecordNumber(categMasterDto.getCategoryId());
			responseWrapper.setErrorFlag(false);
			responseWrapper.setStrMessage(AppConstant.sysMessage.SUCCESS_MESSAGE+ ":"+ categMasterDto.getCategoryId());
		} catch (Exception ex) {
			responseWrapper.setErrorFlag(true);
			responseWrapper.setStrMessage(sqlException.customSqlExection(ex));				
		}
		return responseWrapper;
	}



	@Override
	public ResponseWrapper iInsertSubCategoryMaster(CategoryMasterDto subCategoryDto) {
		ResponseWrapper responseWrapper = new ResponseWrapper();
		try {
			if (ezDaoObj.validateSubCategory(subCategoryDto.getCategoryId(), 
					subCategoryDto.getSubCategoryDesc()) == null) {
				subCategoryDto.setSubCategoryCode(ezDaoObj.getMaxSubCategoryCode().getSubCategoryCode());
				ezDaoObj.iInsertSubCategoryMaster(subCategoryDto);
				responseWrapper.setRecordNumber(subCategoryDto.getSubCategoryId());
				responseWrapper.setErrorFlag(false);
				responseWrapper.setStrMessage(AppConstant.sysMessage.SUCCESS_MESSAGE+ ":"+ subCategoryDto.getSubCategoryId());				
			} else {
				responseWrapper.setErrorFlag(true);
				responseWrapper.setStrMessage("Duplicate Record!!!, This SubCategory Already Exists");
			}
			

		} catch (Exception ex) {
			responseWrapper.setErrorFlag(true);
			responseWrapper.setStrMessage(sqlException.customSqlExection(ex));				
		}
		return responseWrapper;
	}



	@Override
	public List<CategoryMasterDto> getAllItemSubCatDetails() {
		return ezDaoObj.getAllItemSubCatDetails();
	}



	@Override
	public List<CategoryMasterDto> getSubCategoryItem(int categId) {
		return ezDaoObj.getSubCategoryItem(categId);
	}



	@Override
	public List<PartyMasterDto> getContractorList(String contractorId, String partyType) {
		return ezDaoObj.getPartyMasterDataHomePG(contractorId, partyType);
	}



	@Override
	public List<MakePymntDto> getPymntAgPO(String poId) {
		return ezDaoObj.getPymntAgPO(poId);
	}



	@Override
	public List<ReceivedPymntDto> getPymntRecvdAgSO(String soId) {
		return ezDaoObj.getPymntRecvdAgSO(soId);
	}



	@SuppressWarnings("deprecation")
	@Override
	public List<SalesOrderDto> getSalesOrderStkRpt(PrjSearch prjSrch) {
		List<SalesOrderDto> arrSalesOrder = new ArrayList<>();
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			prjSrch.setFromDate(sdf.format(new Date(prjSrch.getFromDate())));
			prjSrch.setToDate(sdf.format(new Date(prjSrch.getToDate())));
			if (prjSrch.getCustomerId() == null || prjSrch.getCustomerId() == "" || prjSrch.getCustomerId() == "0") {
				prjSrch.setCustomerId("");
			}			
			arrSalesOrder = ezDaoObj.getSalesOrderStkRpt(prjSrch.getTowerNo(), prjSrch.getFlatNo(), prjSrch.getFromDate(), prjSrch.getToDate(),prjSrch.getCustomerId());
		} catch (Exception ex) {
			System.out.println("Exception:"+ex.toString());
		}
		return arrSalesOrder;
	}



	@Override
	public SalesOrderDto getSaleOrderPymntDtls(String soId) {
		SalesOrderDto saleOrderDto = new SalesOrderDto();
		try {
			saleOrderDto = ezDaoObj.getSaleOrderPymntDtls(soId);
		} catch (Exception ex) {
			System.out.println(ex);
		}
		
		return saleOrderDto;
	}



	@Override
	public List<SalesOrderDto> getSOPymntRecvdData(PrjSearch prjSrch) {
		List<SalesOrderDto> arrSalesOrderDtoObj = new ArrayList<>();
		try {
			Date dtFrom = new SimpleDateFormat("dd-MMM-yy").parse(prjSrch.getFromDate());
			Date dtToDate = new SimpleDateFormat("dd-MMM-yy").parse(prjSrch.getToDate());
			prjSrch.setFromDate(new SimpleDateFormat("yyyy-MM-dd").format(dtFrom));
			prjSrch.setToDate(new SimpleDateFormat("yyyy-MM-dd").format(dtToDate));
			arrSalesOrderDtoObj = ezDaoObj.getSOPymntRecvdData(prjSrch);
		} catch (Exception ex) {
			arrSalesOrderDtoObj.get(0).setBlnTranStatus(false);
			arrSalesOrderDtoObj.get(0).setStrMessage(Utility.getStackTrace(ex));
		}
		return arrSalesOrderDtoObj;
	}



	@Override
	public List<SalesOrderDto> getCustomerListFromSO() {
		return ezDaoObj.getCustomerListFromSO();
	}



	@Override
	public List<PODto> getPymntDataByPO(PrjSearch prjSrch) {
		List<PODto> dtpPoObj = new ArrayList<>();
		try {
			Date dtFrom = new SimpleDateFormat("dd-MMM-yy").parse(prjSrch.getFromDate());
			Date dtToDate = new SimpleDateFormat("dd-MMM-yy").parse(prjSrch.getToDate());
			prjSrch.setFromDate(new SimpleDateFormat("yyyy-MM-dd").format(dtFrom));
			prjSrch.setToDate(new SimpleDateFormat("yyyy-MM-dd").format(dtToDate));
			dtpPoObj = ezDaoObj.getPymntDataByPO(prjSrch);
		} catch (Exception ex) {
			dtpPoObj.get(0).setStrMessage(Utility.getStackTrace(ex));
		}
		return dtpPoObj;
	}



	@Override
	public PODto getTotalPaymentDetailsByPONo(String poId) {
		return ezDaoObj.getTotalPaymentDetailsByPONo(poId);
	}



	@Override
	public List<PartyMasterDto> getVendorWhichPOExists() {
		return ezDaoObj.getVendorWhichPOExists();
	}



	@Override
	public List<CustomerDto> searchCustomerData(PrjSearch searchTextData) {
		List<CustomerDto> lstCustomerDto = new ArrayList<>();
		try {
			lstCustomerDto = ezDaoObj.searchCustomerData(searchTextData.getSearchVarData());
		} catch (Exception ex) {
			//lstCustomerDto.get(0).setErrorMessage(ex.getMessage());
			System.out.println(Utility.getStackTrace(ex));
		}
		return lstCustomerDto;
	}



	@Override
	public List<SalesOrderDto> getCustomerSOAStmtData(PrjSearch prjSrch) {
		List<SalesOrderDto> lstSalesOrderDto = new ArrayList<>();
		try {
			Date dtFrom = new SimpleDateFormat("dd-MMM-yy").parse(prjSrch.getFromDate());
			Date dtToDate = new SimpleDateFormat("dd-MMM-yy").parse(prjSrch.getToDate());
			prjSrch.setFromDate(new SimpleDateFormat("yyyy-MM-dd").format(dtFrom));
			prjSrch.setToDate(new SimpleDateFormat("yyyy-MM-dd").format(dtToDate));
			lstSalesOrderDto = ezDaoObj.getCustomerSOAStmtData(prjSrch);
		} catch (Exception ex) {
			System.out.println(Utility.getStackTrace(ex));
			lstSalesOrderDto.get(0).setStrMessage(Utility.getStackTrace(ex));
		}
		return lstSalesOrderDto;
	}



	@Override
	public List<CustomerDto> fillCustomerByFrmSO(String customerId) {
		return ezDaoObj.fillCustomerByFrmSO(customerId);
	}



	@Override
	public ResponseWrapper iUpdateReceivedPayment(ReceivedPymntDto receivedPaymentDto) {
		ResponseWrapper wrapperObj = new ResponseWrapper();
		try {
			ezDaoObj.iUpdateReceivedPayment(receivedPaymentDto);
			wrapperObj.setErrorFlag(false);
			wrapperObj.setStrMessage(AppConstant.sysMessage.SUCCESS_MESSAGE);
			
		} catch (Exception ex) {
			wrapperObj.setErrorFlag(true);
			wrapperObj.setStrMessage(Utility.getStackTrace(ex));
		}
		return wrapperObj;
	}



	@Override
	public List<PartyMasterDto> getVendorPoDtWisDtos(PrjSearch prjSrch) {
		List<PartyMasterDto> partyMasterDto = new ArrayList<>();
		try {
			Date dtFrom = new SimpleDateFormat("dd-MMM-yy").parse(prjSrch.getFromDate());
			Date dtToDate = new SimpleDateFormat("dd-MMM-yy").parse(prjSrch.getToDate());
			prjSrch.setFromDate(new SimpleDateFormat("yyyy-MM-dd").format(dtFrom));
			prjSrch.setToDate(new SimpleDateFormat("yyyy-MM-dd").format(dtToDate));
			partyMasterDto = ezDaoObj.getVendorPoDtWisDtos(prjSrch);
		} catch (Exception ex) {
			partyMasterDto.get(0).setStrMessage(Utility.getStackTrace(ex));
		}
		return partyMasterDto;
	}



	@Override
	public List<PODto> fillPOInPymntRpt(PrjSearch prjSrch) {
		List<PODto> poDto = new ArrayList<>();
		try {
			Date dtFrom = new SimpleDateFormat("dd-MMM-yy").parse(prjSrch.getFromDate());
			Date dtToDate = new SimpleDateFormat("dd-MMM-yy").parse(prjSrch.getToDate());
			prjSrch.setFromDate(new SimpleDateFormat("yyyy-MM-dd").format(dtFrom));
			prjSrch.setToDate(new SimpleDateFormat("yyyy-MM-dd").format(dtToDate));
			poDto = ezDaoObj.fillPOInPymntRpt(prjSrch);
		} catch (Exception ex) {
			poDto.get(0).setStrMessage(Utility.getStackTrace(ex));
		}
		return poDto;
	}



	@Override
	public String validateMrnBillNo(PrjSearch prjSrch) {
		return ezDaoObj.validateMrnBillNo(prjSrch);
	}



	@Override
	public List<StockRptDto> stockItemReport(PrjSearch prjSrch) {
		List<StockRptDto> stockItemReport = new ArrayList<>();
		try {
			Date dtFrom = new SimpleDateFormat("dd-MMM-yy").parse(prjSrch.getFromDate());
			Date dtToDate = new SimpleDateFormat("dd-MMM-yy").parse(prjSrch.getToDate());
			
			prjSrch.setFromDate(new SimpleDateFormat("yy-MM-dd").format(dtFrom));
			prjSrch.setToDate(new SimpleDateFormat("yy-MM-dd").format(dtToDate));
			stockItemReport = ezDaoObj.stockItemReport(prjSrch);
		} catch (Exception ex) {
			stockItemReport.get(0).setStrErrMessage(Utility.getStackTrace(ex));
		}		
		return stockItemReport;
	}



	@Override
	public List<SalesOrderDto> getSOCustomerByName(PrjSearch prjSrch) {
		return ezDaoObj.getSOCustomerByName(prjSrch);
	}



}
