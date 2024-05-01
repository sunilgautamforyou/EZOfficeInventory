package com.erp.ezofficeinventory.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.jaxb.SpringDataJaxb.SortDto;

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
import com.erp.ezofficeinventory.entity.stockMasterDto;

public interface EZDao {
	
	public LoginDto loginValidate(String userName,String passWord);
	public int iInsertIntoUomMaster(UomDto uomDto);
	public List<UomDto> searchUomMasterData(String searchData);
	public int iInsertItemMaster(ItemMasterDto itemMasterDt0);
	public int iInsertPartyMaster(PartyMasterDto partyMasterDto);
	public List<UomDto> getUOMDataHomePG(String uomId);
	public int iUpdateUomEntryPgData(UomDto uomData);
	public List<PartyMasterDto> getPartyMasterDataHomePG(String partyId,String partyType);
	public int iUpdatePartyMasterData(PartyMasterDto partyMasterDto);
	public List<ItemMasterDto> getAllItemMasterHomePG(String itemId);
	public int iUpdateItemMasterData(ItemMasterDto itemMasterDto);
	public List<TowerMaster> getAllTowerMaster(PrjSearch prjSrch);
	public int iInsertCustomerMaster(CustomerDto customerDto);
	public int iUpdateCustomerMaster(CustomerDto customerDto);
	public List<CustomerDto> getAllCustomerData(String customerId);
	public List<ItemMasterDto> searchItemMasterData(PrjSearch prjSrch);
	public int iInsertPOMasterData(List<PODto> poDto);
	public int iUpdatePurchaseOrderNo(String poNumber,Integer poId);
	public int iInsertPODtlData(PODto poDto);
	public List<PODto> getAllPOData(String poId);
	public List<PODto> getAllPoDetailData(String poId);
	public int updateDelFlagInPoDtl(String poId);
	public SalesOrderDto getCustomerDataByFlatNo(PrjSearch prjSrch);
	public int iInsertSalesOrderHead(SalesOrderDto salesDto);
	public int iUpdateSalesOrderNo(String soNumber,String soId);
	public int updateDelFlagInSoDtl(String soId);
	public int iInsertSODtlData(SalesOrderDto salesOrderDto);
	public List<SalesOrderDto> getAllSalesOrderData(String salesOrderId);
	public List<SalesOrderDto> getAllSalesOrderDetailsItem(String salesOrderId);
	public int iUpdateSalesMasterHead(SalesOrderDto salesOrderDt0);
	public List<CategoryMasterDto> getAllCategoryMaster();
	public List<PODto> fillPOInMKPymntPG(String partyId);
	public int iInsertMakePaymentData(MakePymntDto makePymntDto);
	public List<MakePymntDto> getAllPaymentDataDto(int partyId);
	public List<ReceivedPymntDto> fillSOInRecvdPymntPG(String customerId);
	public int iInsertRecevdPaymentData(ReceivedPymntDto receivedPymntDto);
	public List<ReceivedPymntDto> getAllPymntRecvdData(String customerId);
	public int iInsertMrnHead(MrnDto mrnDto);
	public int iInsertMrnDetail(MrnDto mrnDto);
	public int updateMrnNoDataObj(int mrnId,String mrnNumber);
	public int updateDelFlagInMrnDtl(int mrnId);
	public List<MrnDto> getAllPoItemForMRNDetails(String poId);
	public List<MrnDto> getAllMrnDataOnHomePG(String mrnId);
	public List<MrnDto> getAllItemForMRNDetails(String mrnId);
	public int iInsertRFQHeader(RFQDto rfqDto);
	public int iInsertRFQDetailsDataObj(RFQDto rfqDto);
	public int iUpdateRFQNumber(String rfQNo,int rfQId);
	public int iUpdateRFQCustomerData(RFQDto rfqData);
	public int iUpdateDelFlagInRFQDtl(RFQDto rfqDto);
	public List<RFQDto> getAllQuotationHomePGData(String rfQId);
	public List<RFQDto> bindQuotationDataGrid(String rfQId);
	public List<SalesOrderDto> findRFQInSalesOrder(int TowerId,int FlatNo);
	public int updateBillNoInMrnDataObj(int mrnId,String partyBillNo);
	public PODto vwPurchaseOrderReport(int PoId);
	public List<PODto> getAllPoDetailsForReport(int poId);
	public RFQDto getQuotationHeaderData(int rfqId);
	public List<RFQDto> getQuotationDtlReportDat(int rfqId);
	public SalesOrderDto getSalesOrderReportHead(int salesOrderId);
	public List<SalesOrderDto> getSalesOrderDetalReport(int salesOrderId);
	public List<ItemMasterDto> getItemDetailStockReport(int categoryid);
	public List<stockMasterDto> getStockItemReport(PrjSearch prjSearch);
	public int iInsertCategoryMaster(CategoryMasterDto categoryMasterDto);
	public CategoryMasterDto getMaxCategoryCode();
	public int iInsertSubCategoryMaster(CategoryMasterDto subCategoryDto);
	public CategoryMasterDto getMaxSubCategoryCode();
	public List<CategoryMasterDto> getAllItemSubCatDetails();
	public int iInsertDefaultSubCategory(int categId);
	public List<CategoryMasterDto> getSubCategoryItem(int categId);
	public CategoryMasterDto validateSubCategory(int categId,String subCategName);
	public List<MakePymntDto> getPymntAgPO(String poId);
	public List<ReceivedPymntDto> getPymntRecvdAgSO(String soId);
	
}
