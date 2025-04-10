package com.erp.ezofficeinventory.Service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

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

public interface EZService {
	
	public LoginDto loginValidate(LoginDto loginDetails);
	public ResponseWrapper iInsertIntoUomMaster(UomDto uomDto);
	public List<UomDto> searchUomMasterData(UserInputParam searchData);
	public ResponseWrapper iInsertItemMaster(ItemMasterDto itemMasterDto);
	public ResponseWrapper iInsertPartyMaster(PartyMasterDto partyMasterDto);
	public List<UomDto> getUOMDataHomePG();
	public UomDto fillUomDataOnEntryPG(int uomId);
	public List<PartyMasterDto> getPartyMasterDataHomePG();
	public PartyMasterDto fillPartyDataOnEntryPG(int partyId);
	public List<ItemMasterDto> getAllItemMasterHomePG();
	public ItemMasterDto fillItemMasterDataonEntryPG(int itemId);
	public List<TowerMaster> getAllTowerMaster(PrjSearch prjSrch);
	public ResponseWrapper iInsertCustomerMaster(CustomerDto customerDto);
	public List<CustomerDto> getAllCustomerHomePGData(String customerId);
	public List<ItemMasterDto> searchItemMasterData(PrjSearch prjSrch);
	public ResponseWrapper iSavePurchaseOrderData(List<PODto> poDtl);
	public List<PODto> getAllPOData(String poId);
	public List<PODto> getAllPoDetailData(String poId);
	public List<SalesOrderDto> getCustomerDataByFlatNo(PrjSearch prjSrch);
	public ResponseWrapper iInsertSalesOrderHead(List<SalesOrderDto> salesDto);
	public List<SalesOrderDto> getAllSalesOrderData(PrjSearch prjSrch);
	public List<SalesOrderDto> getAllSalesOrderDetailsItem(String salesOrderId);
	public List<CategoryMasterDto> getAllCategoryMaster();
	public List<PODto> fillPOInMKPymntPG(String partyId);
	public ResponseWrapper iInsertMakePaymentData(MakePymntDto makePymntDto);
	public List<MakePymntDto> getAllPaymentDataDto(int partyId);
	public List<ReceivedPymntDto> fillSOInRecvdPymntPG(String customerId);
	public ResponseWrapper iInsertRecevdPaymentData(ReceivedPymntDto receivedPymntDto);
	public List<ReceivedPymntDto> getAllPymntRecvdData(String customerId);
	public ResponseWrapper iInsertUpdateMrnDataObj(List<MrnDto> lstMrnDto);
	public List<MrnDto> getAllPoItemForMRNDetails(String poNo);
	public List<MrnDto> getAllMrnDataOnHomePG(String mrnId);
	public List<MrnDto> getAllItemForMRNDetails(String mrnId);
	public ResponseWrapper iInsertRFQHeader(List<RFQDto> rfqDto);
	public List<RFQDto> getAllQuotationHomePGData(String rfQId);
	public List<RFQDto> bindQuotationDataGrid(String rfQId);
	public List<SalesOrderDto> findRFQInSalesOrder(int TowerId,int FlatNo,int customerId);
	public PODto vwPurchaseOrderReport(int PoId);
	public List<PODto> getAllPoDetailsForReport(int poId);
	public RFQDto vwQuotationReportHeader(int rfqId);
	public List<RFQDto> getQuotationDtlReportDat(int rfqId);	
	public SalesOrderDto vwSalesOrderReportHeader(int SalesOrderId);
	public List<SalesOrderDto> getAllSalesOrderDtlReport(int salesOrderId);
	public List<ItemMasterDto> getItemDetailStockReport(int categoryid);
	public List<stockMasterDto> getStockItemReport(PrjSearch prjSearch);
	public ResponseWrapper iInsertCategoryMaster(CategoryMasterDto customerMasterDto);
	public ResponseWrapper iInsertSubCategoryMaster(CategoryMasterDto subCategoryDto);
	public List<CategoryMasterDto> getAllItemSubCatDetails();
	public List<CategoryMasterDto> getSubCategoryItem(int categId);
	public List<PartyMasterDto> getContractorList(String contractorId,String partyType);
	public List<MakePymntDto> getPymntAgPO(String poId);
	public List<ReceivedPymntDto> getPymntRecvdAgSO(String soId);
	public List<SalesOrderDto> getSalesOrderStkRpt(PrjSearch prjSrch);
	public SalesOrderDto getSaleOrderPymntDtls(String soId);
	public List<SalesOrderDto> getSOPymntRecvdData(PrjSearch prjSrch);
	public List<SalesOrderDto> getCustomerListFromSO();
	public List<PODto> getPymntDataByPO(PrjSearch prjSrch);
	public PODto getTotalPaymentDetailsByPONo(String poId);
	public List<PartyMasterDto> getVendorWhichPOExists();
	public List<CustomerDto> searchCustomerData(PrjSearch searchTextData);
	public List<SalesOrderDto> getCustomerSOAStmtData(PrjSearch prjSrch);
	public List<CustomerDto> fillCustomerByFrmSO(String customerId);
	public ResponseWrapper iUpdateReceivedPayment(ReceivedPymntDto receivedPaymentDto);
	public List<PartyMasterDto> getVendorPoDtWisDtos(PrjSearch prjSrch);
	public List<PODto> fillPOInPymntRpt(PrjSearch prjSrch);
	public String validateMrnBillNo(PrjSearch prjSrch);
	public List<StockRptDto> stockItemReport(PrjSearch prjSrch);
	public List<SalesOrderDto> getSOCustomerByName(PrjSearch prjSrch);
}
