package com.erp.ezofficeinventory.SqlMapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
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
import com.erp.ezofficeinventory.entity.SalesOrderDto;
import com.erp.ezofficeinventory.entity.TowerMaster;
import com.erp.ezofficeinventory.entity.UomDto;
import com.erp.ezofficeinventory.entity.stockMasterDto;


@Mapper
public interface MapperDAO {
	
	@Select("SELECT  Login_Id,Login_Name,Login_Type,Active From LoginMaster where UserName = #{username} and password =#{password}")
	@Results({
		@Result(property = "LoginId", column = "Login_Id"),
		@Result(property = "loginUserName", column = "Login_Name"),
		@Result(property = "loginRole", column = "Login_Type"),
		@Result(property = "loginActive", column = "Active")
	})
	public LoginDto getLoginDetails(@Param("username") String username,@Param("password") String password);	
	
	
	@Insert("INSERT INTO UOMMaster (UOM_SHRT_NAME,UOM_Description,ACTIVE_FLAG,Created_Date,Created_BY) "
			+ "Values (#{uomDto.uomShortName},#{uomDto.uomDescription},#{uomDto.active},NOW(),#{uomDto.createdById})")
	@Options(useGeneratedKeys = true, keyProperty = "uomId", keyColumn = "Uom_Id")	
	public int iInsertUomMaster(@Param("uomDto") UomDto uomDto);
	
	@Select("Select Uom_Id,UOM_SHRT_NAME,UOM_Description from UOMMaster Where (UOM_SHRT_NAME like '%' #{searchData} '%' or UOM_Description like'%' #{searchData} '%')")
	@Results({
		@Result(property = "uomId", column = "Uom_Id"),
		@Result(property = "uomShortName", column = "UOM_SHRT_NAME"),
		@Result(property = "uomDescription", column = "UOM_Description")
	})
	public List<UomDto> searchUomMasterData(@Param("searchData") String searchData);
	
	
	@Insert("Insert Into ItemMaster (ItemName,UOMID,Description,ActiveFlag,Created_Date,Created_By,CategoryID,GSTPCT,subCategory,itemRate) "
			+ "values (#{itemMasterDto.itemShortNm},#{itemMasterDto.uomId},#{itemMasterDto.itemDescription}"
			+ ",#{itemMasterDto.activeFlag},NOW(),#{itemMasterDto.createdBy},#{itemMasterDto.categoryId}"
			+ ",#{itemMasterDto.gstNo},#{itemMasterDto.subCategoryId},#{itemMasterDto.itemRate})")
	@Options(useGeneratedKeys = true, keyProperty = "itemId", keyColumn = "ItemID")
	public int iInsertItemMaster(@Param("itemMasterDto") ItemMasterDto itemMasterDto);
	
	@Insert("Insert Into PartyMaster(PartyName,Address,PhoneNo,PANNo,GSTNO,Remarks,Created_By,Created_Date,PartyType) "
			+ "Values (#{partyMasterDtp.partyName},#{partyMasterDtp.address},#{partyMasterDtp.phoneNo}"
			+ ",#{partyMasterDtp.panNo},#{partyMasterDtp.gstNo},#{partyMasterDtp.remarks}"
			+ ",#{partyMasterDtp.createdBy},NOW(),#{partyMasterDtp.partyType})")
	@Options(useGeneratedKeys = true, keyProperty = "partyId", keyColumn = "PartyID")
	public int iInsertPartyMaster(@Param("partyMasterDtp") PartyMasterDto partyMasterDtp);
	
	@Select("Select Uom_Id,UOM_SHRT_NAME,UOM_Description,DATE_FORMAT(Created_Date, '%d-%b-%y')Created_Date,login_name \r\n"
			+ "from UOMMaster uom,LoginMaster login where login.login_id = uom.Created_by and Uom_Id=coalesce(#{uomId},Uom_Id)")
	@Results({
		@Result(property = "uomId", column = "Uom_Id"),
		@Result(property = "uomShortName", column = "UOM_SHRT_NAME"),
		@Result(property = "uomDescription", column = "UOM_Description"),
		@Result(property = "createdDt", column = "Created_Date"),
		@Result(property = "createdByName", column = "login_name")
	})
	public List<UomDto> getUOMDataHomePG(@Param("uomId") String uomId);
	
	@Update("Update UOMMaster Set UOM_Description=#{uomDto.uomDescription},Modified_Date=NOW() Where Uom_Id=#{uomDto.uomId}")
	public int iUpdateUomEntryPgData(@Param("uomDto") UomDto uomDto);
	
	@Select("Select PartyId,PartyName,Address,PhoneNo,a.PANNo,GSTNO,Remarks,DATE_FORMAT(Created_Date, '%d-%b-%y')Created_Date,b.Login_Name,a.Remarks,a.PartyType \r\n"
			+ "from PartyMaster a,LoginMaster b where a.Created_By = b.Login_Id and PartyId=coalesce(#{partyId},PartyId)"
			+ "and PartyType=coalesce(#{partyType},PartyType)")
	@Results({
		@Result(property = "partyId",column = "PartyId"),
		@Result(property = "partyName",column = "PartyName"),
		@Result(property = "address",column = "Address"),
		@Result(property = "phoneNo",column = "PhoneNo"),
		@Result(property = "gstNo",column = "GSTNO"),
		@Result(property = "panNo",column = "PANNo"),
		@Result(property = "remarks",column = "Remarks"),
		@Result(property = "createdDt",column = "Created_Date"),
		@Result(property = "createdByName",column = "Login_Name"),
		@Result(property = "partyType",column = "PartyType")
	})
	public List<PartyMasterDto> getPartyMasterDataHomePG(@Param("partyId") String partyId,@Param("partyType") String partyType);
	
	@Update("Update PartyMaster Set Address=#{partyMasterDtp.address},PhoneNo=#{partyMasterDtp.phoneNo},"
			+ "PANNo=#{partyMasterDtp.panNo},GSTNO=#{partyMasterDtp.gstNo},Remarks=#{partyMasterDtp.remarks}"
			+ ",Modified_Date=NOW(),Created_By=#{partyMasterDtp.createdBy},PartyType=#{partyMasterDtp.partyType} Where PartyID=#{partyMasterDtp.partyId}")
	public int iUpdatePartyMasterData(@Param("partyMasterDtp") PartyMasterDto partyMasterDtp);
	
	@Select("Select ItemID,ItemName,b.UOM_SHRT_NAME,a.Description,c.Login_Name,DATE_FORMAT(a.Created_Date, '%d-%b-%y')Created_Date,a.UOMID, \r\n"
			+ "a.categoryId,d.categoryCode,d.CategoryName,coalesce(a.GSTPCT,'')GSTPCT,coalesce(a.itemRate,'')itemRate"
			+ ",e.subCategId,e.subCategName,e.subCategCode From ItemMaster a,UOMMaster b,LoginMaster c,CategoryMaster d,subcategorymaster e where \r\n"
			+ "a.UOMID = b.Uom_Id and a.Created_By = c.Login_Id and a.CategoryID = d.CategoryID and a.subCategory = e.subCategId and ItemID=coalesce(#{itemId},ItemID)")
	@Results({
		@Result(property = "itemId",column = "ItemID"),
		@Result(property = "itemShortNm",column = "ItemName"),
		@Result(property = "uomName",column = "UOM_SHRT_NAME"),
		@Result(property = "itemDescription",column = "Description"),
		@Result(property = "createdByname",column = "Login_Name"),
		@Result(property = "categoryId",column = "categoryId"),
		@Result(property = "categoryDesc",column = "CategoryName"),
		@Result(property = "categoryCode",column = "categoryCode"),
		@Result(property = "createdDate",column = "Created_Date"),
		@Result(property = "gstNo",column = "GSTPCT"),
		@Result(property = "subCategoryId",column = "subCategId"),
		@Result(property = "subCategoryName",column = "subCategName"),
		@Result(property = "subcategoryCode",column = "subCategCode"),
		@Result(property = "uomId",column = "UOMID"),
		@Result(property = "itemRate",column = "itemRate")
	})
	public List<ItemMasterDto> getAllItemMasterHomePG(@Param("itemId") String itemId);
	
	@Update("Update ItemMaster Set Description = #{itemMasterDto.itemDescription},Created_Date=NOW(),Created_By=#{itemMasterDto.createdBy}"
			+ ",GSTPCT=#{itemMasterDto.gstNo},itemRate=#{itemMasterDto.itemRate} Where ItemID=#{itemMasterDto.itemId}")
	public int iUpdateItemMasterData(@Param("itemMasterDto") ItemMasterDto itemMasterDto);
	
	@Select("Select TowerId,TowerNumber,TowerDesc from TowerMaster Where TowerId Not in (#{prjSrch.searchVarData})")
	@Results({
		@Result(property = "towerId",column = "TowerId"),
		@Result(property = "towerNumber",column = "TowerNumber"),
		@Result(property = "towerDescription",column = "TowerDesc")
	})
	public List<TowerMaster> getAllTowerMaster(@Param("prjSrch") PrjSearch prjSrch);
	
	@Insert("Insert Into CustomerMaster(CustomerName,TowerNo,FlatNo,MobileNo,Remarks,CreatedBy,CreatedDate) "
			+ "Values (#{customerDto.customerName},#{customerDto.towerNuber},#{customerDto.flatNumber}"
			+ ",#{customerDto.mobileNuber},#{customerDto.remarks},#{customerDto.createdBy},NOW())")
	@Options(useGeneratedKeys = true, keyProperty = "customerId", keyColumn = "CustomerID")
	public int iInsertCustomerMaster(@Param("customerDto") CustomerDto customerDto);
	
	@Select("Select CustomerID,CustomerName,b.TowerNumber,b.TowerDesc,b.TowerId,FlatNo,MobileNo,CreatedBy,DATE_FORMAT(CreatedDate, '%d-%b-%y')CreatedDate,c.Login_Name,a.Remarks \r\n"
			+ "from CustomerMaster a,TowerMaster b,LoginMaster c where a.TowerNo = b.TowerId and a.CreatedBy = c.Login_Id and CustomerID=coalesce(#{customerId},CustomerID)")
	@Results({
		@Result(property = "customerId",column = "CustomerID"),
		@Result(property = "customerName",column = "CustomerName"),
		@Result(property = "towerNuber",column = "TowerNumber"),
		@Result(property = "towerDesc",column = "TowerDesc"),
		@Result(property = "towerId",column = "TowerId"),
		@Result(property = "flatNumber",column = "FlatNo"),
		@Result(property = "mobileNuber",column = "MobileNo"),
		@Result(property = "createdByName",column = "Login_Name"),
		@Result(property = "remarks",column = "Remarks"),
		@Result(property = "createdModifiedDate",column = "CreatedDate")
	})
	public List<CustomerDto> getAllCustomerData(@Param("customerId") String customerId);
	
	@Update("Update CustomerMaster Set TowerNo=#{customerDto.towerNuber},FlatNo=#{customerDto.flatNumber},"
			+ "MobileNo=#{customerDto.mobileNuber},Remarks=#{customerDto.remarks},CreatedBy=#{customerDto.createdBy},"
			+ "CreatedDate=NOW() Where CustomerID=#{customerDto.customerId}")
	public int iUpdateCustomerMaster(@Param("customerDto") CustomerDto customerDto);
	
	@Select("Select c.CategoryName,c.CategoryID,ItemID,ItemName,Description,b.Uom_Id,UOM_SHRT_NAME,coalesce(a.GSTPCT,0)GSTPCT,coalesce(a.itemRate,0)itemRate \r\n"
			+ "from ItemMaster a,UOMMaster b,categorymaster c Where a.UOMID = b.Uom_Id and c.CategoryID = a.CategoryID and\r\n"
			+ "(ItemName Like '%' #{prjSearch.searchVarData} '%' Or Description Like '%' #{prjSearch.searchVarData} '%')")
	@Results({
		@Result(property = "itemId",column = "ItemID"),
		@Result(property = "itemShortNm",column = "ItemName"),
		@Result(property = "itemDescription",column = "Description"),
		@Result(property = "uomId",column = "Uom_Id"),
		@Result(property = "uomName",column = "UOM_SHRT_NAME"),
		@Result(property = "gstNo",column = "GSTPCT"),
		@Result(property = "categoryDesc",column = "CategoryName"),
		@Result(property = "categoryId",column = "CategoryID"),
		@Result(property = "itemRate",column = "itemRate")
	})
	public List<ItemMasterDto> searchItemMasterData(@Param("prjSearch") PrjSearch prjSearch);
	
	@Insert("Insert Into POMaster(PODate,SupplierID,Remarks,CreatedBy,CreatedDate)\r\n"
			+ "Values (STR_TO_DATE(#{poDo.poDate}, '%d-%b-%y'),#{poDo.supplierId},#{poDo.remarks},#{poDo.createdById},NOW())")
	@Options(useGeneratedKeys = true, keyProperty = "ipoId", keyColumn = "POID")
	public int iInsertPOMasterData(@Param("poDo") PODto poDo);
	
	@Update("Update POMaster Set PONO=#{poNumber} Where POID=#{poId}")
	public int iUpdatePurchaseOrderNo(@Param("poNumber") String poNumber,@Param("poId") Integer poId);
	
	/*
	 * @Insert("Insert Into PODetails(POID,ItemID,Qty,Rate,Amount,UomId)\r\n" +
	 * "Values (#{poDtl.ipoId},#{poDtl.itemId},#{poDtl.poQty},#{poDtl.poRate},#{poDtl.poAmount},#{poDtl.uomId})"
	 * )
	 */
	@Insert("INSERT INTO PODetails (POID,ItemID,Qty,Rate,Amount,UomId,DelFlag,gstPct) \r\n"
			+ "VALUES (#{poDtl.ipoId},#{poDtl.itemId},#{poDtl.poQty},#{poDtl.poRate},#{poDtl.poAmount},#{poDtl.uomId},0,#{poDtl.gstPct})\r\n"
			+ "  ON DUPLICATE KEY \r\n"
			+ "UPDATE Qty=#{poDtl.poQty},Rate=#{poDtl.poRate},Amount=#{poDtl.poAmount},UomId=#{poDtl.uomId},DelFlag=0,gstPct=#{poDtl.gstPct}")
	public int iInsertPODtlData(@Param("poDtl") PODto poDtl);
	
	
	@Select("Select POID,PONO,DATE_FORMAT(PODate, '%d-%b-%y')PODATE,SupplierID,b.PartyName,a.Remarks,c.Login_Name \r\n"
			+ "from POMaster a,PartyMaster b,LoginMaster c where a.SupplierID = b.PartyID and POID=coalesce(#{poId},POID) and \r\n"
			+ "a.CreatedBy = c.Login_Id")
	@Results({
		@Result(property = "ipoId",column = "POID"),
		@Result(property = "poNo",column = "PONO"),
		@Result(property = "poDate",column = "PODATE"),
		@Result(property = "supplierId",column = "SupplierID"),
		@Result(property = "supplierName",column = "PartyName"),
		@Result(property = "createdbyName",column = "Login_Name"),
		@Result(property = "remarks",column = "Remarks")
	})
	public List<PODto> getAllPOData(@Param("poId") String poId);
	
	@Select("Select POID,a.ItemID,ItemName,c.Uom_Id,UOM_SHRT_NAME,Qty,Rate,Amount,a.gstPct\r\n"
			+ "from PODetails a,ItemMaster b,UOMMaster c where\r\n"
			+ "a.ItemID = b.ItemID and a.UomId = c.Uom_Id and coalesce(DelFlag,0) = 0 and a.poId = #{poId}")
	@Results({
		@Result(property = "ipoId",column = "POID"),
		@Result(property = "itemId",column = "ItemID"),
		@Result(property = "itemDesc",column = "ItemName"),
		@Result(property = "uomId",column = "Uom_Id"),
		@Result(property = "uomDesc",column = "UOM_SHRT_NAME"),
		@Result(property = "poQty",column = "Qty"),
		@Result(property = "poRate",column = "Rate"),
		@Result(property = "poAmount",column = "Amount"),
		@Result(property = "gstPct",column = "gstPct")
	})
	public List<PODto> getAllPoDetailData(@Param("poId") String poId);
	
	
	@Update("Update PODetails Set DelFlag = 1 Where POID = #{poId}")
	public int updateDelFlagInPoDtl(@Param("poId") String poId);
	
	@Select("Select CustomerID,CustomerName,TowerNo,FlatNo,MobileNo "
			+ "from CustomerMaster Where TowerNo=#{prjSrch.towerNo} and FlatNo=#{prjSrch.flatNo}")
	@Results({
		@Result(property = "customerId",column = "CustomerID"),
		@Result(property = "customerName",column = "CustomerName"),
		@Result(property = "towerNo",column = "TowerNo"),
		@Result(property = "flatNo",column = "FlatNo"),
		@Result(property = "cutomerMobileNo",column = "MobileNo")
	})
	public SalesOrderDto getCustomerDataByFlatNo(@Param("prjSrch") PrjSearch prjSrch);
	
	@Insert("Insert Into SaleHeader(SaleDate,TowerID,FlatNo,Remarks,CustomerId,rfQId,ContId) "
			+ "Values (STR_TO_DATE(#{salesOrderDto.salesDate}, '%d-%b-%y'),#{salesOrderDto.towerNo},#{salesOrderDto.flatNo}"
			+ ",#{salesOrderDto.remarks},#{salesOrderDto.customerId},#{salesOrderDto.rfQId},#{salesOrderDto.contId})")
	@Options(useGeneratedKeys = true, keyProperty = "saleId", keyColumn = "SaleID")
	public int iInsertSalesOrderHead(@Param("salesOrderDto") SalesOrderDto salesOrderDto);
	
	@Update("Update SaleHeader Set SaleNumber=#{soNumber} Where SaleID=#{soId}")
	public int iUpdateSalesOrderNo(@Param("soNumber") String soNumber,@Param("soId") String soId);	
	
	@Insert("INSERT INTO SaleDetails (SaleID,SaleDate,ItemID,Quantity,Rate,Amount,UomId,DelFlag,gstPct) \r\n"
			+ "VALUES (#{soDtl.saleId},STR_TO_DATE(#{soDtl.soDtlDate}, '%d/%m/%y'),#{soDtl.itemId},#{soDtl.soQty}"
			+ ",#{soDtl.soRate},#{soDtl.soAmount},#{soDtl.uomId},0,#{soDtl.gstPct})\r\n"
			+ "  ON DUPLICATE KEY \r\n"
			+ "UPDATE Quantity=#{soDtl.soQty},Rate=#{soDtl.soRate},Amount=#{soDtl.soAmount},UomId=#{soDtl.uomId},DelFlag=0,gstPct=#{soDtl.gstPct}")
	public int iInsertSODtlData(@Param("soDtl") SalesOrderDto soDtl);	
	
	@Update("Update SaleDetails Set DelFlag = 1 Where SaleID = #{soId}")
	public int updateDelFlagInSoDtl(@Param("soId") String soId);	
	
	
	@Select("Select a.SaleID,a.SaleNumber,DATE_FORMAT(a.SaleDate, '%d-%b-%y')SaleDate, \r\n"
			+ "coalesce(b.CustomerName,'')CustomerName,coalesce(b.MobileNo,'')MobileNo,\r\n"
			+ "if(a.FlatNo=0,'',a.FlatNo)FlatNo,if(a.TowerID=0,'',a.TowerID)TowerID,"
			+ "c.TowerNumber,c.TowerDesc,a.CustomerId,coalesce(a.RFQID,'')RFQID,coalesce(d.RFQNo,'')RFQNo,coalesce(a.Remarks,'')Remarks,"
			+ "coalesce(e.PartyID,'')PartyID,coalesce(e.PartyName,'')PartyName   \r\n"
			+ "From SaleHeader a \r\n"
			+ "Left Outer Join CustomerMaster b \r\n"
			+ "on a.CustomerId = b.CustomerID\r\n"
			+ "Left Outer Join TowerMaster c\r\n"
			+ "On a.TowerID = c.TowerID "
			+ "Left Outer Join rfqheader d "
			+ "on a.RFQID = d.RFQID "
			+ "Left Outer Join partymaster e on e.PartyID = a.ContId\r\n"
			+ " Where a.SaleID=coalesce(#{salesid},SaleID)")
	@Results({
		@Result(property = "saleId",column = "SaleID"),
		@Result(property = "salesOrderNumber",column = "SaleNumber"),
		@Result(property = "salesDate",column = "SaleDate"),
		@Result(property = "customerName",column = "CustomerName"),
		@Result(property = "customerId",column = "CustomerId"),
		@Result(property = "cutomerMobileNo",column = "MobileNo"),
		@Result(property = "flatNo",column = "FlatNo"),
		@Result(property = "towerId",column = "TowerID"),
		@Result(property = "towerNo",column = "TowerNumber"),
		@Result(property = "towerDescription",column = "TowerDesc"),
		@Result(property = "rfQId",column = "RFQID"),
		@Result(property = "rfQNumber",column = "RFQNo"),
		@Result(property = "remarks",column = "Remarks"),
		@Result(property = "contId",column = "PartyID")
	})
	public List<SalesOrderDto> getAllSalesOrderData(@Param("salesid") String salesid);
	
	@Select("Select a.SaleID,DATE_FORMAT(a.SaleDate, '%d/%m/%y')SaleDate,a.ItemID,a.UomID,\r\n"
			+ "b.ItemName,c.UOM_SHRT_NAME,a.Quantity,a.Rate,ROUND(a.Amount,2)Amount,a.gstPct\r\n"
			+ "from SaleDetails a,ItemMaster b,UOMMaster c\r\n"
			+ " where a.ItemID = b.ItemID and a.UomID = c.Uom_Id and coalesce(DelFlag,0) = 0 and SaleID=#{salesOrderId}")
	@Results({
		@Result(property = "saleId",column = "SaleID"),
		@Result(property = "soDtlDate",column = "SaleDate"),
		@Result(property = "itemId",column = "ItemID"),
		@Result(property = "uomId",column = "UomID"),
		@Result(property = "itemDesc",column = "ItemName"),
		@Result(property = "uomDesc",column = "UOM_SHRT_NAME"),
		@Result(property = "soQty",column = "Quantity"),
		@Result(property = "soRate",column = "Rate"),
		@Result(property = "gstPct",column = "gstPct"),
		@Result(property = "soAmount",column = "Amount")
	})
	public List<SalesOrderDto> getAllSalesOrderDetailsItem(@Param("salesOrderId") String salesOrderId);
	
	
	@Update("Update SaleHeader Set TowerID=#{salesOrderDto.towerNo},FlatNo=#{salesOrderDto.flatNo},"
			+ "Remarks=#{salesOrderDto.remarks},CustomerId=#{salesOrderDto.customerId},rfQId=#{salesOrderDto.rfQId},ContId=#{salesOrderDto.contId} "
			+ "Where SaleID=#{salesOrderDto.saleId}")
	public int iUpdateSalesMasterHead(@Param("salesOrderDto") SalesOrderDto salesOrderDto);
	
	@Select("Select CategoryID,CategoryName,CategoryCode from CategoryMaster")
	@Results({
		@Result(property = "categoryId",column = "CategoryID"),
		@Result(property = "categoryDesc",column = "CategoryName"),
		@Result(property = "categoryCode",column = "CategoryCode"),
	})
	public List<CategoryMasterDto> getAllCategoryMaster();
	
	@Select("Select POID,PONO,DATE_FORMAT(PODate, '%d-%b-%y')PODate From POMaster Where SupplierID = #{partyId}")
	@Results({
		@Result(property = "ipoId",column = "POID"),
		@Result(property = "poNo",column = "PONO"),
		@Result(property = "poDate",column = "PODate")
	})
	public List<PODto> fillPOInMKPymntPG(@Param("partyId") String partyId);
	
	@Insert("Insert Into PymntMaster(PartyID,PoID,PymntDate,pymntAmount,CreatedBy,CreatedDate,pymntRemarks)\r\n"
			+ "  VALUES(#{mkPaymentDto.partyID},#{mkPaymentDto.poID},STR_TO_DATE(#{mkPaymentDto.pymntDate}, '%d-%b-%y')"
			+ ",#{mkPaymentDto.pymntAmount},#{mkPaymentDto.createdBy},NOW(),#{mkPaymentDto.remarks})")
	@Options(useGeneratedKeys = true, keyProperty = "pymntId", keyColumn = "pymntId")
	public int iInsertMakePaymentData(@Param("mkPaymentDto") MakePymntDto mkPaymentDto);
	

	/*
	 * @Select("Select coalesce(PymntId,'')PymntId,coalesce(b.SupplierID,'')partyId,\r\n"
	 * + "coalesce(b.PoId,'')PoId,coalesce(a.PymntDate,'')PymntDate,\r\n" +
	 * "coalesce(a.pymntAmount,'')pymntAmount,b.PONo, Sum(c.Amount)PoAmount \r\n" +
	 * "from pomaster b Left Outer Join PymntMaster a On a.PoID = b.POID\r\n" +
	 * "Inner Join podetails c On b.POID = c.POId\r\n" +
	 * "where b.SupplierID = #{partyId}\r\n" +
	 * "Group by a.PymntId,a.partyId,PoId,a.PymntDate,a.PymntDate,b.PONO")
	 */	
	@Select("Select Z.*, coalesce(B.pymntamount,'') pymntamount,coalesce(B.PymntDate,'') PymntDate from (\r\n"
			+ "Select Distinct coalesce(b.SupplierID,'')partyId, coalesce(b.PoId,'')PoId,b.PONo,Sum(c.Amount)PoAmount \r\n"
			+ "from pomaster b Inner Join podetails c On b.POID = c.POId \r\n"
			+ "where b.SupplierID = #{partyId} \r\n"
			+ "Group by partyId,b.PoId,b.PONO) Z\r\n"
			+ "LEFT OUTER JOIN (select poid,SUM(pymntamount) pymntamount,DATE_FORMAT(max(PymntDate), '%d-%b-%y')PymntDate\r\n"
			+ "from pymntmaster \r\n"
			+ "Group by poid) B ON Z.poid = B.poid")
	@Results({
		//@Result(property = "pymntId",column = "PymntId"),
		@Result(property = "partyID",column = "partyId"),
		@Result(property = "poID",column = "PoId"),
		@Result(property = "pymntDate",column = "PymntDate"),
		@Result(property = "pymntAmount",column = "pymntAmount"),
		@Result(property = "poNo",column = "PONo"),
		@Result(property = "pOAmount",column = "PoAmount")
	})
	public List<MakePymntDto> getAllPaymentDataDto(@Param("partyId") int partyId);
	
	@Select("SELECT saleId,Salenumber,DATE_FORMAT(SaleDate, '%d-%b-%y')SODate FROM saleheader WHERE CustomerID = #{customerId}")
	@Results({
		@Result(property = "soID",column = "saleId"),
		@Result(property = "soNo",column = "Salenumber"),
		@Result(property = "soDate",column = "SODate")
	})
	public List<ReceivedPymntDto> fillSOInRecvdPymntPG(@Param("customerId") String customerId);	
	
	@Insert("INSERT INTO recvdMaster (CustomerID,SoID,PymntDate,pymntAmount,CreatedBy,CreatedDate,pymntRemarks)\r\n"
			+ "VALUES (#{receivedPymntDto.customerId},#{receivedPymntDto.soID},STR_TO_DATE(#{receivedPymntDto.pymntDate}, '%d-%b-%y')"
			+ ",#{receivedPymntDto.pymntAmount},#{receivedPymntDto.createdBy},NOW(),#{receivedPymntDto.pymntRemarks})")
	@Options(useGeneratedKeys = true, keyProperty = "pymntId", keyColumn = "PymntId")
	public int iInsertRecevdPaymentData(@Param("receivedPymntDto") ReceivedPymntDto receivedPymntDto);
	
	
	/*
	 * @Select("SELECT c.PymntId,c.CustomerID,a.saleNumber,DATE_FORMAT(c.PymntDate, '%d-%b-%y')PymntDate,c.pymntAmount,Sum(b.Amount)SaleAmount\r\n"
	 * +
	 * " FROM saleheader a,SaleDetails b,recvdMaster c where a.SaleID = b.SaleID\r\n"
	 * + "and a.CustomerID = c.CustomerID and a.SaleID = c.SoId\r\n" +
	 * "and a.CustomerID = #{customerId} \r\n" +
	 * "Group by c.PymntId,c.CustomerID,a.saleNumber,c.PymntDate,c.pymntAmount")
	 */
	@Select("Select Z.*, coalesce(B.pymntamount,'') pymntamount,coalesce(B.PymntDate,'') PymntDate from ( \r\n"
			+ "Select Distinct coalesce(b.CustomerId,'')CustomerId, coalesce(b.SaleID,'')SaleID,b.saleNumber,Sum(c.Amount)SaleAmount \r\n"
			+ "from saleheader b Inner Join SaleDetails c On b.SaleID = c.SaleID where b.CustomerId = #{customerId} \r\n"
			+ "Group by b.CustomerId,b.SaleID,b.saleNumber) Z LEFT OUTER JOIN \r\n"
			+ "(select SoID,SUM(pymntAmount) pymntamount,DATE_FORMAT(max(PymntDate), '%d-%b-%y')PymntDate \r\n"
			+ "from recvdMaster Group by SoID) B ON Z.SaleID = B.SoID")
	@Results({
		@Result(property = "customerId",column = "CustomerID"),
		@Result(property = "soNo",column = "saleNumber"),
		@Result(property = "soID",column = "SaleID"),
		@Result(property = "pymntDate",column = "PymntDate"),
		@Result(property = "pymntAmount",column = "pymntAmount"),
		@Result(property = "soAmount",column = "SaleAmount")
	})
	public List<ReceivedPymntDto> getAllPymntRecvdData(@Param("customerId") String customerId);
	
	@Insert("Insert Into MrnHead (Mrn_Date,Party_Id,PO_Id,CreatedBy,CreatedDate,BillNo)\r\n"
			+ "VALUES (STR_TO_DATE(#{mrnDto.mrnDate}, '%d-%b-%y'),#{mrnDto.partyId},#{mrnDto.poID},#{mrnDto.createdby},NOW(),#{mrnDto.partyBillNumber})")
	@Options(useGeneratedKeys = true, keyProperty = "mrnId", keyColumn = "Mrn_Id")
	public int iInsertMrnHeadDataObj(@Param("mrnDto") MrnDto mrnDto);
	
	@Insert("Insert Into MrnDtl(Mrn_Id,MrnDtl_Id,ItemId,UomId,PoQty,PoRate,TillDateRecvdQty,MrnQty,DisctPct,itemMrnAmount,Del_Flag,gstPct,balanceQty)\r\n"
			+ "VALUES (#{mrnDto.mrnId},#{mrnDto.mrnDtlId},#{mrnDto.itemId},#{mrnDto.uomId},#{mrnDto.poQty}"
			+ ",#{mrnDto.poRate},#{mrnDto.receivedQtyTillDate},#{mrnDto.mrnQty},#{mrnDto.discountPct},#{mrnDto.mrnItemAmount},0,#{mrnDto.gstPct},#{mrnDto.balanceQty})"
			+ " ON DUPLICATE KEY "
			+ " Update PoQty=#{mrnDto.poQty},PoRate=#{mrnDto.poRate},TillDateRecvdQty=#{mrnDto.receivedQtyTillDate}"
			+ ",MrnQty=#{mrnDto.mrnQty},DisctPct=#{mrnDto.discountPct},itemMrnAmount = #{mrnDto.mrnItemAmount},Del_Flag=0,gstPct=#{mrnDto.gstPct},balanceQty=#{mrnDto.balanceQty}")
	public int iInsertMrnDtlDataObj(@Param("mrnDto") MrnDto mrnDto);
	
	@Update("Update MrnHead Set Mrn_No=#{mrnNumber} Where Mrn_Id=#{mrnId}")
	public int updateMrnNoDataObj(@Param("mrnId") int mrnId,@Param("mrnNumber") String mrnNumber);
	
	@Update("Update MrnHead Set BillNo=#{partyBillNo} Where Mrn_Id=#{mrnId}")
	public int updateBillNoInMrnDataObj(@Param("mrnId") int mrnId,@Param("partyBillNo") String partyBillNo);
	
	
	@Update("Update MrnDtl Set Del_Flag=1 Where Mrn_Id=#{mrnId}")
	public int updateDelFlagInMrnDtl(@Param("mrnId") int mrnId);
	
	@Select("Select a.PoId,c.ItemID,c.itemname,b.uomId,d.uom_shrt_name,b.Qty,b.Rate,b.Amount,coalesce(mrn.MrnQty,0)MrnQty,coalesce(b.gstPct,0)gstPct \r\n"
			+ "From pomaster a \r\n"
			+ "INNER JOIN podetails b ON a.PoId = b.poId\r\n"
			+ "Inner JOIN itemmaster c on b.ItemID = c.ItemID \r\n"
			+ "INNER JOIN uommaster d on d.uom_id = b.uomid\r\n"
			+ "LEFT OUTER JOIN (Select f.ItemID,f.UomId,Sum(f.MrnQty)MrnQty\r\n"
			+ "from mrnhead e,MrnDtl f where e.Mrn_id = f.Mrn_id and e.po_Id = #{poId}\r\n"
			+ "Group by f.ItemID,f.UomId)mrn on mrn.ItemID = b.ItemId\r\n"
			+ "and mrn.uomId = b.uomId\r\n"
			+ "Where a.poId = #{poId}")
		@Results({
			@Result(property = "poID",column = "PoId"),
			@Result(property = "itemId",column = "ItemID"),
			@Result(property = "itemDesc",column = "itemname"),
			@Result(property = "uomId",column = "uomId"),
			@Result(property = "uomDesc",column = "uom_shrt_name"),
			@Result(property = "poQty",column = "Qty"),
			@Result(property = "poRate",column = "Rate"),
			@Result(property = "poAmount",column = "Amount"),
			@Result(property = "poAmount",column = "Amount"),
			@Result(property = "gstPct",column = "gstPct")
		})
	public List<MrnDto> getAllPoItemForMRNDetails(@Param("poId") String poId);
	
	@Select("Select a.Mrn_Id,a.Mrn_no,DATE_FORMAT(a.Mrn_Date, '%d-%b-%y')Mrn_Date,c.PartyName"
			+ ",b.PONO,a.Party_Id,a.PO_Id,coalesce(a.BillNo,0)BillNo\r\n"
			+ "from mrnhead a Inner Join pomaster b On a.PO_Id = b.POID\r\n"
			+ "Inner Join partymaster c on a.Party_Id = c.PartyID Where a.Mrn_Id=coalesce(#{mrnId},a.Mrn_Id)")
	@Results({
		@Result(property = "mrnId",column = "Mrn_Id"),
		@Result(property = "mrnNo",column = "Mrn_no"),
		@Result(property = "mrnDate",column = "Mrn_Date"),
		@Result(property = "partyName",column = "PartyName"),
		@Result(property = "poNumber",column = "PONO"),
		@Result(property = "partyId",column = "Party_Id"),
		@Result(property = "poID",column = "PO_Id"),
		@Result(property = "partyBillNumber",column = "BillNo")
	})
	public List<MrnDto> getAllMrnDataOnHomePG(@Param("mrnId") String mrnId);
	
	@Select("Select Mrn_Id,a.ItemId,a.UomId,PoQty,PoRate,TillDateRecvdQty,MrnQty,DisctPct,itemMrnAmount,"
			+ "b.ItemName,c.uom_shrt_name,coalesce(a.gstPct,0)gstPct,coalesce(a.balanceQty,0)balanceQty \r\n"
			+ "from mrnDtl a,itemmaster b,uommaster c Where a.ItemId = b.ItemId and a.UomId = b.UomId\r\n"
			+ "and a.UomId = c.Uom_Id and a.Mrn_id = #{mrnId}")
		@Results({
			@Result(property = "mrnId",column = "Mrn_Id"),
			@Result(property = "itemId",column = "ItemId"),
			@Result(property = "uomId",column = "UomId"),
			@Result(property = "poQty",column = "PoQty"),
			@Result(property = "poRate",column = "PoRate"),
			@Result(property = "receivedQtyTillDate",column = "TillDateRecvdQty"),
			@Result(property = "mrnQty",column = "MrnQty"),
			@Result(property = "discountPct",column = "DisctPct"),
			@Result(property = "mrnItemAmount",column = "itemMrnAmount"),
			@Result(property = "itemDesc",column = "ItemName"),
			@Result(property = "uomDesc",column = "uom_shrt_name"),
			@Result(property = "gstPct",column = "gstPct"),
			@Result(property = "balanceQty",column = "balanceQty")
		})
	public List<MrnDto> getAllItemForMRNDetails(@Param("mrnId") String mrnId);	
	
	
	@Insert("Insert Into rfqheader(RFQNo,RFQDate,TowerID,FlatNo,Remarks,CustomerId)\r\n"
			+ "Values (#{rfqDto.rfqNumber},STR_TO_DATE(#{rfqDto.rfqDate}, '%d-%b-%y')"
			+ ",#{rfqDto.towerNo},#{rfqDto.flatNo},#{rfqDto.remarks},#{rfqDto.customerId})")
	@Options(useGeneratedKeys = true, keyProperty = "rfqId", keyColumn = "RfqID")
	public int iInsertRFQHeader(@Param("rfqDto") RFQDto rfqDto);
	
	
	@Insert("Insert Into rfqdetails(RFQID,RFQDate,ItemID,Quantity,Rate,Amount,UomID,DelFlag,gstPct)\r\n"
			+ "Values (#{rfqDto.rfqId},STR_TO_DATE(#{rfqDto.rfqDtlDate}, '%d/%m/%y')"
			+ ",#{rfqDto.itemId},#{rfqDto.rfqQty},#{rfqDto.rfqRate}"
			+ ",#{rfqDto.rfqAmount},#{rfqDto.uomId},0,#{rfqDto.gstPct}) "
			+ "ON DUPLICATE KEY "
			+ "Update Quantity=#{rfqDto.rfqQty},Rate=#{rfqDto.rfqRate},Amount=#{rfqDto.rfqAmount},DelFlag=0,gstPct=#{rfqDto.gstPct}")
	public int iInsertRFQDetailsDataObj(@Param("rfqDto") RFQDto rfqDto);
	
	@Update("Update rfqheader Set RFQNo = #{rfQNo} Where RfqID = #{rfqId}")
	public int iUpdateRFQNumber(@Param("rfQNo") String rfQNo,@Param("rfqId") int rfqId);
	
	@Update("Update rfqheader Set TowerID=#{rfqDto.towerNo},FlatNo=#{rfqDto.flatNo},"
			+ "Remarks=#{rfqDto.remarks},CustomerId=#{rfqDto.customerId} Where RfqID=#{rfqDto.rfqId}")
	public int iUpdateRFQCustomerData(@Param("rfqDto") RFQDto rfqDto);	
	
	@Update("Update rfqdetails Set DelFlag = 1 Where RFQID = #{rfqDto.rfqId}")
	public int iUpdateDelFlagInRFQDtl(@Param("rfqDto") RFQDto rfqDto);
	
	@Select("Select RfqID,RFQNo,DATE_FORMAT(a.RFQDate, '%d-%b-%y')RFQDate,\r\n"
			+ "coalesce(b.CustomerName,'')CustomerName,coalesce(b.MobileNo,'')MobileNo,\r\n"
			+ "if(a.FlatNo=0,'',a.FlatNo)FlatNo,if(a.TowerID=0,'',a.TowerID)TowerID,c.TowerNumber,c.TowerDesc,a.CustomerId\r\n"
			+ "From rfqheader a Left Outer Join customermaster b \r\n"
			+ "On a.CustomerId = b.CustomerID \r\n"
			+ "Left Outer Join TowerMaster c\r\n"
			+ "On a.TowerID = c.TowerID\r\n"
			+ "Where RfqID = coalesce(#{rfQId},RfqID)")
	@Results({
		@Result(property = "rfqId",column = "RfqID"),
		@Result(property = "rfqNumber",column = "RFQNo"),
		@Result(property = "rfqDate",column = "RFQDate"),
		@Result(property = "customerName",column = "CustomerName"),
		@Result(property = "cutomerMobileNo",column = "MobileNo"),
		@Result(property = "flatNo",column = "FlatNo"),
		@Result(property = "towerId",column = "TowerID"),
		@Result(property = "towerNo",column = "TowerNumber"),
		@Result(property = "towerDescription",column = "TowerDesc"),
		@Result(property = "customerId",column = "CustomerId")
	})
	public List<RFQDto> getAllQuotationHomePGData(@Param("rfQId") String rfQId);
	
	
	@Select("Select a.RFQID,DATE_FORMAT(a.RFQDate, '%d/%m/%y')RFQDtlItemDate,a.ItemID,a.UomID,\r\n"
			+ "b.ItemName,c.UOM_SHRT_NAME,a.Quantity,a.Rate,a.Amount,a.gstPct \r\n"
			+ "from rfqdetails a,ItemMaster b,UOMMaster c\r\n"
			+ "where a.ItemID = b.ItemID and a.UomID = c.Uom_Id and coalesce(DelFlag,0) = 0 \r\n"
			+ "and RFQID=#{rfQId}")
	@Results({
		@Result(property = "rfqId",column = "RFQID"),
		@Result(property = "rfqDtlDate",column = "RFQDtlItemDate"),
		@Result(property = "itemId",column = "ItemID"),
		@Result(property = "uomId",column = "UomID"),
		@Result(property = "itemDesc",column = "ItemName"),
		@Result(property = "uomDesc",column = "UOM_SHRT_NAME"),
		@Result(property = "rfqQty",column = "Quantity"),
		@Result(property = "rfqRate",column = "Rate"),
		@Result(property = "rfqAmount",column = "Amount"),
		@Result(property = "gstPct",column = "gstPct")
	})
	public List<RFQDto> bindQuotationDataGrid(@Param("rfQId") String rfQId);
	
	@Select("Select coalesce(b.RFQNo,'')RFQNo,coalesce(b.RfqID,'')RfqID\r\n"
			+ "from rfqheader b\r\n"
			+ "Where b.TowerID=#{towerNo} and b.FlatNo=#{flatNo}")
	@Results({
		@Result(property = "rfQNumber",column = "RFQNo"),
		@Result(property = "rfQId",column = "RfqID")
	})
	public List<SalesOrderDto> findRFQInSalesOrder(@Param("towerNo") int towerNo,@Param("flatNo") int flatNo);
	
	
	@Select("Select a.POID,a.PONO,b.PartyName,DATE_FORMAT(a.PODate, '%d-%b-%y')PODate,b.Address,b.PhoneNo,a.Remarks \r\n"
			+ "from pomaster a inner join partymaster b on a.SupplierID = b.PartyID and a.PoId=#{PoId}")
	@Results({
		@Result(property = "ipoId",column = "POID"),
		@Result(property = "poNo",column = "PONO"),
		@Result(property = "supplierName",column = "PartyName"),
		@Result(property = "poDate",column = "PODate"),
		@Result(property = "partyAddress",column = "Address"),
		@Result(property = "partyContactNo",column = "PhoneNo"),
		@Result(property = "remarks",column = "Remarks")
	})
	public PODto vwPurchaseOrderReport(@Param("PoId") int PoId);
	
	@Select("Select X.CategoryName,X.Description,X.UOM_Description,X.Qty,X.Rate,X.Amount,X.gstPct,X.TaxAmount,\r\n"
			+ "ROUND((X.Amount - X.TaxAmount),2)WithOutTaxAmount \r\n"
			+ "From (Select d.CategoryName,b.Description,c.UOM_Description,\r\n"
			+ "ROUND(a.Qty,2)Qty,ROUND(a.Rate,2)Rate,ROUND(a.Amount,2)Amount,coalesce(a.gstPct,0)gstPct,ROUND(((Qty * Rate) * coalesce(a.gstPct,0) / 100),2)TaxAmount \r\n"
			+ "From podetails a \r\n"
			+ "Inner Join itemmaster b On a.ItemID = b.ItemID\r\n"
			+ "Inner Join uommaster c on c.Uom_Id = a.UomId\r\n"
			+ "Inner Join categorymaster d on d.CategoryID = b.CategoryID \r\n"
			+ "Where a.POID = #{poId} and coalesce(a.DelFlag,0) = 0)X")
	@Results({
		@Result(property = "categeoryName",column = "CategoryName"),
		@Result(property = "itemDesc",column = "Description"),
		@Result(property = "uomDesc",column = "UOM_Description"),
		@Result(property = "poQty",column = "Qty"),
		@Result(property = "poRate",column = "Rate"),
		@Result(property = "poAmount",column = "Amount"),
		@Result(property = "gstPct",column = "gstPct"),
		@Result(property = "taxAmount",column = "TaxAmount"),
		@Result(property = "withoutTaxAmount",column = "WithOutTaxAmount")
	})
	public List<PODto> getAllPoDetailsForReport(@Param("poId") int poId);
	
	@Select("Select a.RfqId,a.RFQNo,coalesce(b.CustomerName,'')CustomerName,DATE_FORMAT(a.RFQDate, '%d-%b-%y')RFQDate\r\n"
			+ ",coalesce(C.TowerNumber,'')TowerNo,coalesce(b.FlatNo,'')FlatNo,coalesce(b.MobileNo,'')MobileNo,a.Remarks \r\n"
			+ "from rfqheader a Left Outer join customermaster b on a.customerId = b.customerId "
			+ "Left Outer Join towermaster c on b.TowerNo = c.TowerId where a.RfqId=#{rfqId}")
	@Results({
		@Result(property = "rfqId",column = "RfqId"),
		@Result(property = "rfqNumber",column = "RFQNo"),
		@Result(property = "customerName",column = "CustomerName"),
		@Result(property = "rfqDate",column = "RFQDate"),
		@Result(property = "towerNo",column = "TowerNo"),
		@Result(property = "flatNo",column = "FlatNo"),
		@Result(property = "cutomerMobileNo",column = "MobileNo"),
		@Result(property = "remarks",column = "Remarks")
	})
	public RFQDto getQuotationHeaderReportDat(@Param("rfqId") int rfqId);
	
	@Select("Select X.CategoryName,X.Description,X.UOM_Description,X.Quantity,X.Rate,X.Amount,\r\n"
			+ "X.gstPct,X.TaxAmount, ROUND((X.Amount - X.TaxAmount),2)WithOutTaxAmount \r\n"
			+ "From (Select d.CategoryName,b.Description,c.UOM_Description, a.Quantity,ROUND(a.Rate,2)Rate,ROUND(a.Amount,2)Amount,\r\n"
			+ "coalesce(a.gstPct,0)gstPct,ROUND(((Quantity * Rate) * coalesce(a.gstPct,0) / 100),2)TaxAmount \r\n"
			+ "From rfqdetails a Inner Join itemmaster b On a.ItemID = b.ItemID Inner Join uommaster c on c.Uom_Id = a.UomId \r\n"
			+ "Inner Join categorymaster d on d.CategoryID = b.CategoryID Where a.rfqId = #{rfqId} and coalesce(a.DelFlag,0) = 0)X")
	@Results({
		@Result(property = "categoryName",column = "CategoryName"),
		@Result(property = "itemDesc",column = "Description"),
		@Result(property = "uomDesc",column = "UOM_Description"),
		@Result(property = "rfqQty",column = "Quantity"),
		@Result(property = "rfqRate",column = "Rate"),
		@Result(property = "rfqAmount",column = "Amount"),
		@Result(property = "gstPct",column = "gstPct"),
		@Result(property = "taxAmount",column = "TaxAmount"),
		@Result(property = "withOutTaxAmount",column = "WithOutTaxAmount")
	})
	public List<RFQDto> getQuotationDtlReportDat(@Param("rfqId") int rfqId);
	
	@Select("Select a.SaleID,a.SaleNumber,a.SaleDate\r\n"
			+ ",coalesce(d.TowerNumber,'')TowerNumber,coalesce(d.TowerDesc,'')TowerDesc\r\n"
			+ ",coalesce(c.FlatNo,'')FlatNo,coalesce(b.RFQNo,'')RFQNo,coalesce(b.RFQDate,'')RFQDate,"
			+ "coalesce(c.CustomerName,'')CustomerName,coalesce(c.MobileNo,'')MobileNo\r\n"
			+ "from saleheader a \r\n"
			+ "Left Outer Join rfqheader b on a.RFQID = b.RfqID \r\n"
			+ "Left Outer Join customermaster c on a.CustomerId = c.CustomerID\r\n"
			+ "Left Outer Join towermaster d on d.TowerId = c.TowerNo Where SaleID=#{salesId}")
	@Results({
		@Result(property = "saleId",column = "SaleID"),
		@Result(property = "salesOrderNumber",column = "SaleNumber"),
		@Result(property = "salesDate",column = "SaleDate"),
		@Result(property = "towerNo",column = "TowerNumber"),
		@Result(property = "towerDescription",column = "TowerDesc"),
		@Result(property = "flatNo",column = "FlatNo"),
		@Result(property = "rfQNumber",column = "RFQNo"),
		@Result(property = "rfQDate",column = "RFQDate"),
		@Result(property = "customerName",column = "CustomerName"),
		@Result(property = "cutomerMobileNo",column = "MobileNo"),
	})
	public SalesOrderDto getSalesOrderReportHead(@Param("salesId") int salesId);
	
	
	@Select("Select X.CategoryName,X.SaleID,X.ItemName,X.UOM_SHRT_NAME\r\n"
			+ ",X.Quantity,X.Rate,X.Amount,X.gstPct,X.TaxAmount,ROUND((X.Amount - X.TaxAmount),2)WithOutTaxAmount From (\r\n"
			+ "Select d.CategoryName,a.SaleID, b.ItemName,c.UOM_SHRT_NAME\r\n"
			+ ",ROUND(a.Quantity,2)Quantity,ROUND(a.Rate,2)Rate,ROUND(a.Amount,2)Amount,round(a.gstPct,2)gstPct,\r\n"
			+ "ROUND(((Quantity * Rate) * coalesce(a.gstPct,0) / 100),2)TaxAmount \r\n"
			+ "from SaleDetails a,ItemMaster b,UOMMaster c,categorymaster d\r\n"
			+ "where a.ItemID = b.ItemID and a.UomID = c.Uom_Id \r\n"
			+ "and b.CategoryID = d.CategoryID\r\n"
			+ "and coalesce(a.DelFlag,0) = 0 and SaleID=23)X")
	@Results({
		@Result(property = "categoryName",column = "CategoryName"),
		@Result(property = "saleId",column = "SaleID"),
		@Result(property = "itemDesc",column = "ItemName"),
		@Result(property = "uomDesc",column = "UOM_SHRT_NAME"),
		@Result(property = "soQty",column = "Quantity"),
		@Result(property = "soRate",column = "Rate"),
		@Result(property = "soAmount",column = "Amount"),
		@Result(property = "gstPct",column = "gstPct"),
		@Result(property = "taxAmount",column = "TaxAmount"),
		@Result(property = "withOutTaxAmount",column = "WithOutTaxAmount")
	})
	public List<SalesOrderDto> getSalesOrderDetalReport(@Param("salesId") int salesId);
	
	@Select("Select Description,ItemID from itemmaster where CategoryID = #{categoryid}")
	@Results({
		@Result(property = "itemDescription",column = "Description"),
		@Result(property = "itemId",column = "ItemID")
	})
	public List<ItemMasterDto> getItemDetailStockReport(@Param("categoryid") int categoryid);
	
	
	@Select("Select a.CategoryName,a.CategoryID,a.ItemID,a.ItemName,a.UOM, a.Opening_QTY,a.MRNQty, a.SaleQuantity , (a.Opening_QTY + a.MRNQty) - a.SaleQuantity ClosingQuantity \r\n"
			+ "from\r\n"
			+ "(select CM.CategoryName,CM.CategoryID,IM.ItemID,IM.ItemName,UOM.UOM_SHRT_NAME UOM, SM.Opening_QTY , coalesce(SUM(mrn.MrnQty),0) MRNQty , \r\n"
			+ "coalesce(SUM(SD.Quantity),0) SaleQuantity\r\n"
			+ "from stockmaster SM\r\n"
			+ "INNER JOIN itemmaster IM on SM.ItemID=IM.ItemID "
			+ "INNER JOIN categorymaster CM ON CM.CategoryID = IM.CategoryID\r\n"
			+ "INNER JOIN uommaster UOM ON IM.UOMID = uom.Uom_Id\r\n"
			+ "LEFT OUTER JOIN mrndtl mrn ON SM.ItemID = mrn.ItemId\r\n"
			+ "LEFT OUTER JOIN saledetails SD ON SM.itemid = SD.ItemID\r\n"
			+ "Where IM.CategoryID = coalesce(#{prjSrch.categId},IM.CategoryID) and \r\n"
			+ "IM.ItemID = coalesce(#{prjSrch.itemId},IM.ItemID)\r\n"
			+ "group by IM.ItemID,IM.ItemName, UOM.UOM_SHRT_NAME, SM.Opening_QTY,CM.CategoryName,CM.CategoryID\r\n"
			+ ") a")
		@Results({
			@Result(property = "itemId",column = "ItemID"),
			@Result(property = "itemName",column = "ItemName"),
			@Result(property = "uom",column = "UOM"),
			@Result(property = "opening_Qty",column = "Opening_QTY"),
			@Result(property = "mrnQty",column = "MRNQty"),
			@Result(property = "saleQuantity",column = "SaleQuantity"),
			@Result(property = "categoryId",column = "CategoryID"),
			@Result(property = "categoryName",column = "CategoryName"),
			@Result(property = "closingQuantity",column = "ClosingQuantity")
		})
		public List<stockMasterDto> getStockItemReport(@Param("prjSrch") PrjSearch prjSrch);
		
		@Select("Select LPAD(COALESCE(Count(*),0)+1, 2, '0')categCode from categoryMaster")
		@Result(column = "categCode",property = "categoryCode")
		public CategoryMasterDto getMaxCategoryCode();
		
		
		@Insert("Insert Into categorymaster(CategoryName,DelFlag,CreatedDate,CategoryCode)\r\n"
				+ "Values (#{categoryDto.categoryDesc},0,NOW(),#{categoryDto.categoryCode})")
		@Options(useGeneratedKeys = true, keyProperty = "categoryId", keyColumn = "CategoryID")
		public int iInsertCategoryMaster(@Param("categoryDto") CategoryMasterDto categoryDto);
	
		@Insert("Insert Into subcategorymaster(subCategCode,subCategName,CreatedBy,CreatedDate,CategoryID)\r\n"
				+ "Values (#{subCategoryDto.subCategoryCode},#{subCategoryDto.subCategoryDesc},"
				+ "#{subCategoryDto.createdBy},NOW(),#{subCategoryDto.categoryId})")
		@Options(useGeneratedKeys = true, keyProperty = "subCategoryId", keyColumn = "subCategId")
		public int iInsertSubCategoryMaster(@Param("subCategoryDto") CategoryMasterDto subCategoryDto);
		
		@Select("Select LPAD(COALESCE(Count(*),0)+1, 2, '0')SubCatCode from subcategorymaster")
		@Result(column = "SubCatCode",property = "subCategoryCode")
		public CategoryMasterDto getMaxSubCategoryCode();		
		
		@Select("Select CM.CategoryID,CM.CategoryCode,CM.CategoryName,\r\n"
				+ "SCM.subCategId,SCM.subCategCode,SCM.subCategName\r\n"
				+ " from categorymaster CM Inner Join subcategorymaster SCM\r\n"
				+ "On CM.CategoryID = SCM.CategoryID")
		@Results({
			@Result(property = "categoryId",column = "CategoryID"),
			@Result(property = "categoryCode",column = "CategoryCode"),
			@Result(property = "categoryDesc",column = "CategoryName"),
			@Result(property = "subCategoryId",column = "subCategId"),
			@Result(property = "subCategoryCode",column = "subCategCode"),
			@Result(property = "subCategoryDesc",column = "subCategName")
		})
		public List<CategoryMasterDto> getAllItemSubCatDetails();
		
		@Insert("Insert Into subcategorymaster(CategoryID,subCategCode,subCategName,CreatedBy,CreatedDate)\r\n"
				+ "Values (#{categId},'01','GENERAL',1,NOW())")
		public int iInsertDefaultSubCategory(@Param("categId") int categId);
		
		@Select("Select subCategId,subCategCode,subCategName from subcategorymaster Where CategoryID=#{categId}")
		@Results({
			@Result(property = "subCategoryId",column = "subCategId"),
			@Result(property = "subCategoryCode",column = "subCategCode"),
			@Result(property = "subCategoryDesc",column = "subCategName")
		})		
		public List<CategoryMasterDto> getSubCategoryItem(@Param("categId") int categId);
		
		@Select("Select subCategId,subCategCode,subCategName from subcategorymaster Where CategoryID=#{categId} and subCategName=#{subCategNM}")
		@Results({
			@Result(property = "subCategoryId",column = "subCategId"),
			@Result(property = "subCategoryCode",column = "subCategCode"),
			@Result(property = "subCategoryDesc",column = "subCategName")
		})		
		public CategoryMasterDto validateSubCategory(@Param("categId") int categId,@Param("subCategNM") String subCategNM);	
		
		
		@Select("Select pm.PymntId,DATE_FORMAT(pm.PymntDate, '%d-%b-%y')PymntDate\r\n"
				+ ",coalesce(pm.pymntRemarks,'Payment Paid')pymntRemarks,ROUND(pm.pymntAmount,2)pymntAmount,po.PONO  \r\n"
				+ "From pymntmaster pm Inner Join pomaster po on pm.PoID = po.POID Where pm.PoID = #{poId} Order by pm.PymntDate Asc")
		@Results({
			@Result(property = "pymntId",column = "PymntId"),
			@Result(property = "pymntDate",column = "PymntDate"),
			@Result(property = "remarks",column = "pymntRemarks"),
			@Result(property = "pymntAmount",column = "pymntAmount"),
			@Result(property = "poNo",column = "PONO")
		})
		public List<MakePymntDto> getPymntAgPO(@Param("poId") String poId);
		
		@Select("Select rm.PymntId,DATE_FORMAT(rm.PymntDate, '%d-%b-%y')PymntDate ,coalesce(rm.pymntRemarks,'Payment Received')pymntRemarks,\r\n"
				+ "ROUND(rm.pymntAmount,2)pymntAmount,so.saleNumber \r\n"
				+ "From recvdMaster rm Inner Join saleheader so on rm.SoID = so.SaleID \r\n"
				+ "Where rm.SoID = #{soId} Order by rm.PymntDate Asc")
		@Results({
			@Result(property = "pymntId",column = "PymntId"),
			@Result(property = "pymntDate",column = "PymntDate"),
			@Result(property = "pymntRemarks",column = "pymntRemarks"),
			@Result(property = "pymntAmount",column = "pymntAmount"),
			@Result(property = "soNo",column = "saleNumber")
		})		
		public List<ReceivedPymntDto> getPymntRecvdAgSO(@Param("soId") String soId);
}
