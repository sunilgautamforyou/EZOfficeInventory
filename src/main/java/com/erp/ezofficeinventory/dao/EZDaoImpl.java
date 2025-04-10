package com.erp.ezofficeinventory.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.erp.ezofficeinventory.SqlMapper.MapperDAO;
import com.erp.ezofficeinventory.Utility.Utility;
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
import com.erp.ezofficeinventory.entity.stockMasterDto;

@Repository
public class EZDaoImpl implements EZDao {
	
	@Autowired
	MapperDAO sqlMapperDaoObj;

	@Override
	public LoginDto loginValidate(String userName, String passWord) {
		return sqlMapperDaoObj.getLoginDetails(userName, passWord);
	}

	@Override
	public int iInsertIntoUomMaster(UomDto uomDto) {
		return sqlMapperDaoObj.iInsertUomMaster(uomDto);
	}

	@Override
	public List<UomDto> searchUomMasterData(String searchData) {
		// TODO Auto-generated method stub
		try {
			return sqlMapperDaoObj.searchUomMasterData(searchData);
		} catch (Exception ex) {
			System.err.println(ex);
		}
		return null;
	
	}

	@Override
	public int iInsertItemMaster(ItemMasterDto itemMasterDt0) {
		return sqlMapperDaoObj.iInsertItemMaster(itemMasterDt0);
	}

	@Override
	public int iInsertPartyMaster(PartyMasterDto partyMasterDto) {
		return sqlMapperDaoObj.iInsertPartyMaster(partyMasterDto);
	}

	@Override
	public List<UomDto> getUOMDataHomePG(String uomId) {
		return sqlMapperDaoObj.getUOMDataHomePG(uomId);
	}

	@Override
	public int iUpdateUomEntryPgData(UomDto uomData) {
		return sqlMapperDaoObj.iUpdateUomEntryPgData(uomData);
	}

	@Override
	public List<PartyMasterDto> getPartyMasterDataHomePG(String partyId,String partyType) {
		return sqlMapperDaoObj.getPartyMasterDataHomePG(partyId,partyType);
	}

	@Override
	public int iUpdatePartyMasterData(PartyMasterDto partyMasterDto) {
		return sqlMapperDaoObj.iUpdatePartyMasterData(partyMasterDto);
	}

	@Override
	public List<ItemMasterDto> getAllItemMasterHomePG(String itemId) {
		return sqlMapperDaoObj.getAllItemMasterHomePG(itemId);
	}

	@Override
	public int iUpdateItemMasterData(ItemMasterDto itemMasterDto) {
		return sqlMapperDaoObj.iUpdateItemMasterData(itemMasterDto);
	}

	@Override
	public List<TowerMaster> getAllTowerMaster(PrjSearch prjSrch) {
		return sqlMapperDaoObj.getAllTowerMaster(prjSrch);
	}

	@Override
	public int iInsertCustomerMaster(CustomerDto customerDto) {
		return sqlMapperDaoObj.iInsertCustomerMaster(customerDto);
	}

	@Override
	public int iUpdateCustomerMaster(CustomerDto customerDto) {
		return sqlMapperDaoObj.iUpdateCustomerMaster(customerDto);
	}

	@Override
	public List<CustomerDto> getAllCustomerData(String customerId) {
		return sqlMapperDaoObj.getAllCustomerData(customerId);
	}

	@Override
	public List<ItemMasterDto> searchItemMasterData(PrjSearch prjSrch) {
		return sqlMapperDaoObj.searchItemMasterData(prjSrch);
	}

	@Override
	public int iInsertPOMasterData(List<PODto> poDto) {
		return sqlMapperDaoObj.iInsertPOMasterData(poDto.get(0));
	}

	@Override
	public int iUpdatePurchaseOrderNo(String poNumber, Integer poId) {
		return sqlMapperDaoObj.iUpdatePurchaseOrderNo(poNumber, poId);
	}

	@Override
	public int iInsertPODtlData(PODto poDto) {
		return sqlMapperDaoObj.iInsertPODtlData(poDto);
	}

	@Override
	public List<PODto> getAllPOData(String poId) {
		return sqlMapperDaoObj.getAllPOData(poId);
	}

	@Override
	public List<PODto> getAllPoDetailData(String poId) {
		return sqlMapperDaoObj.getAllPoDetailData(poId);
	}

	@Override
	public int updateDelFlagInPoDtl(String poId) {
		return sqlMapperDaoObj.updateDelFlagInPoDtl(poId);
	}

	@Override
	public List<SalesOrderDto> getCustomerDataByFlatNo(PrjSearch prjSrch) {
		return sqlMapperDaoObj.getCustomerDataByFlatNo(prjSrch);
	}

	@Override
	public int iInsertSalesOrderHead(SalesOrderDto salesDto) {
		return sqlMapperDaoObj.iInsertSalesOrderHead(salesDto);
	}

	@Override
	public int iUpdateSalesOrderNo(String soNumber, String soId) {
		return sqlMapperDaoObj.iUpdateSalesOrderNo(soNumber, soId);
	}

	@Override
	public int updateDelFlagInSoDtl(String soId) {
		return sqlMapperDaoObj.updateDelFlagInSoDtl(soId);
	}

	@Override
	public int iInsertSODtlData(SalesOrderDto salesOrderDto) {
		return sqlMapperDaoObj.iInsertSODtlData(salesOrderDto);
	}

	@Override
	public List<SalesOrderDto> getAllSalesOrderData(PrjSearch prjSrch) {
		return sqlMapperDaoObj.getAllSalesOrderData(prjSrch);
	}

	@Override
	public List<SalesOrderDto> getAllSalesOrderDetailsItem(String salesOrderId) {
		return sqlMapperDaoObj.getAllSalesOrderDetailsItem(salesOrderId);
	}

	@Override
	public int iUpdateSalesMasterHead(SalesOrderDto salesOrderDt0) {
		return sqlMapperDaoObj.iUpdateSalesMasterHead(salesOrderDt0);
	}

	@Override
	public List<CategoryMasterDto> getAllCategoryMaster() {
		return sqlMapperDaoObj.getAllCategoryMaster();
	}

	@Override
	public List<PODto> fillPOInMKPymntPG(String partyId) {
		return sqlMapperDaoObj.fillPOInMKPymntPG(partyId);
	}

	@Override
	public int iInsertMakePaymentData(MakePymntDto makePymntDto) {
		return sqlMapperDaoObj.iInsertMakePaymentData(makePymntDto);
	}

	@Override
	public List<MakePymntDto> getAllPaymentDataDto(int partyId) {
		return sqlMapperDaoObj.getAllPaymentDataDto(partyId);
	}

	@Override
	public List<ReceivedPymntDto> fillSOInRecvdPymntPG(String customerId) {
		return sqlMapperDaoObj.fillSOInRecvdPymntPG(customerId);
	}

	@Override
	public int iInsertRecevdPaymentData(ReceivedPymntDto receivedPymntDto) {
		return sqlMapperDaoObj.iInsertRecevdPaymentData(receivedPymntDto);
	}

	@Override
	public List<ReceivedPymntDto> getAllPymntRecvdData(String customerId) {
		return sqlMapperDaoObj.getAllPymntRecvdData(customerId);
	}

	@Override
	public int iInsertMrnHead(MrnDto mrnDto) {
		return sqlMapperDaoObj.iInsertMrnHeadDataObj(mrnDto);
	}

	@Override
	public int iInsertMrnDetail(MrnDto mrnDto) {
		return sqlMapperDaoObj.iInsertMrnDtlDataObj(mrnDto);
	}

	@Override
	public int updateMrnNoDataObj(int mrnId,String mrnNumber) {
		return sqlMapperDaoObj.updateMrnNoDataObj(mrnId,mrnNumber);
	}

	@Override
	public int updateDelFlagInMrnDtl(int mrnId) {
		return sqlMapperDaoObj.updateDelFlagInMrnDtl(mrnId);
	}

	@Override
	public List<MrnDto> getAllPoItemForMRNDetails(String poId) {
		return sqlMapperDaoObj.getAllPoItemForMRNDetails(poId);
	}

	@Override
	public List<MrnDto> getAllMrnDataOnHomePG(String mrnId) {
		return sqlMapperDaoObj.getAllMrnDataOnHomePG(mrnId);
	}

	@Override
	public List<MrnDto> getAllItemForMRNDetails(String mrnId) {
		return sqlMapperDaoObj.getAllItemForMRNDetails(mrnId);
	}

	@Override
	public int iInsertRFQHeader(RFQDto rfqDto) {
		return sqlMapperDaoObj.iInsertRFQHeader(rfqDto);
	}

	@Override
	public int iInsertRFQDetailsDataObj(RFQDto rfqDto) {
		return sqlMapperDaoObj.iInsertRFQDetailsDataObj(rfqDto);
	}

	@Override
	public int iUpdateRFQNumber(String rfQNo, int rfQId) {
		return sqlMapperDaoObj.iUpdateRFQNumber(rfQNo, rfQId);
	}

	@Override
	public int iUpdateRFQCustomerData(RFQDto rfqData) {
		return sqlMapperDaoObj.iUpdateRFQCustomerData(rfqData);
	}

	@Override
	public int iUpdateDelFlagInRFQDtl(RFQDto rfqDto) {
		return sqlMapperDaoObj.iUpdateDelFlagInRFQDtl(rfqDto);
	}

	@Override
	public List<RFQDto> getAllQuotationHomePGData(String rfQId) {
		return sqlMapperDaoObj.getAllQuotationHomePGData(rfQId);
	}

	@Override
	public List<RFQDto> bindQuotationDataGrid(String rfQId) {
		return sqlMapperDaoObj.bindQuotationDataGrid(rfQId);
	}

	@Override
	public List<SalesOrderDto> findRFQInSalesOrder(int TowerId, int FlatNo,int customerId) {
		return sqlMapperDaoObj.findRFQInSalesOrder(TowerId, FlatNo,customerId);
	}

	@Override
	public int updateBillNoInMrnDataObj(int mrnId, String partyBillNo) {
		return sqlMapperDaoObj.updateBillNoInMrnDataObj(mrnId, partyBillNo);
	}

	@Override
	public PODto vwPurchaseOrderReport(int PoId) {
		return sqlMapperDaoObj.vwPurchaseOrderReport(PoId);
	}

	@Override
	public List<PODto> getAllPoDetailsForReport(int poId) {
		return sqlMapperDaoObj.getAllPoDetailsForReport(poId);
	}

	@Override
	public RFQDto getQuotationHeaderData(int rfqId) {
		return sqlMapperDaoObj.getQuotationHeaderReportDat(rfqId);
	}

	@Override
	public List<RFQDto> getQuotationDtlReportDat(int rfqId) {
		return sqlMapperDaoObj.getQuotationDtlReportDat(rfqId);
	}

	@Override
	public SalesOrderDto getSalesOrderReportHead(int salesOrderId) {
		return sqlMapperDaoObj.getSalesOrderReportHead(salesOrderId);
	}

	@Override
	public List<SalesOrderDto> getSalesOrderDetalReport(int salesOrderId) {
		return sqlMapperDaoObj.getSalesOrderDetalReport(salesOrderId);
	}

	@Override
	public List<ItemMasterDto> getItemDetailStockReport(int categoryid) {
		return sqlMapperDaoObj.getItemDetailStockReport(categoryid);
	}

	@Override
	public List<stockMasterDto> getStockItemReport(PrjSearch prjSearch) {
		return sqlMapperDaoObj.getStockItemReport(prjSearch);
	}

	@Override
	public int iInsertCategoryMaster(CategoryMasterDto categoryMasterDto) {
		return sqlMapperDaoObj.iInsertCategoryMaster(categoryMasterDto);
	}

	@Override
	public CategoryMasterDto getMaxCategoryCode() {
		return sqlMapperDaoObj.getMaxCategoryCode();
	}

	@Override
	public int iInsertSubCategoryMaster(CategoryMasterDto subCategoryDto) {
		return sqlMapperDaoObj.iInsertSubCategoryMaster(subCategoryDto);
	}

	@Override
	public CategoryMasterDto getMaxSubCategoryCode() {
		return sqlMapperDaoObj.getMaxSubCategoryCode();
	}

	@Override
	public List<CategoryMasterDto> getAllItemSubCatDetails() {
		return sqlMapperDaoObj.getAllItemSubCatDetails();
	}

	@Override
	public int iInsertDefaultSubCategory(int categId) {
		return sqlMapperDaoObj.iInsertDefaultSubCategory(categId);
	}

	@Override
	public List<CategoryMasterDto> getSubCategoryItem(int categId) {
		return sqlMapperDaoObj.getSubCategoryItem(categId);
	}

	@Override
	public CategoryMasterDto validateSubCategory(int categId, String subCategName) {
		return sqlMapperDaoObj.validateSubCategory(categId, subCategName);
	}

	@Override
	public List<MakePymntDto> getPymntAgPO(String poId) {
		return sqlMapperDaoObj.getPymntAgPO(poId);
	}

	@Override
	public List<ReceivedPymntDto> getPymntRecvdAgSO(String soId) {
		return sqlMapperDaoObj.getPymntRecvdAgSO(soId);
	}

	@Override
	public List<SalesOrderDto> getSalesOrderStkRpt(String towerId, String flatNo, String dateFr, String dateTo,String customerId) {
		return sqlMapperDaoObj.getSalesOrderStkRpt(towerId, flatNo, dateFr, dateTo,customerId);
	}

	@Override
	public SalesOrderDto getSaleOrderPymntDtls(String soId) {
		return sqlMapperDaoObj.getSaleOrderPymntDtls(soId);
	}

	@Override
	public List<SalesOrderDto> getSOPymntRecvdData(PrjSearch prjSrch) {
		return sqlMapperDaoObj.getSOPymntRecvdData(prjSrch);
	}

	@Override
	public List<SalesOrderDto> getCustomerListFromSO() {
		return sqlMapperDaoObj.getCustomerListFromSO();
	}

	@Override
	public List<PODto> getPymntDataByPO(PrjSearch prjSrch) {
		List<PODto> lstPoDto = new ArrayList<>();
		try {
			if (prjSrch.getPoId().equalsIgnoreCase("0")) {
				prjSrch.setPoId(null);
			}
			lstPoDto = sqlMapperDaoObj.getPymntDataByPO(prjSrch);
		} catch (Exception ex) {
			System.out.println(Utility.getStackTrace(ex));
		}
		return lstPoDto;
	}

	@Override
	public PODto getTotalPaymentDetailsByPONo(String poId) {
		PODto poDto = new PODto();
		try {
			poDto = sqlMapperDaoObj.getTotalPaymentDetailsByPONo(poId);
		} catch (Exception ex) {
			System.out.println(Utility.getStackTrace(ex));
		}
		return poDto;
	}

	public List<PartyMasterDto> getVendorWhichPOExists() {
		return sqlMapperDaoObj.getVendorWhichPOExists();
	}

	@Override
	public List<CustomerDto> searchCustomerData(String searchTextData) {
		return sqlMapperDaoObj.searchCustomerData(searchTextData);
	}

	@Override
	public List<SalesOrderDto> getCustomerSOAStmtData(PrjSearch prjSrch) {
		return sqlMapperDaoObj.getCustomerSOAStmtData(prjSrch);
	}

	@Override
	public List<CustomerDto> fillCustomerByFrmSO(String customerId) {
		return sqlMapperDaoObj.fillCustomerByFrmSO(customerId);
	}

	@Override
	public int iUpdateReceivedPayment(ReceivedPymntDto receivedPaymentDto) {
		return sqlMapperDaoObj.iUpdateReceivedPayment(receivedPaymentDto);
	}

	@Override
	public List<PartyMasterDto> getVendorPoDtWisDtos(PrjSearch prjSrch) {
		return sqlMapperDaoObj.getVendorPoDtWise(prjSrch);
	}

	@Override
	public List<PODto> fillPOInPymntRpt(PrjSearch prjSrch) {
		return sqlMapperDaoObj.fillPOInPymntRpt(prjSrch);
	}

	@Override
	public String validateMrnBillNo(PrjSearch prjSrch) {
		return sqlMapperDaoObj.validateMrnBillNo(prjSrch);
	}

	@Override
	public List<StockRptDto> stockItemReport(PrjSearch prjSrch) {
		List<StockRptDto> stockItemReport = new ArrayList<>();
		try {
			stockItemReport = sqlMapperDaoObj.stockItemReport(prjSrch);
		} catch (Exception ex) {
			stockItemReport.get(0).setStrErrMessage(Utility.getStackTrace(ex));
		}
		return stockItemReport;
	}

	@Override
	public List<SalesOrderDto> getSOCustomerByName(PrjSearch prjSrch) {
		return sqlMapperDaoObj.getSOCustomerByName(prjSrch);
	}

}
