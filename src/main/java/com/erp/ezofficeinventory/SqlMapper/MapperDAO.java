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
	
	@Select("SELECT  LOGIN_ID,LOGIN_NAME,LOGIN_TYPE,ACTIVE FROM LOGINMASTER WHERE USERNAME = #{username} AND PASSWORD =#{password}")
	@Results({
		@Result(property = "LoginId", column = "Login_Id"),
		@Result(property = "loginUserName", column = "Login_Name"),
		@Result(property = "loginRole", column = "Login_Type"),
		@Result(property = "loginActive", column = "Active")
	})
	public LoginDto getLoginDetails(@Param("username") String username,@Param("password") String password);	
	
	
	@Insert("INSERT INTO UOMMASTER (UOM_SHRT_NAME,UOM_DESCRIPTION,ACTIVE_FLAG,CREATED_DATE,CREATED_BY) "
			+ "Values (#{uomDto.uomShortName},#{uomDto.uomDescription},#{uomDto.active},NOW(),#{uomDto.createdById})")
	@Options(useGeneratedKeys = true, keyProperty = "uomId", keyColumn = "Uom_Id")	
	public int iInsertUomMaster(@Param("uomDto") UomDto uomDto);
	
	@Select("SELECT UOM_ID,UOM_SHRT_NAME,UOM_DESCRIPTION FROM UOMMASTER WHERE (UOM_SHRT_NAME LIKE '%' #{searchData} '%' OR UOM_DESCRIPTION like'%' #{searchData} '%')")
	@Results({
		@Result(property = "uomId", column = "Uom_Id"),
		@Result(property = "uomShortName", column = "UOM_SHRT_NAME"),
		@Result(property = "uomDescription", column = "UOM_Description")
	})
	public List<UomDto> searchUomMasterData(@Param("searchData") String searchData);
	
	
	@Insert("INSERT INTO ITEMMASTER (ITEMNAME,UOMID,DESCRIPTION,ACTIVEFLAG,CREATED_DATE,CREATED_BY,CATEGORYID,GSTPCT,SUBCATEGORY,ITEMRATE) "
			+ "values (#{itemMasterDto.itemShortNm},#{itemMasterDto.uomId},#{itemMasterDto.itemDescription}"
			+ ",#{itemMasterDto.activeFlag},NOW(),#{itemMasterDto.createdBy},#{itemMasterDto.categoryId}"
			+ ",#{itemMasterDto.gstNo},#{itemMasterDto.subCategoryId},#{itemMasterDto.itemRate})")
	@Options(useGeneratedKeys = true, keyProperty = "itemId", keyColumn = "ItemID")
	public int iInsertItemMaster(@Param("itemMasterDto") ItemMasterDto itemMasterDto);
	
	@Insert("INSERT INTO PARTYMASTER(PARTYNAME,ADDRESS,PHONENO,PANNO,GSTNO,REMARKS,CREATED_BY,CREATED_DATE,PARTYTYPE) "
			+ "Values (#{partyMasterDtp.partyName},#{partyMasterDtp.address},#{partyMasterDtp.phoneNo}"
			+ ",#{partyMasterDtp.panNo},#{partyMasterDtp.gstNo},#{partyMasterDtp.remarks}"
			+ ",#{partyMasterDtp.createdBy},NOW(),#{partyMasterDtp.partyType})")
	@Options(useGeneratedKeys = true, keyProperty = "partyId", keyColumn = "PartyID")
	public int iInsertPartyMaster(@Param("partyMasterDtp") PartyMasterDto partyMasterDtp);
	
	@Select("SELECT UOM_ID,UOM_SHRT_NAME,UOM_DESCRIPTION,DATE_FORMAT(CREATED_DATE, '%D-%B-%Y')CREATED_DATE,LOGIN_NAME \r\n"
			+ "FROM UOMMASTER UOM,LOGINMASTER LOGIN WHERE LOGIN.LOGIN_ID = UOM.CREATED_BY AND UOM_ID=coalesce(#{uomId},UOM_ID)")
	@Results({
		@Result(property = "uomId", column = "Uom_Id"),
		@Result(property = "uomShortName", column = "UOM_SHRT_NAME"),
		@Result(property = "uomDescription", column = "UOM_Description"),
		@Result(property = "createdDt", column = "Created_Date"),
		@Result(property = "createdByName", column = "login_name")
	})
	public List<UomDto> getUOMDataHomePG(@Param("uomId") String uomId);
	
	@Update("UPDATE UOMMASTER SET UOM_DESCRIPTION=#{uomDto.uomDescription},MODIFIED_DATE=NOW() Where UOM_ID=#{uomDto.uomId}")
	public int iUpdateUomEntryPgData(@Param("uomDto") UomDto uomDto);
	
	@Select("SELECT PARTYID,PARTYNAME,ADDRESS,PHONENO,A.PANNO,GSTNO,REMARKS,DATE_FORMAT(CREATED_DATE, '%D-%B-%Y')CREATED_DATE,B.LOGIN_NAME,A.REMARKS,A.PARTYTYPE \r\n"
			+ "FROM PARTYMASTER A,LOGINMASTER B WHERE A.CREATED_BY = B.LOGIN_ID AND PARTYID=coalesce(#{partyId},PARTYID)"
			+ "AND PARTYTYPE=coalesce(#{partyType},PARTYTYPE)")
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
	
	@Select("SELECT DISTINCT PARTYID,PARTYNAME,ADDRESS,PHONENO,A.PANNO,GSTNO,REMARKS,\r\n"
			+ "DATE_FORMAT(CREATED_DATE, '%d-%b-%y')CREATED_DATE,B.LOGIN_NAME,A.REMARKS,A.PARTYTYPE\r\n"
			+ "FROM PARTYMASTER A,LOGINMASTER B WHERE A.CREATED_BY = B.LOGIN_ID\r\n"
			+ "and exists (Select 1 from POMASTER where SUPPLIERID = A.PARTYID) Order by PARTYNAME")
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
	public List<PartyMasterDto> getVendorWhichPOExists();	
	
	@Select("SELECT DISTINCT PARTYID,PARTYNAME,ADDRESS,PHONENO,A.PANNO,GSTNO,REMARKS,\r\n"
			+ "DATE_FORMAT(CREATED_DATE, '%d-%b-%y')CREATED_DATE,B.LOGIN_NAME,A.REMARKS,A.PARTYTYPE\r\n"
			+ "FROM PARTYMASTER A,LOGINMASTER B WHERE A.CREATED_BY = B.LOGIN_ID\r\n"
			+ "and exists (Select 1 from POMASTER where SUPPLIERID = A.PARTYID "
			+ "AND date_format(PODATE,'%Y-%m-%d') between #{prjSrch.fromDate} AND #{prjSrch.toDate}) Order by PARTYNAME")
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
	public List<PartyMasterDto> getVendorPoDtWise(@Param("prjSrch") PrjSearch prjSrch);	
	
	@Update("UPDATE PARTYMASTER SET ADDRESS=#{partyMasterDtp.address},PHONENO=#{partyMasterDtp.phoneNo},"
			+ "PANNO=#{partyMasterDtp.panNo},GSTNO=#{partyMasterDtp.gstNo},REMARKS=#{partyMasterDtp.remarks}"
			+ ",MODIFIED_DATE=NOW(),Created_By=#{partyMasterDtp.createdBy},PARTYTYPE=#{partyMasterDtp.partyType} Where PARTYID=#{partyMasterDtp.partyId}")
	public int iUpdatePartyMasterData(@Param("partyMasterDtp") PartyMasterDto partyMasterDtp);
	
	@Select("SELECT ITEMID,ITEMNAME,B.UOM_SHRT_NAME,A.DESCRIPTION,C.LOGIN_NAME,DATE_FORMAT(A.CREATED_DATE, '%d-%b-%y')CREATED_DATE,A.UOMID, \r\n"
			+ "A.CATEGORYID,D.CATEGORYCODE,D.CATEGORYNAME,coalesce(A.GSTPCT,'')GSTPCT,coalesce(A.ITEMRATE,'')itemRate"
			+ ",E.SUBCATEGID,E.SUBCATEGNAME,E.SUBCATEGCODE FROM ITEMMASTER A,UOMMASTER B,LOGINMASTER C,CATEGORYMASTER D,SUBCATEGORYMASTER E WHERE \r\n"
			+ "A.UOMID = B.UOM_ID AND A.CREATED_BY = C.LOGIN_ID AND A.CATEGORYID = D.CATEGORYID AND A.SUBCATEGORY = E.SUBCATEGID AND ITEMID=coalesce(#{itemId},ITEMID)")
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
	
	@Update("UPDATE ITEMMASTER SET DESCRIPTION = #{itemMasterDto.itemDescription},CREATED_DATE=NOW(),CREATED_BY=#{itemMasterDto.createdBy}"
			+ ",GSTPCT=#{itemMasterDto.gstNo},ITEMRATE=#{itemMasterDto.itemRate} where ITEMID=#{itemMasterDto.itemId}")
	public int iUpdateItemMasterData(@Param("itemMasterDto") ItemMasterDto itemMasterDto);
	
	@Select("SELECT TOWERID,TOWERNUMBER,TOWERDESC FROM TOWERMASTER WHERE TOWERID NOT IN (#{prjSrch.searchVarData})")
	@Results({
		@Result(property = "towerId",column = "TowerId"),
		@Result(property = "towerNumber",column = "TowerNumber"),
		@Result(property = "towerDescription",column = "TowerDesc")
	})
	public List<TowerMaster> getAllTowerMaster(@Param("prjSrch") PrjSearch prjSrch);
	
	@Insert("INSERT INTO CUSTOMERMASTER(CUSTOMERNAME,TOWERNO,FLATNO,MOBILENO,REMARKS,CREATEDBY,CREATEDDATE) "
			+ "Values (#{customerDto.customerName},#{customerDto.towerNuber},#{customerDto.flatNumber}"
			+ ",#{customerDto.mobileNuber},#{customerDto.remarks},#{customerDto.createdBy},NOW())")
	@Options(useGeneratedKeys = true, keyProperty = "customerId", keyColumn = "CUSTOMERID")
	public int iInsertCustomerMaster(@Param("customerDto") CustomerDto customerDto);
	
	@Select("SELECT CUSTOMERID,CUSTOMERNAME,B.TOWERNUMBER,B.TOWERDESC,B.TOWERID,FLATNO,MOBILENO,CREATEDBY,DATE_FORMAT(CREATEDDATE, '%d-%b-%y')CreatedDate,C.LOGIN_NAME,A.REMARKS \r\n"
			+ "FROM CUSTOMERMASTER A,TOWERMASTER B,LOGINMASTER C WHERE A.TOWERNO = B.TOWERID AND A.CREATEDBY = C.LOGIN_ID AND CUSTOMERID=coalesce(#{customerId},CUSTOMERID) Order By CUSTOMERNAME")
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
	
	@Update("UPDATE CUSTOMERMASTER SET TOWERNO=#{customerDto.towerNuber},FLATNO=#{customerDto.flatNumber},"
			+ "MOBILENO=#{customerDto.mobileNuber},REMARKS=#{customerDto.remarks},CREATEDBY=#{customerDto.createdBy},"
			+ "CREATEDDATE=NOW() Where CUSTOMERID=#{customerDto.customerId}")
	public int iUpdateCustomerMaster(@Param("customerDto") CustomerDto customerDto);
	
	@Select("SELECT C.CATEGORYNAME,C.CATEGORYID,ITEMID,ITEMNAME,DESCRIPTION,B.UOM_ID,UOM_SHRT_NAME,coalesce(A.GSTPCT,0)GSTPCT,coalesce(A.ITEMRATE,0)ITEMRATE \r\n"
			+ "FROM ITEMMASTER A,UOMMASTER B,CATEGORYMASTER C WHERE A.UOMID = B.UOM_ID AND C.CATEGORYID = A.CATEGORYID and\r\n"
			+ "(ITEMNAME Like '%' #{prjSearch.searchVarData} '%' Or DESCRIPTION Like '%' #{prjSearch.searchVarData} '%')")
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
	
	@Insert("INSERT INTO POMASTER(PODATE,SUPPLIERID,REMARKS,CREATEDBY,CREATEDDATE)\r\n"
			+ "Values (STR_TO_DATE(#{poDo.poDate}, '%d-%b-%y'),#{poDo.supplierId},#{poDo.remarks},#{poDo.createdById},NOW())")
	@Options(useGeneratedKeys = true, keyProperty = "ipoId", keyColumn = "POID")
	public int iInsertPOMasterData(@Param("poDo") PODto poDo);
	
	@Update("UPDATE POMASTER SET PONO=#{poNumber} WHERE POID=#{poId}")
	public int iUpdatePurchaseOrderNo(@Param("poNumber") String poNumber,@Param("poId") Integer poId);
	
	/*
	 * @Insert("Insert Into PODetails(POID,ItemID,Qty,Rate,Amount,UomId)\r\n" +
	 * "Values (#{poDtl.ipoId},#{poDtl.itemId},#{poDtl.poQty},#{poDtl.poRate},#{poDtl.poAmount},#{poDtl.uomId})"
	 * )
	 */
	@Insert("INSERT INTO PODETAILS (POID,ITEMID,QTY,RATE,AMOUNT,UOMID,DELFLAG,GSTPCT) \r\n"
			+ "VALUES (#{poDtl.ipoId},#{poDtl.itemId},#{poDtl.poQty},#{poDtl.poRate},#{poDtl.poAmount},#{poDtl.uomId},0,#{poDtl.gstPct})\r\n"
			+ "  ON DUPLICATE KEY \r\n"
			+ "UPDATE QTY=#{poDtl.poQty},RATE=#{poDtl.poRate},AMOUNT=#{poDtl.poAmount},UOMID=#{poDtl.uomId},DELFLAG=0,GSTPCT=#{poDtl.gstPct}")
	public int iInsertPODtlData(@Param("poDtl") PODto poDtl);
	
	
	@Select("SELECT POID,PONO,DATE_FORMAT(PODATE, '%d-%b-%y')PODATE,SUPPLIERID,B.PARTYNAME,A.REMARKS,C.LOGIN_NAME \r\n"
			+ "FROM POMASTER A,PARTYMASTER B,LOGINMASTER C WHERE A.SUPPLIERID = B.PARTYID AND POID=coalesce(#{poId},POID) AND \r\n"
			+ "A.CREATEDBY = C.LOGIN_ID")
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
	
	@Select("SELECT POID,A.ITEMID,ITEMNAME,C.UOM_ID,UOM_SHRT_NAME,QTY,RATE,AMOUNT,A.GSTPCT\r\n"
			+ "FROM PODETAILS A,ITEMMASTER B,UOMMASTER C WHERE\r\n"
			+ "A.ITEMID = B.ITEMID AND A.UOMID = C.UOM_ID AND coalesce(DELFLAG,0) = 0 and A.POID = #{poId}")
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
	
	
	@Update("UPDATE PODETAILS SET DELFLAG = 1 WHERE POID = #{poId}")
	public int updateDelFlagInPoDtl(@Param("poId") String poId);
	
	@Select("SELECT CUSTOMERID,CUSTOMERNAME,TOWERNO,FLATNO,MOBILENO "
			+ "FROM CUSTOMERMASTER WHERE TOWERNO=#{prjSrch.towerNo} AND FLATNO=#{prjSrch.flatNo}")
	@Results({
		@Result(property = "customerId",column = "CustomerID"),
		@Result(property = "customerName",column = "CustomerName"),
		@Result(property = "towerNo",column = "TowerNo"),
		@Result(property = "flatNo",column = "FlatNo"),
		@Result(property = "cutomerMobileNo",column = "MobileNo")
	})
	public List<SalesOrderDto> getCustomerDataByFlatNo(@Param("prjSrch") PrjSearch prjSrch);
	
	@Insert("INSERT INTO SALEHEADER(SALEDATE,TOWERID,FLATNO,REMARKS,CUSTOMERID,RFQID,CONTID) "
			+ "Values (STR_TO_DATE(#{salesOrderDto.salesDate}, '%d-%b-%y'),#{salesOrderDto.towerNo},#{salesOrderDto.flatNo}"
			+ ",#{salesOrderDto.remarks},#{salesOrderDto.customerId},#{salesOrderDto.rfQId},#{salesOrderDto.contId})")
	@Options(useGeneratedKeys = true, keyProperty = "saleId", keyColumn = "SaleID")
	public int iInsertSalesOrderHead(@Param("salesOrderDto") SalesOrderDto salesOrderDto);
	
	@Update("UPDATE SALEHEADER SET SALENUMBER=#{soNumber} WHERE SALEID=#{soId}")
	public int iUpdateSalesOrderNo(@Param("soNumber") String soNumber,@Param("soId") String soId);	
	
	@Insert("INSERT INTO SALEDETAILS (SALEID,SALEDATE,ITEMID,QUANTITY,RATE,AMOUNT,UOMID,DELFLAG,GSTPCT) \r\n"
			+ "VALUES (#{soDtl.saleId},STR_TO_DATE(#{soDtl.soDtlDate}, '%d/%m/%y'),#{soDtl.itemId},#{soDtl.soQty}"
			+ ",#{soDtl.soRate},#{soDtl.soAmount},#{soDtl.uomId},0,#{soDtl.gstPct})\r\n"
			+ "  ON DUPLICATE KEY \r\n"
			+ "UPDATE QUANTITY=#{soDtl.soQty},RATE=#{soDtl.soRate},AMOUNT=#{soDtl.soAmount},UOMID=#{soDtl.uomId},DELFLAG=0,GSTPCT=#{soDtl.gstPct}")
	public int iInsertSODtlData(@Param("soDtl") SalesOrderDto soDtl);	
	
	@Update("UPDATE SALEDETAILS SET DELFLAG = 1 WHERE SALEID = #{soId}")
	public int updateDelFlagInSoDtl(@Param("soId") String soId);	
	
	
	@Select("SELECT a.SALEID,a.SALENUMBER,DATE_FORMAT(a.SALEDATE, '%d-%b-%y')SaleDate, \r\n"
			+ "coalesce(b.CUSTOMERNAME,'')CustomerName,coalesce(b.MOBILENO,'')MobileNo,\r\n"
			+ "if(a.FLATNO=0,'',a.FLATNO)FlatNo,if(a.TOWERID=0,'',a.TOWERID)TOWERID,"
			+ "c.TOWERNUMBER,c.TOWERDESC,a.CUSTOMERID,coalesce(a.RFQID,'')RFQID,coalesce(d.RFQNO,'')RFQNO,coalesce(a.REMARKS,'')REMARKS,"
			+ "coalesce(e.PARTYID,'')PartyID,coalesce(e.PARTYNAME,'')PARTYNAME   \r\n"
			+ "From SALEHEADER a \r\n"
			+ "LEFT OUTER JOIN CUSTOMERMASTER b \r\n"
			+ "ON a.CUSTOMERID = b.CUSTOMERID\r\n"
			+ "LEFT OUTER JOIN TOWERMASTER c\r\n"
			+ "ON a.TOWERID = c.TOWERID "
			+ "LEFT OUTER JOIN RFQHEADER d "
			+ "on a.RFQID = d.RFQID "
			+ "LEFT OUTER JOIN PARTYMASTER e on e.PARTYID = a.CONTID\r\n"
			+ " WHERE a.SALEID=coalesce(#{salesid},SALEID)")
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
	
	@Select("SELECT a.SALEID,DATE_FORMAT(a.SALEDATE, '%d/%m/%y')SALEDATE,a.ITEMID,a.UOMID,\r\n"
			+ "b.ITEMNAME,c.UOM_SHRT_NAME,a.QUANTITY,a.RATE,ROUND(a.AMOUNT,2)AMOUNT,a.GSTPCT\r\n"
			+ "from SALEDETAILS a,ITEMMASTER b,UOMMASTER c\r\n"
			+ " where a.ITEMID = b.ITEMID and a.UOMID = c.UOM_ID and coalesce(DELFLAG,0) = 0 and SALEID=#{salesOrderId}")
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
	
	
	@Update("UPDATE SALEHEADER SET TOWERID=#{salesOrderDto.towerNo},FLATNO=#{salesOrderDto.flatNo},SALEDATE=STR_TO_DATE(#{salesOrderDto.salesDate}, '%d-%b-%y'),"
			+ "REMARKS=#{salesOrderDto.remarks},CUSTOMERID=#{salesOrderDto.customerId},RFQID=#{salesOrderDto.rfQId},CONTID=#{salesOrderDto.contId} "
			+ "WHERE SALEID=#{salesOrderDto.saleId}")
	public int iUpdateSalesMasterHead(@Param("salesOrderDto") SalesOrderDto salesOrderDto);
	
	@Select("SELECT CATEGORYID,CATEGORYNAME,CATEGORYCODE FROM CATEGORYMASTER")
	@Results({
		@Result(property = "categoryId",column = "CategoryID"),
		@Result(property = "categoryDesc",column = "CategoryName"),
		@Result(property = "categoryCode",column = "CategoryCode"),
	})
	public List<CategoryMasterDto> getAllCategoryMaster();
	
	@Select("SELECT POID,PONO,DATE_FORMAT(PODATE, '%d-%b-%y')PODATE From POMASTER WHERE SUPPLIERID = #{partyId}")
	@Results({
		@Result(property = "ipoId",column = "POID"),
		@Result(property = "poNo",column = "PONO"),
		@Result(property = "poDate",column = "PODate")
	})
	public List<PODto> fillPOInMKPymntPG(@Param("partyId") String partyId);
	
	@Select("SELECT POID,PONO,DATE_FORMAT(PODATE, '%d-%b-%y')PODATE "
			+ "From POMASTER WHERE SUPPLIERID = #{prjSrch.searchVarData} "
			+ "AND date_format(PODATE,'%Y-%m-%d') between #{prjSrch.fromDate} AND #{prjSrch.toDate}")
	@Results({
		@Result(property = "ipoId",column = "POID"),
		@Result(property = "poNo",column = "PONO"),
		@Result(property = "poDate",column = "PODate")
	})
	public List<PODto> fillPOInPymntRpt(@Param("prjSrch") PrjSearch prjSrch);	
	
	@Insert("INSERT INTO PYMNTMASTER(PARTYID,POID,PYMNTDATE,PYMNTAMOUNT,CREATEDBY,CREATEDDATE,PYMNTREMARKS)\r\n"
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
	@Select("SELECT Z.*, coalesce(B.PYMNTAMOUNT,'') PYMNTAMOUNT,coalesce(B.PYMNTDATE,'') PYMNTDATE from (\r\n"
			+ "SELECT DISTINCT COALESCE(B.SUPPLIERID,'')PARTYID, COALESCE(B.POID,'')POID,B.PONO,SUM(C.AMOUNT)POAMOUNT \r\n"
			+ "FROM POMASTER B INNER JOIN PODETAILS C ON B.POID = C.POID \r\n"
			+ "WHERE B.SUPPLIERID = #{partyId} \r\n"
			+ "GROUP BY PARTYID,B.POID,B.PONO) Z\r\n"
			+ "LEFT OUTER JOIN (SELECT POID,SUM(PYMNTAMOUNT) PYMNTAMOUNT,DATE_FORMAT(max(PYMNTDATE), '%d-%b-%y')PYMNTDATE\r\n"
			+ "FROM PYMNTMASTER \r\n"
			+ "Group by POID) B ON Z.POID = B.POID")
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
	
	@Select("SELECT SALEID,SALENUMBER,DATE_FORMAT(SALEDATE, '%d-%b-%y')SODATE FROM SALEHEADER WHERE CUSTOMERID = #{customerId}")
	@Results({
		@Result(property = "soID",column = "saleId"),
		@Result(property = "soNo",column = "Salenumber"),
		@Result(property = "soDate",column = "SODate")
	})
	public List<ReceivedPymntDto> fillSOInRecvdPymntPG(@Param("customerId") String customerId);	
	
	@Insert("INSERT INTO RECVDMASTER (CUSTOMERID,SOID,PYMNTDATE,PYMNTAMOUNT,CREATEDBY,CREATEDDATE,PYMNTREMARKS)\r\n"
			+ "VALUES (#{receivedPymntDto.customerId},#{receivedPymntDto.soID},STR_TO_DATE(#{receivedPymntDto.pymntDate}, '%d-%b-%y')"
			+ ",#{receivedPymntDto.pymntAmount},#{receivedPymntDto.createdBy},NOW(),#{receivedPymntDto.pymntRemarks})")
	@Options(useGeneratedKeys = true, keyProperty = "pymntId", keyColumn = "PYMNTID")
	public int iInsertRecevdPaymentData(@Param("receivedPymntDto") ReceivedPymntDto receivedPymntDto);
	
	
	/*
	 * @Select("SELECT c.PymntId,c.CustomerID,a.saleNumber,DATE_FORMAT(c.PymntDate, '%d-%b-%y')PymntDate,c.pymntAmount,Sum(b.Amount)SaleAmount\r\n"
	 * +
	 * " FROM saleheader a,SaleDetails b,recvdMaster c where a.SaleID = b.SaleID\r\n"
	 * + "and a.CustomerID = c.CustomerID and a.SaleID = c.SoId\r\n" +
	 * "and a.CustomerID = #{customerId} \r\n" +
	 * "Group by c.PymntId,c.CustomerID,a.saleNumber,c.PymntDate,c.pymntAmount")
	 */
	@Select("SELECT Z.*, COALESCE(B.PYMNTAMOUNT,'') PYMNTAMOUNT,COALESCE(B.PYMNTDATE,'') PYMNTDATE FROM ( \r\n"
			+ "SELECT DISTINCT COALESCE(B.CUSTOMERID,'')CUSTOMERID, COALESCE(B.SALEID,'')SALEID,B.SALENUMBER,SUM(C.AMOUNT)SALEAMOUNT \r\n"
			+ "FROM SALEHEADER B INNER JOIN SALEDETAILS C ON B.SALEID = C.SALEID WHERE B.CUSTOMERID = #{customerId} \r\n"
			+ "GROUP BY B.CUSTOMERID,B.SALEID,B.SALENUMBER) Z LEFT OUTER JOIN \r\n"
			+ "(SELECT SOID,SUM(PYMNTAMOUNT) PYMNTAMOUNT,DATE_FORMAT(max(PYMNTDATE), '%d-%b-%y')PYMNTDATE \r\n"
			+ "from RECVDMASTER Group by SOID) B ON Z.SALEID = B.SOID")
	@Results({
		@Result(property = "customerId",column = "CustomerID"),
		@Result(property = "soNo",column = "saleNumber"),
		@Result(property = "soID",column = "SaleID"),
		@Result(property = "pymntDate",column = "PymntDate"),
		@Result(property = "pymntAmount",column = "pymntAmount"),
		@Result(property = "soAmount",column = "SaleAmount")
	})
	public List<ReceivedPymntDto> getAllPymntRecvdData(@Param("customerId") String customerId);
	
	@Insert("INSERT INTO MRNHEAD (MRN_DATE,PARTY_ID,PO_ID,CREATEDBY,CREATEDDATE,BILLNO)\r\n"
			+ "VALUES (STR_TO_DATE(#{mrnDto.mrnDate}, '%d-%b-%y'),#{mrnDto.partyId},#{mrnDto.poID},#{mrnDto.createdby},NOW(),#{mrnDto.partyBillNumber})")
	@Options(useGeneratedKeys = true, keyProperty = "mrnId", keyColumn = "Mrn_Id")
	public int iInsertMrnHeadDataObj(@Param("mrnDto") MrnDto mrnDto);
	
	@Insert("INSERT INTO MRNDTL(MRN_ID,MRNDTL_ID,ITEMID,UOMID,POQTY,PORATE,TILLDATERECVDQTY,MRNQTY,DISCTPCT,ITEMMRNAMOUNT,DEL_FLAG,GSTPCT,BALANCEQTY)\r\n"
			+ "VALUES (#{mrnDto.mrnId},#{mrnDto.mrnDtlId},#{mrnDto.itemId},#{mrnDto.uomId},#{mrnDto.poQty}"
			+ ",#{mrnDto.poRate},#{mrnDto.receivedQtyTillDate},#{mrnDto.mrnQty},#{mrnDto.discountPct},#{mrnDto.mrnItemAmount},0,#{mrnDto.gstPct},#{mrnDto.balanceQty})"
			+ " ON DUPLICATE KEY "
			+ " Update POQTY=#{mrnDto.poQty},PORATE=#{mrnDto.poRate},TILLDATERECVDQTY=#{mrnDto.receivedQtyTillDate}"
			+ ",MRNQTY=#{mrnDto.mrnQty},DISCTPCT=#{mrnDto.discountPct},ITEMMRNAMOUNT = #{mrnDto.mrnItemAmount},DEL_FLAG=0,GSTPCT=#{mrnDto.gstPct},BALANCEQTY=#{mrnDto.balanceQty}")
	public int iInsertMrnDtlDataObj(@Param("mrnDto") MrnDto mrnDto);
	
	@Update("UPDATE MRNHEAD SET MRN_NO=#{mrnNumber} WHERE MRN_ID=#{mrnId}")
	public int updateMrnNoDataObj(@Param("mrnId") int mrnId,@Param("mrnNumber") String mrnNumber);
	
	@Update("UPDATE MRNHEAD SET BILLNO=#{partyBillNo} WHERE MRN_ID=#{mrnId}")
	public int updateBillNoInMrnDataObj(@Param("mrnId") int mrnId,@Param("partyBillNo") String partyBillNo);
	
	
	@Update("UPDATE MRNDTL SET DEL_FLAG=1 WHERE MRN_ID=#{mrnId}")
	public int updateDelFlagInMrnDtl(@Param("mrnId") int mrnId);
	
	@Select("SELECT A.POID,C.ITEMID,C.ITEMNAME,B.UOMID,D.UOM_SHRT_NAME,B.QTY,B.RATE,B.AMOUNT,coalesce(MRN.MRNQTY,0)MrnQty,coalesce(B.GSTPCT,0)GSTPCT \r\n"
			+ "FROM POMASTER A \r\n"
			+ "INNER JOIN PODETAILS B ON A.POID = B.POID\r\n"
			+ "INNER JOIN ITEMMASTER C ON B.ITEMID = C.ITEMID \r\n"
			+ "INNER JOIN UOMMASTER D ON D.UOM_ID = B.UOMID\r\n"
			+ "LEFT OUTER JOIN (SELECT F.ITEMID,F.UOMID,Sum(F.MRNQTY)MRNQTY\r\n"
			+ "FROM MRNHEAD E,MRNDTL F WHERE E.MRN_ID = F.MRN_ID AND E.PO_ID = #{poId}\r\n"
			+ "GROUP BY F.ITEMID,F.UOMID)MRN ON MRN.ITEMID = B.ITEMID\r\n"
			+ "AND MRN.UOMID = B.UOMID\r\n"
			+ "WHERE A.POID = #{poId}")
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
	
	@Select("SELECT A.MRN_ID,A.MRN_NO,DATE_FORMAT(A.MRN_DATE, '%d-%b-%y')MRN_DATE,C.PARTYNAME"
			+ ",B.PONO,A.PARTY_ID,A.PO_ID,coalesce(A.BILLNO,0)BILLNO\r\n"
			+ "FROM MRNHEAD A INNER JOIN POMASTER B ON A.PO_ID = B.POID\r\n"
			+ "INNER JOIN PARTYMASTER C ON A.PARTY_ID = C.PARTYID WHERE A.MRN_ID=coalesce(#{mrnId},A.MRN_ID)")
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
	
	@Select("SELECT MRN_ID,A.ITEMID,A.UOMID,POQTY,PORATE,TILLDATERECVDQTY,MRNQTY,DISCTPCT,ITEMMRNAMOUNT,"
			+ "B.ITEMNAME,C.UOM_SHRT_NAME,coalesce(A.GSTPCT,0)GSTPCT,coalesce(A.BALANCEQTY,0)BALANCEQTY \r\n"
			+ "FROM MRNDTL A,ITEMMASTER B,UOMMASTER C WHERE A.ITEMID = B.ITEMID AND A.UOMID = B.UOMID\r\n"
			+ "AND A.UOMID = C.UOM_ID AND A.MRN_ID = #{mrnId}")
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
	
	
	@Insert("INSERT INTO RFQHEADER(RFQNO,RFQDATE,TOWERID,FLATNO,REMARKS,CUSTOMERID)\r\n"
			+ "Values (#{rfqDto.rfqNumber},STR_TO_DATE(#{rfqDto.rfqDate}, '%d-%b-%y')"
			+ ",#{rfqDto.towerNo},#{rfqDto.flatNo},#{rfqDto.remarks},#{rfqDto.customerId})")
	@Options(useGeneratedKeys = true, keyProperty = "rfqId", keyColumn = "RFQID")
	public int iInsertRFQHeader(@Param("rfqDto") RFQDto rfqDto);
	
	
	@Insert("INSERT INTO RFQDETAILS(RFQID,RFQDATE,ITEMID,QUANTITY,RATE,AMOUNT,UOMID,DELFLAG,GSTPCT)\r\n"
			+ "Values (#{rfqDto.rfqId},STR_TO_DATE(#{rfqDto.rfqDtlDate}, '%d/%m/%y')"
			+ ",#{rfqDto.itemId},#{rfqDto.rfqQty},#{rfqDto.rfqRate}"
			+ ",#{rfqDto.rfqAmount},#{rfqDto.uomId},0,#{rfqDto.gstPct}) "
			+ "ON DUPLICATE KEY "
			+ "Update QUANTITY=#{rfqDto.rfqQty},RATE=#{rfqDto.rfqRate},AMOUNT=#{rfqDto.rfqAmount},DelFlag=0,GSTPCT=#{rfqDto.gstPct}")
	public int iInsertRFQDetailsDataObj(@Param("rfqDto") RFQDto rfqDto);
	
	@Update("UPDATE RFQHEADER SET RFQNO = #{rfQNo} Where RFQID = #{rfqId}")
	public int iUpdateRFQNumber(@Param("rfQNo") String rfQNo,@Param("rfqId") int rfqId);
	
	@Update("UPDATE RFQHEADER SET TOWERID=#{rfqDto.towerNo},FLATNO=#{rfqDto.flatNo},"
			+ "REMARKS=#{rfqDto.remarks},CUSTOMERID=#{rfqDto.customerId} WHERE RFQID=#{rfqDto.rfqId}")
	public int iUpdateRFQCustomerData(@Param("rfqDto") RFQDto rfqDto);	
	
	@Update("UPDATE RFQDETAILS SET DELFLAG = 1 Where RFQID = #{rfqDto.rfqId}")
	public int iUpdateDelFlagInRFQDtl(@Param("rfqDto") RFQDto rfqDto);
	
	@Select("SELECT RFQID,RFQNO,DATE_FORMAT(A.RFQDATE, '%d-%b-%y')RFQDATE,\r\n"
			+ "coalesce(B.CUSTOMERNAME,'')CUSTOMERNAME,coalesce(B.MOBILENO,'')MOBILENO,\r\n"
			+ "if(A.FLATNO=0,'',A.FLATNO)FLATNO,if(A.TOWERID=0,'',A.TOWERID)TOWERID,C.TOWERNUMBER,C.TOWERDESC,A.CUSTOMERID,"
			+ "coalesce(A.REMARKS,'')REMARKS\r\n"
			+ "FROM RFQHEADER A LEFT OUTER JOIN CUSTOMERMASTER B \r\n"
			+ "ON A.CUSTOMERID = B.CUSTOMERID \r\n"
			+ "LEFT OUTER JOIN TOWERMASTER C\r\n"
			+ "ON A.TOWERID = C.TOWERID\r\n"
			+ "WHERE RFQID = coalesce(#{rfQId},RFQID)")
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
		@Result(property = "customerId",column = "CustomerId"),
		@Result(property = "remarks",column = "REMARKS")
	})
	public List<RFQDto> getAllQuotationHomePGData(@Param("rfQId") String rfQId);
	
	
	@Select("SELECT A.RFQID,DATE_FORMAT(A.RFQDATE, '%d/%m/%y')RFQDTLITEMDATE,A.ITEMID,A.UOMID,\r\n"
			+ "B.ITEMNAME,C.UOM_SHRT_NAME,A.QUANTITY,A.RATE,A.AMOUNT,A.GSTPCT \r\n"
			+ "FROM RFQDETAILS A,ITEMMASTER B,UOMMASTER C\r\n"
			+ "WHERE A.ITEMID = B.ITEMID AND A.UOMID = C.UOM_ID AND COALESCE(DELFLAG,0) = 0 \r\n"
			+ "AND RFQID=#{rfQId}")
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
	
	@Select("Select coalesce(b.RFQNO,'')RFQNO,coalesce(b.RFQID,'')RFQID\r\n"
			+ "from RFQHEADER b\r\n"
			+ "Where b.TOWERID=#{towerNo} and b.FLATNO=#{flatNo} and b.customerId=#{customerId}")
	@Results({
		@Result(property = "rfQNumber",column = "RFQNO"),
		@Result(property = "rfQId",column = "RfqID")
	})
	public List<SalesOrderDto> findRFQInSalesOrder(@Param("towerNo") int towerNo,@Param("flatNo") int flatNo
			,@Param("customerId") int customerId);
	
	
	@Select("SELECT A.POID,A.PONO,B.PARTYNAME,DATE_FORMAT(A.PODATE, '%d-%b-%y')PODATE,B.ADDRESS,B.PHONENO,A.REMARKS \r\n"
			+ "FROM POMASTER A INNER JOIN PARTYMASTER B ON A.SUPPLIERID = B.PARTYID AND A.POID=#{PoId}")
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
	
	@Select("SELECT X.CATEGORYNAME,X.DESCRIPTION,X.UOM_DESCRIPTION,X.QTY,X.RATE,X.AMOUNT,X.GSTPCT,X.TAXAMOUNT,\r\n"
			+ "ROUND((X.AMOUNT - X.TAXAMOUNT),2)WITHOUTTAXAMOUNT \r\n"
			+ "FROM (SELECT D.CATEGORYNAME,B.DESCRIPTION,C.UOM_DESCRIPTION,\r\n"
			+ "ROUND(A.QTY,2)QTY,ROUND(A.RATE,2)RATE,ROUND(A.AMOUNT,2)AMOUNT,COALESCE(A.GSTPCT,0)GSTPCT,ROUND(((QTY * RATE) * COALESCE(A.GSTPCT,0) / 100),2)TAXAMOUNT \r\n"
			+ "FROM PODETAILS A \r\n"
			+ "INNER JOIN ITEMMASTER B ON A.ITEMID = B.ITEMID\r\n"
			+ "INNER JOIN UOMMASTER C ON C.UOM_ID = A.UOMID\r\n"
			+ "INNER JOIN CATEGORYMASTER D ON D.CATEGORYID = B.CATEGORYID \r\n"
			+ "WHERE A.POID = #{poId} AND COALESCE(A.DELFLAG,0) = 0)X")
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
	
	@Select("SELECT A.RFQID,A.RFQNO,COALESCE(B.CUSTOMERNAME,'')CUSTOMERNAME,DATE_FORMAT(A.RFQDATE, '%d-%b-%y')RFQDATE\r\n"
			+ ",COALESCE(C.TOWERNUMBER,'')TOWERNO,COALESCE(B.FLATNO,'')FLATNO,COALESCE(B.MOBILENO,'')MOBILENO,A.REMARKS \r\n"
			+ "FROM RFQHEADER A LEFT OUTER JOIN CUSTOMERMASTER B ON A.CUSTOMERID = B.CUSTOMERID "
			+ "LEFT OUTER JOIN TOWERMASTER C ON B.TOWERNO = C.TOWERID WHERE A.RFQID=#{rfqId}")
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
	
	@Select("SELECT X.CATEGORYNAME,X.DESCRIPTION,X.UOM_DESCRIPTION,X.QUANTITY,X.RATE,X.AMOUNT,\r\n"
			+ "X.GSTPCT,X.TAXAMOUNT, ROUND((X.AMOUNT - X.TAXAMOUNT),2)WITHOUTTAXAMOUNT \r\n"
			+ "FROM (SELECT D.CATEGORYNAME,B.DESCRIPTION,C.UOM_DESCRIPTION, A.QUANTITY,ROUND(A.RATE,2)RATE,ROUND(A.AMOUNT,2)AMOUNT,\r\n"
			+ "COALESCE(A.GSTPCT,0)GSTPCT,ROUND(((QUANTITY * RATE) * COALESCE(A.GSTPCT,0) / 100),2)TAXAMOUNT \r\n"
			+ "FROM RFQDETAILS A INNER JOIN ITEMMASTER B ON A.ITEMID = B.ITEMID INNER JOIN UOMMASTER C ON C.UOM_ID = A.UOMID \r\n"
			+ "INNER JOIN CATEGORYMASTER D ON D.CATEGORYID = B.CATEGORYID WHERE A.RFQID = #{rfqId} and coalesce(A.DELFLAG,0) = 0)X")
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
	
	@Select("SELECT A.SALEID,A.SALENUMBER,DATE_FORMAT(A.SALEDATE,'%d-%M-%y')SALEDATE\r\n"
			+ ",COALESCE(D.TOWERNUMBER,'')TOWERNUMBER,COALESCE(D.TOWERDESC,'')TOWERDESC\r\n"
			+ ",COALESCE(A.FLATNO,'')FLATNO,COALESCE(B.RFQNO,'')RFQNO,COALESCE(B.RFQDATE,'')RFQDATE,"
			+ "COALESCE(C.CUSTOMERNAME,'')CUSTOMERNAME,COALESCE(C.MOBILENO,'')MOBILENO\r\n"
			+ "FROM SALEHEADER A \r\n"
			+ "LEFT OUTER JOIN RFQHEADER B ON A.RFQID = B.RFQID \r\n"
			+ "LEFT OUTER JOIN CUSTOMERMASTER C ON A.CUSTOMERID = C.CUSTOMERID\r\n"
			+ "LEFT OUTER JOIN TOWERMASTER D ON D.TOWERID = A.TOWERID WHERE SALEID=#{salesId}")
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
	
	
	@Select("SELECT X.CATEGORYNAME,X.SALEID,X.ITEMNAME,X.UOM_SHRT_NAME\r\n"
			+ ",X.QUANTITY,X.RATE,X.AMOUNT,X.GSTPCT,X.TAXAMOUNT,ROUND((X.AMOUNT - X.TAXAMOUNT),2)WITHOUTTAXAMOUNT FROM (\r\n"
			+ "SELECT D.CATEGORYNAME,A.SALEID, B.ITEMNAME,C.UOM_SHRT_NAME\r\n"
			+ ",ROUND(A.QUANTITY,2)QUANTITY,ROUND(A.RATE,2)RATE,ROUND(A.AMOUNT,2)AMOUNT,ROUND(A.GSTPCT,2)GSTPCT,\r\n"
			+ "ROUND(((QUANTITY * RATE) * COALESCE(A.GSTPCT,0) / 100),2)TAXAMOUNT \r\n"
			+ "FROM SALEDETAILS A,ITEMMASTER B,UOMMASTER C,CATEGORYMASTER D\r\n"
			+ "WHERE A.ITEMID = B.ITEMID AND A.UOMID = C.UOM_ID \r\n"
			+ "AND B.CATEGORYID = D.CATEGORYID\r\n"
			+ "AND COALESCE(A.DELFLAG,0) = 0 AND SaleID=#{salesId})X")
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
	
	@Select("SELECT DESCRIPTION,ITEMID FROM ITEMMASTER WHERE CATEGORYID = #{categoryid}")
	@Results({
		@Result(property = "itemDescription",column = "Description"),
		@Result(property = "itemId",column = "ItemID")
	})
	public List<ItemMasterDto> getItemDetailStockReport(@Param("categoryid") int categoryid);
	
	
	@Select("SELECT A.CATEGORYNAME,A.CATEGORYID,A.ITEMID,A.ITEMNAME,A.UOM, A.OPENING_QTY,A.MRNQTY, A.SALEQUANTITY , (A.OPENING_QTY + A.MRNQTY) - A.SALEQUANTITY CLOSINGQUANTITY \r\n"
			+ "FROM\r\n"
			+ "(SELECT CM.CATEGORYNAME,CM.CATEGORYID,IM.ITEMID,IM.ITEMNAME,UOM.UOM_SHRT_NAME UOM, SM.OPENING_QTY , COALESCE(SUM(MRN.MRNQTY),0) MRNQTY , \r\n"
			+ "COALESCE(SUM(SD.QUANTITY),0) SALEQUANTITY\r\n"
			+ "FROM STOCKMASTER SM\r\n"
			+ "INNER JOIN ITEMMASTER IM ON SM.ITEMID=IM.ITEMID "
			+ "INNER JOIN CATEGORYMASTER CM ON CM.CATEGORYID = IM.CATEGORYID\r\n"
			+ "INNER JOIN UOMMASTER UOM ON IM.UOMID = UOM.UOM_ID\r\n"
			+ "LEFT OUTER JOIN MRNDTL MRN ON SM.ITEMID = MRN.ITEMID\r\n"
			+ "LEFT OUTER JOIN SALEDETAILS SD ON SM.ITEMID = SD.ITEMID\r\n"
			+ "WHERE IM.CATEGORYID = COALESCE(#{prjSrch.categId},IM.CATEGORYID) AND \r\n"
			+ "IM.ITEMID = coalesce(#{prjSrch.itemId},IM.ITEMID)\r\n"
			+ "GROUP BY IM.ITEMID,IM.ITEMNAME, UOM.UOM_SHRT_NAME, SM.OPENING_QTY,CM.CATEGORYNAME,CM.CATEGORYID\r\n"
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
		
		@Select("SELECT LPAD(COALESCE(COUNT(*),0)+1, 2, '0')CATEGCODE FROM CATEGORYMASTER")
		@Result(column = "CATEGCODE",property = "categoryCode")
		public CategoryMasterDto getMaxCategoryCode();
		
		
		@Insert("INSERT INTO CATEGORYMASTER(CATEGORYNAME,DELFLAG,CREATEDDATE,CATEGORYCODE)\r\n"
				+ "Values (#{categoryDto.categoryDesc},0,NOW(),#{categoryDto.categoryCode})")
		@Options(useGeneratedKeys = true, keyProperty = "categoryId", keyColumn = "CategoryID")
		public int iInsertCategoryMaster(@Param("categoryDto") CategoryMasterDto categoryDto);
	
		@Insert("INSERT INTO SUBCATEGORYMASTER(SUBCATEGCODE,SUBCATEGNAME,CREATEDBY,CREATEDDATE,CATEGORYID)\r\n"
				+ "Values (#{subCategoryDto.subCategoryCode},#{subCategoryDto.subCategoryDesc},"
				+ "#{subCategoryDto.createdBy},NOW(),#{subCategoryDto.categoryId})")
		@Options(useGeneratedKeys = true, keyProperty = "subCategoryId", keyColumn = "subCategId")
		public int iInsertSubCategoryMaster(@Param("subCategoryDto") CategoryMasterDto subCategoryDto);
		
		@Select("SELECT LPAD(COALESCE(COUNT(*),0)+1, 2, '0')SUBCATCODE FROM SUBCATEGORYMASTER")
		@Result(column = "SubCatCode",property = "subCategoryCode")
		public CategoryMasterDto getMaxSubCategoryCode();		
		
		@Select("SELECT CM.CATEGORYID,CM.CATEGORYCODE,CM.CATEGORYNAME,\r\n"
				+ "SCM.SUBCATEGID,SCM.SUBCATEGCODE,SCM.SUBCATEGNAME\r\n"
				+ " FROM CATEGORYMASTER CM INNER JOIN SUBCATEGORYMASTER SCM\r\n"
				+ "ON CM.CATEGORYID = SCM.CATEGORYID")
		@Results({
			@Result(property = "categoryId",column = "CategoryID"),
			@Result(property = "categoryCode",column = "CategoryCode"),
			@Result(property = "categoryDesc",column = "CategoryName"),
			@Result(property = "subCategoryId",column = "subCategId"),
			@Result(property = "subCategoryCode",column = "subCategCode"),
			@Result(property = "subCategoryDesc",column = "subCategName")
		})
		public List<CategoryMasterDto> getAllItemSubCatDetails();
		
		@Insert("INSERT INTO SUBCATEGORYMASTER(CATEGORYID,SUBCATEGCODE,SUBCATEGNAME,CREATEDBY,CREATEDDATE)\r\n"
				+ "Values (#{categId},'01','GENERAL',1,NOW())")
		public int iInsertDefaultSubCategory(@Param("categId") int categId);
		
		@Select("SELECT SUBCATEGID,SUBCATEGCODE,SUBCATEGNAME FROM SUBCATEGORYMASTER WHERE CATEGORYID=#{categId}")
		@Results({
			@Result(property = "subCategoryId",column = "subCategId"),
			@Result(property = "subCategoryCode",column = "subCategCode"),
			@Result(property = "subCategoryDesc",column = "subCategName")
		})		
		public List<CategoryMasterDto> getSubCategoryItem(@Param("categId") int categId);
		
		@Select("SELECT SUBCATEGID,SUBCATEGCODE,SUBCATEGNAME FROM SUBCATEGORYMASTER WHERE CATEGORYID=#{categId} and SUBCATEGNAME=#{subCategNM}")
		@Results({
			@Result(property = "subCategoryId",column = "subCategId"),
			@Result(property = "subCategoryCode",column = "subCategCode"),
			@Result(property = "subCategoryDesc",column = "subCategName")
		})		
		public CategoryMasterDto validateSubCategory(@Param("categId") int categId,@Param("subCategNM") String subCategNM);	
		
		
		@Select("SELECT PM.PYMNTID,DATE_FORMAT(PM.PYMNTDATE, '%d-%b-%y')PYMNTDATE\r\n"
				+ ",COALESCE(PM.PYMNTREMARKS,'PAYMENT PAID')PYMNTREMARKS,ROUND(PM.PYMNTAMOUNT,2)PYMNTAMOUNT,PO.PONO  \r\n"
				+ "FROM PYMNTMASTER PM INNER JOIN POMASTER PO ON PM.POID = PO.POID WHERE PM.POID = #{poId} ORDER BY PM.PYMNTDATE Asc")
		@Results({
			@Result(property = "pymntId",column = "PymntId"),
			@Result(property = "pymntDate",column = "PymntDate"),
			@Result(property = "remarks",column = "pymntRemarks"),
			@Result(property = "pymntAmount",column = "pymntAmount"),
			@Result(property = "poNo",column = "PONO")
		})
		public List<MakePymntDto> getPymntAgPO(@Param("poId") String poId);
		
		@Select("SELECT RM.PYMNTID,DATE_FORMAT(RM.PYMNTDATE, '%d-%b-%y')PYMNTDATE ,coalesce(RM.PYMNTREMARKS,'Payment Received')PYMNTREMARKS,\r\n"
				+ "ROUND(RM.PYMNTAMOUNT,2)PYMNTAMOUNT,SO.SALENUMBER \r\n"
				+ "FROM RECVDMASTER RM INNER JOIN SALEHEADER SO ON RM.SOID = SO.SALEID \r\n"
				+ "WHERE RM.SOID = #{soId} ORDER BY RM.PYMNTDATE ASC")
		@Results({
			@Result(property = "pymntId",column = "PymntId"),
			@Result(property = "pymntDate",column = "PymntDate"),
			@Result(property = "pymntRemarks",column = "pymntRemarks"),
			@Result(property = "pymntAmount",column = "pymntAmount"),
			@Result(property = "soNo",column = "saleNumber")
		})		
		public List<ReceivedPymntDto> getPymntRecvdAgSO(@Param("soId") String soId);
		
		
		
		@Select("SELECT SH.TOWERID,TOW.TOWERNUMBER, SH.FLATNO,SH.SALENUMBER,DATE_FORMAT(SH.SALEDATE, '%d-%b-%y')SALEDATE,IM.ITEMNAME,UOM.UOM_DESCRIPTION,CAST(SD.QUANTITY AS DECIMAL(12,2))QUANTITY,\r\n"
				+ "CAST(SD.RATE AS DECIMAL(12,2))RATE,CAST(SD.GSTPCT AS DECIMAL(12,2))GSTPCT,\r\n"
				+ "CAST(SD.AMOUNT AS DECIMAL(12,2))AMOUNT,ROUND((SD.AMOUNT - ROUND(((QUANTITY * RATE) * COALESCE(SD.GSTPCT,0) / 100),2)),2)WITHOUTTAXAMOUNT,"
				+ "CAST(SD.AMOUNT AS DECIMAL(12,2))AMOUNT,ROUND(((SD.QUANTITY * SD.RATE) * COALESCE(SD.GSTPCT,0) / 100),2)TAXAMOUNT,"
				+ "CONCAT(cm.CUSTOMERNAME, '-' ,  cm.MOBILENO)CUSTOMERNAME \r\n"
				+ "FROM SALEHEADER SH INNER JOIN SALEDETAILS SD ON SH.SALEID = SD.SALEID\r\n"
				+ "INNER JOIN ITEMMASTER IM ON SD.ITEMID=IM.ITEMID\r\n"
				+ "INNER JOIN UOMMASTER UOM ON SD.UOMID=UOM.UOM_ID\r\n"
				+ "INNER JOIN TOWERMASTER TOW ON TOW.TOWERID = SH.TOWERID\r\n"
				+ "LEFT JOIN CUSTOMERMASTER cm on cm.CUSTOMERID = SH.CUSTOMERID WHERE SD.DELFLAG='0' \r\n"
				+ "AND SH.SALEDATE BETWEEN #{dateFr} AND #{dateTo}\r\n"
				+ "AND SH.FLATNO = (CASE WHEN #{flatNo} = '' THEN SH.FLATNO ELSE #{flatNo} END) AND SH.TOWERID = (CASE WHEN #{towerId} = '0' THEN SH.TOWERID ELSE #{towerId} END) "
				+ "AND SH.CUSTOMERID = (CASE WHEN #{customerId} = '' THEN SH.CUSTOMERID ELSE #{customerId} END) "
				+ "ORDER BY SH.SALEDATE,TOW.TOWERNUMBER,SH.FLATNO,cm.CUSTOMERID")
		@Results({
			@Result(property = "flatNo",column = "FLATNO"),
			@Result(property = "towerDescription",column = "TOWERNUMBER"),
			@Result(property = "salesOrderNumber",column = "SALENUMBER"),
			@Result(property = "salesDate",column = "SALEDATE"),
			@Result(property = "itemDesc",column = "ITEMNAME"),
			@Result(property = "uomDesc",column = "UOM_DESCRIPTION"),
			@Result(property = "soQty",column = "QUANTITY"),
			@Result(property = "soRate",column = "RATE"),
			@Result(property = "gstPct",column = "GSTPCT"),
			@Result(property = "uomDesc",column = "UOM_DESCRIPTION"),
			@Result(property = "soAmount",column = "AMOUNT"),
			@Result(property = "withOutTaxAmount",column = "WithOutTaxAmount"),
			@Result(property = "customerName",column = "CUSTOMERNAME"),
			@Result(property = "taxAmount",column = "TaxAmount")
		})
		public List<SalesOrderDto> getSalesOrderStkRpt(@Param("towerId") String towerId,
				@Param("flatNo") String flatNo,@Param("dateFr") String dateFr,@Param("dateTo") String dateTo,@Param("customerId") String customerId);		
		
		
		@Select("Select ROUND(X.TotalBillAmount,2)TotalBillAmount,coalesce(ROUND(X.PYMNTAMOUNT,2),0)PYMNTAMOUNT,\r\n"
				+ "(Case When X.PYMNTAMOUNT > X.TotalBillAmount Then\r\n"
				+ "ROUND((X.PYMNTAMOUNT-X.TotalBillAmount),2) else 0 end)AdvanceAmount  From (\r\n"
				+ "Select Sum(AMOUNT)TotalBillAmount,\r\n"
				+ "(Select Sum(PYMNTAMOUNT) from RECVDMASTER where SOID=#{soId})PYMNTAMOUNT\r\n"
				+ "from SALEHEADER sh inner join SALEDETAILS sd on sh.SALEID = sd.SALEID \r\n"
				+ "Where sh.SALEID = #{soId})X")
		@Results({
			@Result(property = "totalBillAmount",column = "TotalBillAmount"),
			@Result(property = "recvdBillAmount",column = "PYMNTAMOUNT"),
			@Result(property = "advanceBillAmount",column = "AdvanceAmount")
		})
		public SalesOrderDto getSaleOrderPymntDtls(@Param("soId") String soId);
		
		
		@Select("Select A.SALENUMBER,date_format(A.SALEDATE,'%d-%b-%y')SALEDATE,A.FLATNO,A.TOWERDESC"
				+ ",A.CUSTOMERNAME,ROUND(A.BillAMOUNT,2) as BillAMOUNT,A.ReceivedAmount,A.SALEID,A.PYMNTID"
				+ " From (\r\n"
				+ "select 1 as SEQ,0 as PYMNTID,SH.SALEID, SH.SALENUMBER,SH.SALEDATE,SH.FLATNO,\r\n"
				+ "TM.TOWERDESC,CM.CUSTOMERNAME,SUM(SD.AMOUNT) BillAMOUNT,'' as ReceivedAmount\r\n"
				+ "from SALEHEADER SH\r\n"
				+ "INNER JOIN SALEDETAILS SD ON SH.SALEID=SD.SALEID\r\n"
				+ "INNER JOIN TOWERMASTER TM ON SH.TOWERID=TM.TOWERID\r\n"
				+ "INNER JOIN CUSTOMERMASTER CM ON SH.CUSTOMERID=CM.CUSTOMERID\r\n"
				+ "Where 1=1 and SH.CUSTOMERID=coalesce(#{prjSrch.customerId},SH.CUSTOMERID)\r\n"
				+ "and SH.SALEID = coalesce(#{prjSrch.salesOrderId},SH.SALEID) and TM.TOWERID = coalesce(#{prjSrch.towerNo},TM.TOWERID) "
				+ "AND SH.FLATNO = COALESCE(#{prjSrch.flatNo},SH.FLATNO) and coalesce(SD.DELFLAG,0)=0 "
				+ "and date_format(SH.SALEDATE,'%Y-%m-%d') between #{prjSrch.fromDate} AND #{prjSrch.toDate}\r\n"
				+ "GROUP BY SD.SALEID\r\n"
				+ "UNION ALL\r\n"
				+ "SELECT 2 as SEQ,RM.PYMNTID,SH.SALEID, SH.SALENUMBER,RM.PYMNTDATE, SH.FLATNO,\r\n"
				+ "TM.TOWERDESC,CM.CUSTOMERNAME,  '' as BillAMOUNT,ROUND(RM.PYMNTAMOUNT,2) as ReceivedAmount\r\n"
				+ "FROM `RECVDMASTER` RM \r\n"
				+ "INNER JOIN SALEHEADER SH ON RM.SOID=SH.SALEID\r\n"
				+ "INNER JOIN TOWERMASTER TM ON SH.TOWERID=TM.TOWERID\r\n"
				+ "INNER JOIN CUSTOMERMASTER CM ON SH.CUSTOMERID=CM.CUSTOMERID\r\n"
				+ "where 1=1  and RM.CUSTOMERID=coalesce(#{prjSrch.customerId},SH.CUSTOMERID)\r\n"
				+ "and SH.SALEID = coalesce(#{prjSrch.salesOrderId},SH.SALEID) "
				+ "AND SH.FLATNO = COALESCE(#{prjSrch.flatNo},SH.FLATNO) and TM.TOWERID = coalesce(#{prjSrch.towerNo},TM.TOWERID) "
				+ "and date_format(SH.SALEDATE,'%Y-%m-%d') between #{prjSrch.fromDate} AND #{prjSrch.toDate}) A order by  A.CUSTOMERNAME,A.SALEID,A.SEQ,A.PYMNTID")
		@Results({
			@Result(property = "salesOrderNumber",column = "SALENUMBER"),
			@Result(property = "salesDate",column = "SALEDATE"),
			@Result(property = "flatNo",column = "FLATNO"),
			@Result(property = "towerNo",column = "TOWERDESC"),
			@Result(property = "customerName",column = "CUSTOMERNAME"),
			@Result(property = "totalBillAmount",column = "BillAMOUNT"),
			@Result(property = "recvdBillAmount",column = "ReceivedAmount"),
			@Result(property = "pymntId",column = "PYMNTID"),
			@Result(property = "saleId",column = "SALEID")
		})
		public List<SalesOrderDto> getSOPymntRecvdData(@Param("prjSrch") PrjSearch prjSrch);
		
		
		
		@Select("Select distinct cus.CUSTOMERID,cus.CUSTOMERNAME,cus.MOBILENO,\r\n"
				+ "tow.TOWERNUMBER,so.FLATNO,tow.TOWERID,tow.TOWERDESC\r\n"
				+ "from CUSTOMERMASTER cus INNER JOIN SALEHEADER so \r\n"
				+ "left outer join TOWERMASTER tow on tow.TOWERID = so.TOWERID\r\n"
				+ "where cus.CUSTOMERID = so.CUSTOMERID Order by cus.CUSTOMERNAME")
		@Results({
			@Result(property = "customerId",column = "CUSTOMERID"),
			@Result(property = "customerName",column = "CUSTOMERNAME"),
			@Result(property = "cutomerMobileNo",column = "MOBILENO"),
			@Result(property = "towerNo",column = "TOWERNUMBER"),
			@Result(property = "flatNo",column = "FLATNO"),
			@Result(property = "towerId",column = "TOWERID"),
			@Result(property = "towerDescription",column = "TOWERDESC")
		})
		public List<SalesOrderDto> getCustomerListFromSO();
		
		
		@Select("Select A.POID,A.PONO,A.PODATE,A.PARTYNAME,ROUND(A.BillAMOUNT,2) as BillAMOUNT,ROUND(A.PaidAmount,2) as PaidAmount from (\r\n"
				+ "select 1 as SEQ,0 as PYMNTID,po.POID,po.PONO,DATE_FORMAT(po.PODATE, '%d-%b-%y')PODATE,pm.PARTYNAME,ROUND(SUM(pd.AMOUNT),2) BillAMOUNT,'' as PaidAmount\r\n"
				+ " from POMASTER po inner join PODETAILS pd on po.POID = pd.POID\r\n"
				+ "Inner Join PARTYMASTER pm on pm.PARTYID = po.SUPPLIERID\r\n"
				+ "Where 1=1 and po.SUPPLIERID = coalesce(#{prjSrch.customerId},po.SUPPLIERID)\r\n"
				+ "and po.POID = coalesce(#{prjSrch.poId},po.POID) "
				+ "AND date_format(po.PODATE,'%Y-%m-%d') between #{prjSrch.fromDate} AND #{prjSrch.toDate}\r\n"
				+ "group by po.POID\r\n"
				+ "union all\r\n"
				+ "select 2 as SEQ,pm.PYMNTID,pm.POID,po.PONO,DATE_FORMAT(pm.PYMNTDATE, '%d-%b-%y')PYMNTDATE,party.PARTYNAME, '' as BillAMOUNT,round(pm.PYMNTAMOUNT,2) as PaidAmount\r\n"
				+ " from PYMNTMASTER pm inner join POMASTER po on pm.POID = po.POID\r\n"
				+ "inner join PARTYMASTER party on party.PARTYID = po.SUPPLIERID\r\n"
				+ "where 1=1 and po.SUPPLIERID = coalesce(#{prjSrch.customerId},po.SUPPLIERID)\r\n"
				+ "and po.POID = coalesce(#{prjSrch.poId},po.POID) "
				+ "AND date_format(po.PODATE,'%Y-%m-%d') between #{prjSrch.fromDate} AND #{prjSrch.toDate})A order by A.POID,A.SEQ,A.PYMNTID")
		@Results({
			@Result(property = "poNo",column = "PONO"),
			@Result(property = "ipoId",column = "POID"),
			@Result(property = "poDate",column = "PODATE"),
			@Result(property = "supplierName",column = "PARTYNAME"),
			@Result(property = "totalBillAmount",column = "BillAMOUNT"),
			@Result(property = "totalPaidAmount",column = "PaidAmount")
		})
		public List<PODto> getPymntDataByPO(@Param("prjSrch") PrjSearch prjSrch);
		
		
		@Select("Select ROUND(X.TotalBillAmount,2)TotalBillAmount,\r\n"
				+ "coalesce(ROUND(X.PYMNTAMOUNT,2),0)PYMNTAMOUNT,\r\n"
				+ "(Case When X.PYMNTAMOUNT > X.TotalBillAmount Then\r\n"
				+ "ROUND((X.PYMNTAMOUNT-X.TotalBillAmount),2) else 0 end)AdvanceAmount\r\n"
				+ " from (\r\n"
				+ "Select ROUND(Sum(AMOUNT),2)TotalBillAmount,(Select Sum(PYMNTAMOUNT) from PYMNTMASTER where POID=po.POID)PYMNTAMOUNT\r\n"
				+ " from POMASTER po inner join PODETAILS pd on po.poId = pd.PoId\r\n"
				+ "Where po.POID = #{poId})X")
		@Results({
			@Result(property = "totalBillAmount",column = "TotalBillAmount"),
			@Result(property = "totalPaidAmount",column = "PYMNTAMOUNT"),
			@Result(property = "advanceAmount",column = "AdvanceAmount")
		})
		public PODto getTotalPaymentDetailsByPONo(@Param("poId") String poId);
		
		
		@Select("Select A.CUSTOMERID,A.CUSTOMERNAME,A.MOBILENO,\r\n"
				+ "B.TOWERDESC,A.FLATNO FROM CUSTOMERMASTER A,TOWERMASTER B\r\n"
				+ " where \r\n"
				+ " A.TOWERNO = B.TOWERID and\r\n"
				+ " (upper(CUSTOMERNAME) like Upper('%' #{searchTextData} '%') or MOBILENO LIKE '%' #{searchTextData} '%')")
		@Results({
			@Result(property = "customerName",column = "CUSTOMERNAME"),
			@Result(property = "mobileNuber",column = "MOBILENO"),
			@Result(property = "towerNuber",column = "TOWERDESC"),
			@Result(property = "flatNumber",column = "FLATNO"),
			@Result(property = "customerId",column = "CUSTOMERID")
		})
		public List<CustomerDto> searchCustomerData(@Param("searchTextData") String searchTextData);
		
		@Select("SELECT A.FLATNO,\r\n"
				+ "       A.TOWERDESC,\r\n"
				+ "       CONCAT(A.CUSTOMERNAME, '<->', A.MOBILENO) AS CUSTOMERNAME,\r\n"
				+ "       A.CUSTOMERID,\r\n"
				+ "       ROUND(SUM(A.BILLAMOUNT), 2) AS BILLAMOUNT,\r\n"
				+ "       ROUND(SUM(A.RECEIVEDAMOUNT), 2) AS RECEIVEDAMOUNT,\r\n"
				+ "       ROUND(SUM(A.BILLAMOUNT) - SUM(A.RECEIVEDAMOUNT), 2) BALANCE\r\n"
				+ "FROM   (SELECT 1  AS SEQ,\r\n"
				+ "               0 AS PYMNTID,\r\n"
				+ "               SH.SALEID,\r\n"
				+ "               SH.SALENUMBER,\r\n"
				+ "               SH.SALEDATE,\r\n"
				+ "               SH.FLATNO,\r\n"
				+ "               TM.TOWERDESC,\r\n"
				+ "               CM.CUSTOMERNAME,\r\n"
				+ "               CM.MOBILENO,\r\n"
				+ "               CM.CUSTOMERID,\r\n"
				+ "               SUM(SD.AMOUNT) BILLAMOUNT,\r\n"
				+ "               '' AS RECEIVEDAMOUNT\r\n"
				+ "        FROM   SALEHEADER SH\r\n"
				+ "               INNER JOIN SALEDETAILS SD ON SH.SALEID = SD.SALEID\r\n"
				+ "               INNER JOIN TOWERMASTER TM ON SH.TOWERID = TM.TOWERID\r\n"
				+ "               INNER JOIN CUSTOMERMASTER CM ON SH.CUSTOMERID = CM.CUSTOMERID\r\n"
				+ "        WHERE  1 = 1\r\n"
				+ "               AND COALESCE(SD.DELFLAG, 0) = 0\r\n"
				+ "               AND CM.CUSTOMERID = COALESCE(#{prjSrchDat.customerId},CM.CUSTOMERID)\r\n"
				+ "               AND TM.TOWERID = COALESCE(#{prjSrchDat.towerName},TM.TOWERID)\r\n"
				+ "               AND SH.FLATNO = COALESCE(#{prjSrchDat.flatNo},SH.FLATNO) "
				+ "and date_format(SH.SALEDATE,'%Y-%m-%d') between #{prjSrchDat.fromDate} AND #{prjSrchDat.toDate}\r\n"
				+ "        GROUP  BY SD.SALEID\r\n"
				+ "        UNION ALL\r\n"
				+ "        SELECT 2 AS SEQ,\r\n"
				+ "               RM.PYMNTID,\r\n"
				+ "               SH.SALEID,\r\n"
				+ "               SH.SALENUMBER,\r\n"
				+ "               RM.PYMNTDATE,\r\n"
				+ "               SH.FLATNO,\r\n"
				+ "               TM.TOWERDESC,\r\n"
				+ "               CM.CUSTOMERNAME,\r\n"
				+ "               CM.MOBILENO,\r\n"
				+ "               CM.CUSTOMERID,\r\n"
				+ "               '' AS BILLAMOUNT,\r\n"
				+ "               ROUND(RM.PYMNTAMOUNT, 2) AS RECEIVEDAMOUNT\r\n"
				+ "        FROM   RECVDMASTER RM\r\n"
				+ "               INNER JOIN SALEHEADER SH ON RM.SOID = SH.SALEID\r\n"
				+ "               INNER JOIN TOWERMASTER TM ON SH.TOWERID = TM.TOWERID\r\n"
				+ "               INNER JOIN CUSTOMERMASTER CM ON SH.CUSTOMERID = CM.CUSTOMERID\r\n"
				+ "        WHERE  1 = 1 \r\n"
				+ "        AND COALESCE(CM.CUSTOMERID) = COALESCE(#{prjSrchDat.customerId},CM.CUSTOMERID)\r\n"
				+ "        AND TM.TOWERID = COALESCE(#{prjSrchDat.towerName},TM.TOWERID)\r\n"
				+ "        AND SH.FLATNO = COALESCE(#{prjSrchDat.flatNo},SH.FLATNO "
				+ "and date_format(SH.SALEDATE,'%Y-%m-%d') between #{prjSrchDat.fromDate} AND #{prjSrchDat.toDate})) A\r\n"
				+ "       INNER JOIN CUSTOMERMASTER CM ON A.CUSTOMERID = CM.CUSTOMERID\r\n"
				+ "GROUP  BY A.FLATNO,\r\n"
				+ "          A.TOWERDESC,\r\n"
				+ "          A.CUSTOMERNAME,\r\n"
				+ "          A.MOBILENO,\r\n"
				+ "          A.CUSTOMERID\r\n"
				+ "ORDER BY A.CUSTOMERNAME,A.TOWERDESC     \r\n"
				+ "           ")
				@Results({
					@Result(property = "flatNo",column = "FLATNO"),
					@Result(property = "towerDescription",column = "TOWERDESC"),
					@Result(property = "customerName",column = "CUSTOMERNAME"),
					@Result(property = "customerId",column = "CUSTOMERID"),
					@Result(property = "totalBillAmount",column = "BILLAMOUNT"),
					@Result(property = "recvdBillAmount",column = "RECEIVEDAMOUNT"),
					@Result(property = "advanceBillAmount",column = "BALANCE")
				})
				public List<SalesOrderDto> getCustomerSOAStmtData(@Param("prjSrchDat") PrjSearch prjSrchDat);
		
		@Select("Select distinct cm.CUSTOMERID,cm.CUSTOMERNAME,cm.MOBILENO,tm.TOWERDESC,cm.FLATNO\r\n"
				+ " from SALEHEADER sh inner join CUSTOMERMASTER cm on sh.CUSTOMERID = cm.CUSTOMERID\r\n"
				+ " inner join TOWERMASTER tm on tm.TOWERID = sh.TOWERID\r\n"
				+ " where exists (select 1 from SALEDETAILS sd where sh.SALEID = sd.SALEID and coalesce(sd.DELFLAG,0)=0 )\r\n"
				+ " and cm.CUSTOMERID = COALESCE(#{customerId},cm.CUSTOMERID)\r\n"
				+ " Order by cm.CUSTOMERNAME")
		@Results({
			@Result(property = "customerId",column = "CUSTOMERID"),
			@Result(property = "customerName",column = "CUSTOMERNAME"),
			@Result(property = "towerDesc",column = "TOWERDESC"),
			@Result(property = "flatNumber",column = "FLATNO"),
			@Result(property = "mobileNuber",column = "MOBILENO")
		})
		public List<CustomerDto> fillCustomerByFrmSO(@Param("customerId") String customerId);		
		
		@Update("Update RECVDMASTER set LAST_UPDATED_VALUE=PYMNTAMOUNT,PYMNTAMOUNT=#{receivedPymntDto.pymntAmount},"
				+ "UPDATED_DATE=now() where PYMNTID=#{receivedPymntDto.pymntId} and CUSTOMERID=#{receivedPymntDto.customerId} and SOID=#{receivedPymntDto.soID}")
		public int iUpdateReceivedPayment(@Param("receivedPymntDto") ReceivedPymntDto receivedPymntDto);
		
		
}



