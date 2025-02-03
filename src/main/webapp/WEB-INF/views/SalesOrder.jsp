<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sales Order</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/dataTables.bootstrap4.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
    <!-- Custom Scrollbar-->
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom stylesheet - for your changes-->
    <!-- Favicon-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="shortcut icon" href="img/favicon.ico">
</head>
<body>
      <!-- Side Navbar -->
    <nav class="side-navbar">
        <div class="side-navbar-wrapper">
            <!-- Sidebar Header    -->
            <div class="sidenav-header d-flex align-items-center justify-content-center">
                <!-- User Info-->
                <div class="sidenav-header-inner text-center">
                    <h2 class="h5"><a href="https://salepurchasecompany.co.in/dashBoard">ABC</a></h2>
                </div>
                <!-- Small Brand information, appears on minimized sidebar-->
                <div class="sidenav-header-logo"><a href="https://salepurchasecompany.co.in/dashBoard" class="brand-small text-center"> <strong>A</strong><strong>B</strong></a></div>
            </div>
            <!-- Sidebar Navigation Menus-->
            <div class="main-menu">
                <ul id="side-main-menu" class="side-menu list-unstyled">
                    <li class="active"><a href="#dashboard" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>Master</a>
                        <ul id="dashboard" class="collapse list-unstyled show">
                            <li><a href="https://salepurchasecompany.co.in/category">Category Master</a></li>
                            <li><a href="https://salepurchasecompany.co.in/dashBoard">Customer Master</a></li>
                            <li><a href="https://salepurchasecompany.co.in/uomMaster">UOM Master</a></li>
                            <li><a href="https://salepurchasecompany.co.in/ItemMaster">Item Master</a></li>
                            <li><a href="https://salepurchasecompany.co.in/partyMaster">Party Master</a></li>
                       </ul>
                    </li>
                    <li class="active"><a href="#purchase" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-bar-chart"></i>Transaction</a>
                        <ul id="purchase" class="collapse list-unstyled show">
                            <li><a href="https://salepurchasecompany.co.in/purchase">Purchase Order</a></li>
                            <li class="active"><a href="https://salepurchasecompany.co.in/salesOrder">Sales Order</a></li>
                            <li><a href="https://salepurchasecompany.co.in/makePayment">Make Payment</a></li>
                            <li><a href="https://salepurchasecompany.co.in/receicePymnt">Received Payment</a></li>
                            <li><a href="https://salepurchasecompany.co.in/mrn">Material Receipt</a></li>
                            <li><a href="https://salepurchasecompany.co.in/rfq">Quotation</a></li>
                        </ul>
                    </li> 
                   <li class="active"><a href="#reports" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-book"></i>Reports</a>
                  	<ul id="reports" class="collapse list-unstyled show">
                  	<li><a href="https://salepurchasecompany.co.in/pymntRcvdRpt">Customer Payment SOA</a></li>
                  	<li><a href="https://salepurchasecompany.co.in/SaleOrderStkRpt">Sales Order Report</a></li>
                  	<li><a href="https://salepurchasecompany.co.in/pymntPaidRpt">Supplier Payment SOA</a></li>
                  	<li><a href="https://salepurchasecompany.co.in/itmStkRpt">ItemWise Stock Report</a></li>
                  	</ul>
                  </li>                                       
                 	</ul>
            </div>
        </div>
    </nav>
    <div class="page">
        <!-- navbar-->
        <header class="header">
            <nav class="navbar">
                <div class="container-fluid">
                    <div class="navbar-holder d-flex align-items-center justify-content-between">
                        <div class="navbar-header"><a id="toggle-btn" href="#" class="menu-btn"><i class="icon-bars"> </i></a><a href="index.html" class="navbar-brand"></a></div>
                        <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center top-menu">
                            <!-- Notifications dropdown-->
                           
                            <li class="login-user"><a href="#">Welcome <span>ABC</span></a></li>
                            <!-- Log out-->
                            <li class="nav-item"><a href="https://salepurchasecompany.co.in/" class="nav-link logout"> <span class="d-none d-sm-inline-block">Logout</span><i class="fa fa-sign-out"></i></a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <!-- Breadcrumb-->
        <div class="breadcrumb-holder">
            <div class="container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item active">Sales Order</li>
                </ul>
            </div>
        </div>
        <section>
			<div class="container-fluid">
				<div class="card">
					<div class="card-body">
						<div class="container">
							<div class="form-group row">
								<label class="col-sm-4 col-md-1 col-form-label">S.O. No.</label>
								<div class="col-sm-6 col-md-3 pl0">
									<input type="text" id="txtSoNumber" class="form-control" placeholder="SO Number">
								</div>
								<label class="col-sm-4 col-md-1 col-form-label pl15">S.O.Date</label>
								<div class="col-sm-6 col-md-3 pl0 cal-position">
									<input type="text" id="txtSoDate" class="form-control input-group date" placeholder="Sales Order Date">
									<i class="fa fa-calendar"></i>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-4 col-md-1 col-form-label">Tower</label>
								<div class="col-sm-6 col-md-3 pl0">
									<select class="custom-select" id="lstTowerNo">
										<!-- <option selected>Choose...</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option> -->
									</select>
								</div>
								<label class="col-sm-4 col-md-1 col-form-label pl15">Flat</label>
								<div class="col-sm-6 col-md-3 pl0 cal-position">
									<input type="text" id="txtFlatNumber" class="form-control" onblur="findCustomerData()" onkeypress="return isNumber(event)" placeholder="Flat Number">									
								</div>
							</div>
							<div class="form-group row">
							<label class="col-sm-4 col-md-1 col-form-label">Customer</label>
							<div class="col-sm-6 col-md-3 pl0">
								<!-- <input type="text" id="txtCustomerNm" class="form-control" placeholder="Customer Name"> -->
								<select class="custom-select" id="lstCustomerNm">
									<option selected="selected" value="0">Choose Customer</option>
								</select>								
							</div>
							<label class="col-sm-4 col-md-1 col-form-label pl15">Mobile</label>	
							 <div class="col-sm-6 col-md-3 pl0 cal-position">
								<input type="text" id="txtCustomerMobile" class="form-control" onkeypress="return isNumber(event)" placeholder="Contact Number">
							 </div>	
							</div>
							<div class="form-group row">
							<label class="col-sm-4 col-md-1 col-form-label">Contractor</label>
								<div class="col-sm-6 col-md-3 pl0">
   									<select class="custom-select" id="lstContractor" >
										<option selected value="0">Contractor...</option>
									</select>									
								</div>
                               <label class="col-sm-4 col-md-1 col-form-label pl15">RFQ No.</label>	
   									<div class="col-sm-6 col-md-3 pl0 cal-position">
	   									<select class="custom-select" id="lstQuotNo" >
											<option selected value="0">Quotation No...</option>
											<!-- <option selected>Choose...</option>
	                                        <option value="1">1</option>
	                                        <option value="2">2</option> -->
										</select>
   									</div>								
							</div>
                                  <div class="form-group row">
                                    <label class="col-sm-4 col-md-1 col-form-label">Remarks</label>
                                    <div class="col-sm-6 col-md-3 pl0">
                                        <textarea type="text" class="form-control" id="txtRemarks"  placeholder="Remarks Here" rows="2"></textarea>
                                    </div>
                                    </div>
                                    <div class="form-group row" id="divSearchItem">
                                    	<label class="col-sm-4 col-md-1 col-form-label">Search Bar</label>
                                      <div class="col-sm-3 col-md-3 pl0">
                                        <input type="text" class="form-control" id="searchData" placeholder="Enter Item Short/Description Here">
                                    </div>   
                                    <div class="col-sm-4 col-md-1 col-form-label pl15">
                                    	<Button ID="btnSrch" class="common-btn button-dark" onclick="openSearchBox()" >Search</Button>
                                    </div>
                                                                    	
                                    </div>							
						</div>
                            <div class="col-md-12 commen-space">
                                <div id="report" class="table-responsive style-8"> 
                                    <table class="table table-bordered table-hover" id="sotable">
                                      <thead id="reportMainHead" class="thead-dark">
                                         <tr>
                                          <th scope="col" hidden="true">ItemId</th> <!-- 0 -->
                                          <th scope="col" hidden="true">UomID</th> <!-- 1 -->
                                          <th scope="col">Sr No.</th> <!-- 2 -->
                                          <th scope="col">Item Description</th> <!-- 3 -->
                                          <th scope="col">UOM</th> <!-- 4 -->
                                          <th scope="col">Issue Date</th> <!-- 5 -->
                                          <th scope="col">GST%</th> <!-- 6 -->
                                          <th scope="col">Quantity</th> <!-- 7 -->
                                          <th  scope="col">Rate</th> <!-- 8 -->
                                          <th  scope="col">Amount</th> <!-- 9 -->
                                          <th  scope="col">Action</th> <!-- 10 -->
                                       </tr> 
                                      </thead>
                                      <tbody id="reportDtltdata"></tbody>
                                        <tr rowspan="2" >
                                            <td hidden="true"></td>
                                            <td hidden="true"></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td class="border-left"><b>Total Amount</b></td>
<%--                                             <td class="border-left"> 
                                                <span><b><label id="lblTotal"></label></b>
                                                <i class="fa fa-rupee-sign"></i>
                                                </span>
                                              </td> --%>
											<td style="text-align: left;">
												<div class="input-group">
													<div class="input-group-prepend">
														<span class="input-group-text"><i class="fa fa-rupee-sign"></i></span>
														<input type="text" class="form-control" id="txtNetTotalAmt" 
														placeholder="Calculating Bill Amount....." disabled="disabled" style="width: 100%;color: white;background-color: black;font: bold;">
													</div>
												</div>
											</td>                                              
 											<td></td>                                            
                                           
                                        </tr>
                                       
                                      </tbody>
                                    </table>
                                    </div>
                               </div>	
                        		<div id="msgId">
					          		<h5 id="alertMsg"></h5>
					          	</div>
                               <div class="col-sm-6 text-center btn-spaceing mt15">
                                <div class=" w3-bar">
                                    <Button ID="btnSave" onclick="savePoData()" class="common-btn">Save</Button>
                                    <Button ID="btnRefresh" onclick="refreshData()" class="common-btn">Refresh</Button>
                                    <Button ID="btnPrint" onclick="vwReport()" class="common-btn gray-btn">Print</Button>
                                    <Button ID="btnClose" onclick="exitToHomePage()" class="common-btn gray-btn">Exit</Button>

                                </div>
                            
                        </div>					          	                               					
					</div>
				</div>
			</div>
        </section> 
       <footer class="main-footer">
        <p>Copyright Â© 2024-2025, Designed & Developed by ABC</p>
     </footer>                   
    </div>
    <!--Modal Popup Area-->
	<div class="modal" tabindex="-1" role="dialog" id="userDataModel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Search Item Data</h5>
					<button type="button" class="common-close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div id="optionData">
						<table class="table" id="userTable">
							<thead id='tHead'>
								<tr>
									<th hidden>id</th>	<!-- 0 -->
									<th hidden>Uomid</th> <!-- 1 -->
									<th>Item Short Name</th> <!-- 2 -->
									<th>Description</th> <!-- 3 -->
									<th>UOM</th> <!-- 4 -->
									<th>GST</th> <!-- 5 -->
									<th>Select One</th> <!-- 6 -->
								</tr>
							</thead>
							<tbody id='tbodyLoan'>

							</tbody>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="common-secondary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
 	<script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/dataTables.bootstrap4.min.js"></script>
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <!-- Main File-->
    <script src="js/custom.js"></script>
	<script type="text/javascript">
    var tabRowLen = 0;   
    var delBtn;	
    var customerId = 0;
    var salesOrderId = 0;
    customerDataArray=[];    
	    $('.input-group.date').datepicker({
	        format: "dd-M-yy",
	        todayHighlight: true,
	        autoclose: true,
	        showMeridian: true,
	        startDate: "-365d",
	        endDate: "+30d",
	    }).on('changeDate', function (ev) {
	        $(this).datepicker('hide');
	    });	
	    function setCurrentDate() {
	    	var today = new Date();
	    	var dd = String(today.getDate()).padStart(2, '0');
	    	//var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
	    	var month = today.toLocaleString('default', { month: 'short' });

	    	var yyyy = today.getFullYear().toString().substr(-2);

	    	today = dd + '-' + month + '-' + yyyy;
	    		
	    	$("#txtSoDate").val(today);
	    }	    
	    $(document).ready(function () {
	    	$('#txtSoNumber').attr('disabled', true);
	    	$('#txtCustomerNm').attr('disabled', true);
	    	$('#txtCustomerMobile').attr('disabled', true);
	    	$('#lstQuotNo').attr('disabled', true);
	    	$('#btnPrint').hide();
	        $("#btnSave").one('click', function (event) {  
	            event.preventDefault();
	            $(this).prop('disabled', true);
	       });
	    	if ("${sMode}" == "new" || "${sMode}" == "edit") {
	    		fillTowerData("0");
	    	}
	    	if ("${sMode}" == "new") {
	    		setCurrentDate();
	    	}
	    	fillContractorData("${so.getContId()}");
	    	if ("${sMode}" == "edit" || "${sMode}" == "view") {
	    		$("#txtSoNumber").val("${so.getSalesOrderNumber()}");
	    		salesOrderId = "${so.getSaleId()}";
	    		$('#btnPrint').show();
	    		$('#txtSoDate').val("${so.getSalesDate()}");
	    		if ("${so.getTowerNo()}" != "") {
	    			//$('#lstTowerNo').val("${so.getTowerNo()}");
	    			$('#lstTowerNo').html('');
	    			//$('#lstTowerNo').find('option[value="${so.getTowerId()}"]').remove();
	    			$('#lstTowerNo').append('<option value='+"${so.getTowerId()}"+'>'+"${so.getTowerNo()}"+'<->'+"${so.getTowerDescription()}"+'</option>');
	    			//$('#lstTowerNo').attr('disabled', true);
	    			
	    		}	
	    		if ("${so.getFlatNo()}" != "0") {
	    			$('#txtFlatNumber').val("${so.getFlatNo()}");
	    			//$('#txtFlatNumber').attr('disabled', true);
	    		}	  
	    		if ("${so.getCustomerName()}" != "") {
	    			//$('#txtCustomerNm').val("${so.getCustomerName()}");
	    			$('#lstCustomerNm').html('');
	    			$('#lstCustomerNm').append('<option value='+"${so.getCustomerId()}"+'>'+"${so.getCustomerName()}"+'</option>');
	    			$('#lstCustomerNm').attr('disabled', true);
	    		} else {
	    			$('#lstCustomerNm').attr('disabled', false);
	    			if ("${sMode}" == "edit") {
	    				findCustomerData();
	    			}
	    		}
	    		if ("${so.getCutomerMobileNo()}" != "") {
	    			$('#txtCustomerMobile').val("${so.getCutomerMobileNo()}");
	    			$('#txtCustomerMobile').attr('disabled', true);
	    		}	 	    		
	    		if ("${so.getRemarks()}" != "") {
	    			$('#txtRemarks').val("${so.getRemarks()}");
	    		}	
	    		if ("${so.getRfQId()}" != "") {
	    			$('#lstQuotNo').html('');
	    			$('#lstQuotNo').append('<option value='+"${so.getRfQId()}"+'>'+"${so.getRfQNumber()}"+'</option>');
	    			$('#lstQuotNo').attr('disabled', true);
	    		}	    		
	    		if ("${sMode}" == "view") {
	    			$('#txtCustomerNm').attr('disabled', true);
	    			$('#txtCustomerMobile').attr('disabled', true);
	    			$('#lstTowerNo').attr('disabled', true);
	    			$('#txtFlatNumber').attr('disabled', true);
	    			$('#txtRemarks').attr('disabled', true);
					$("#divSearchItem").hide();
				    $('#btnSave').attr('disabled', true); 
				    $('#btnRefresh').attr('disabled', true); 	
				    $('#lstContractor').attr('disabled', true); 
				    $("#txtSoDate").attr('disabled', true);
	    		}
	    		fillSoDtlDataGrid("${so.getSaleId()}");
	    	}
	    });
	    function isNumber(evt) {
			console.log("number");
		    evt = (evt) ? evt : window.event;
		    var charCode = (evt.which) ? evt.which : evt.keyCode;
		    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
		        return false;
		    }
		    return true;
		}	    
	    function fillSoDtlDataGrid(soId) {
			$.ajax({
				//url: '/EZOfficeInventory/Fill-SO-DTL-GRID-DATA',
				url: 'https://salepurchasecompany.co.in/Fill-SO-DTL-GRID-DATA',
		     	type: 'POST',
				contentType: 'application/json',	
				   data: JSON.stringify(
				   	{
				   		"searchVarData":soId
				   		
				   	}),
				   	dataType: 'json',
				   	success: function (data) {
				   		console.log(data);
  				        for(var i=0;i<data.length;i++){
  				            $('#tbodyLoan').html('');
  				            tabRowLen = tabRowLen + 1;
  				            delBtn= '<button type="button" class="common-btn btn-sm red-btn" id="delBtn" onclick="onClickDelete(event, ' + data[i].itemId + ')")>Delete</button>';
  				            $("#reportDtltdata").append(
  				            		'<tr>'+
  				            		'<td hidden>'+ data[i].itemId +'</td>'+
  				            		'<td hidden>'+ data[i].uomId +'</td>'+
  				            		'<td>'+ tabRowLen +'</td>'+
  				            		'<td>'+ data[i].itemDesc +'</td>'+
  				            		'<td>'+ data[i].uomDesc +'</td>'+
  				            		'<td>'+ data[i].soDtlDate +'</td>'+
  				            		/* '<td>'+ data[i].gstPct +'</td>'+ */
									'<td><input type="text" class="form-control" id="txtGst" value="'+ data[i].gstPct +'" placeholder="Gst"></td>'+				            		
  				            		'<td><input type="text" class="form-control" id="txtQty" placeholder="Qty" value="'+ data[i].soQty +'"></td>'+
  				            		/* '<td><input type="text" class="form-control" id="txtRate" placeholder="Rate" value="'+ data[i].soRate +'"></td>'+ */
										'<td style="text-align: left;">'+
										'<div class="input-group">'+
										'<div class="input-group-prepend">'+
										 '<span class="input-group-text"><i class="fa fa-rupee-sign"></i></span>'+
										  '<input type="text" class="form-control" onkeypress="return allowNumericWithDecimal(event)"'+
										'id="txtRate" value="'+ data[i].soRate +'" style="width: 100%;">'+
										'</div></div></td>'+     				            		
  				            		/* '<td><input type="text" class="form-control" id="txtAmt" disabled="disabled" placeholder="Amount" value="'+ data[i].soAmount +'"></td>'+ */
										'<td style="text-align: left;">'+
										'<div class="input-group">'+
										'<div class="input-group-prepend">'+
										 '<span class="input-group-text"><i class="fa fa-rupee-sign"></i></span>'+
										  '<input type="text" class="form-control" onkeypress="return allowNumericWithDecimal(event)"'+
										'id="txtAmt" value="'+ data[i].soAmount +'" style="width: 100%;" disabled="disabled">'+
										'</div></div></td>'+      				            		
  				            		'<td>'+delBtn+'</td>'+
  				            		+'</tr>');
  				         }
  				     	 calculateNetAmount();
	  				      if ("${sMode}" == "view") {
	  				    		$("#sotable").find("input,button,textarea,select").attr("disabled", "disabled");
	  				      }  				     	 
				   	},
				    error: function (error) {
				        console.log(`Error ${error}`);
				    }
			});
		}	    
	    
	    function fillSoDtlDataGridFromRFQ(rfqId) {
			$.ajax({
				//url: '/EZOfficeInventory/bindQuotationDataGrid',
				url: 'https://salepurchasecompany.co.in/bindQuotationDataGrid',
		     	type: 'POST',
				contentType: 'application/json',	
				   data: JSON.stringify(
				   	{
				   		"searchVarData":rfqId
				   		
				   	}),
				   	dataType: 'json',
				   	success: function (data) {
				   		console.log(data);
				   		gridDataArray=[];
				   		$("#reportDtltdata tr").each(function(){
				   			i=0;var gridItemobj={};
				   			gridItemobj["itemId"] =$(this).closest('tr').find("td:eq(0)").text();
				    		gridItemobj["uomId"] = $(this).closest('tr').find("td:eq(1)").text();
				    		gridDataArray.push(gridItemobj);
				   		});
				   		for(var i=0;i<data.length;i++){
  				            $('#tbodyLoan').html('');
  				            tabRowLen = tabRowLen + 1;
  				    		let filter = 
  				    			gridDataArray.filter(d => 
  				   			    d.itemId == data[i].itemId & 
  				  			    d.uomId == data[i].uomId
  				  			) 
  				  			if (filter.length == 0) {
  	  				            delBtn= '<button type="button" class="common-btn btn-sm red-btn" id="delBtn" onclick="onClickDelete(event, ' + data[i].itemId + ')")>Delete</button>';
  	  				            $("#reportDtltdata").append(
  	  				            		'<tr>'+
  	  				            		'<td hidden>'+ data[i].itemId +'</td>'+
  	  				            		'<td hidden>'+ data[i].uomId +'</td>'+
  	  				            		'<td>'+ tabRowLen +'</td>'+
  	  				            		'<td>'+ data[i].itemDesc +'</td>'+
  	  				            		'<td>'+ data[i].uomDesc +'</td>'+
  	  				            		'<td>'+ data[i].rfqDtlDate +'</td>'+
  	  				            		/* '<td>'+ data[i].gstPct +'</td>'+ */
  	  				            		'<td><input type="text" class="form-control" id="txtGst" value="'+ data[i].gstPct +'" placeholder="Gst"></td>'+
  	  				            		'<td><input type="text" class="form-control" id="txtQty"  placeholder="Qty" value="'+ data[i].rfqQty +'"></td>'+
  	  				            		/* '<td><input type="text" class="form-control" id="txtRate"  placeholder="Rate" value="'+ data[i].rfqRate +'"></td>'+ */
										'<td style="text-align: left;">'+
										'<div class="input-group">'+
										'<div class="input-group-prepend">'+
										 '<span class="input-group-text"><i class="fa fa-rupee-sign"></i></span>'+
										  '<input type="text" class="form-control" onkeypress="return allowNumericWithDecimal(event)"'+
										'id="txtRate" value="'+ data[i].rfqRate +'" style="width: 100%;">'+
										'</div></div></td>'+        	  				            		
  	  				            		/* '<td><input type="text" class="form-control" id="txtAmt" disabled="disabled" placeholder="Amount" value="'+ data[i].rfqAmount +'"></td>'+ */
										'<td style="text-align: left;">'+
										'<div class="input-group">'+
										'<div class="input-group-prepend">'+
										 '<span class="input-group-text"><i class="fa fa-rupee-sign"></i></span>'+
										  '<input type="text" class="form-control" onkeypress="return allowNumericWithDecimal(event)"'+
										'id="txtAmt" value="'+ data[i].rfqAmount +'" style="width: 100%;" disabled="disabled">'+
										'</div></div></td>'+    	  				            		
  	  				            		'<td>'+delBtn+'</td>'+
  	  				            		+'</tr>');  				  				
  				  			}
  				         }
  				     	 calculateNetAmount();
	  				      if ("${sMode}" == "view") {
	  				    		$("#sotable").find("input,button,textarea,select").attr("disabled", "disabled");
	  				      }  				     	 
				   	},
				    error: function (error) {
				        console.log(`Error ${error}`);
				    }
			});
		}	    
	    
	    function fillTowerData(towerId) {
	    	$.ajax({
	    		//url: '/EZOfficeInventory/get-tower-list',
	    		url: 'https://salepurchasecompany.co.in/get-tower-list',
	         	type: 'POST',
	    		contentType: 'application/json',	
	    		   data: JSON.stringify(
	    		   	{
	    		   		"searchVarData":towerId
	    		   		
	    		   	}),
	    		   	dataType: 'json',
	    		   	success: function (data) {
	    		   		console.log(data);
	    		   		$('#lstTowerNo').append('<option value=0>Choose Tower Number..</option>');
	    		        for(var i=0;i<data.length;i++){
	    		        	$('#lstTowerNo').append('<option value='+data[i].towerId+'>'+data[i].towerNumber+'<->'+data[i].towerDescription+'</option>');
	    		        }
	    		   	},
	    		    error: function (error) {
	    		        console.log(`Error ${error}`);
	    		    }
	    	});	
	    }
	    $('#lstTowerNo').on('change', function() {
	    	$('#txtFlatNumber').focus();
	    	//$("#sotable > tbody").empty();
	    	clearAllDataRowsFromGrid();

	    });
	    $('#lstQuotNo').on('change', function() {
	    	if ($('#lstQuotNo').val() != "0") {
		    	if (confirm('Are you want to Fill Quotation Data?')) {
		    		fillSoDtlDataGridFromRFQ($('#lstQuotNo').val());
		    		$('#lstQuotNo').attr('disabled', true);
		    	}
	    	} else {
	    		$("#reportDtltdata").html('');
	    	}
 		 });	    
	    
	    $('#lstCustomerNm').on('change', function() {
    		let filter = 
    			customerDataArray.filter(d => 
   			    d.customerId == $('#lstCustomerNm').val());
    		if (filter.length > 0) {
    			var data = JSON.stringify(filter);
    			var stringify = JSON.parse(data);
    			$('#txtCustomerMobile').val(stringify[0]["mobileNo"]);
    			findRFQData();
    		}
	    });	    
	
/*         $("#txtFlatNumber").blur(function() {
        	alert('working');
        }); */
        function findCustomerData() {
        	
        	var towerNumber = $('#lstTowerNo').val();
        	var flatNumber = $('#txtFlatNumber').val();
        	
        	$('#lstCustomerNm').html('');
        	$('#txtCustomerMobile').val('');
        	$('#lstQuotNo').html('');
        	if ("${sMode}" == "new") {
        		clearAllDataRowsFromGrid();
        	}
        	if ((flatNumber != "") && (towerNumber != "0")) {
            	$.ajax({
    	    		//url: '/EZOfficeInventory/search-customer-by-flatNo',
    	    		url: 'https://salepurchasecompany.co.in/search-customer-by-flatNo',
    	         	type: 'POST',
    	    		contentType: 'application/json',	
    	    		   data: JSON.stringify(
    	    		   	{
    	    		   		"towerNo":$('#lstTowerNo').val(),
    	    		   		"flatNo":$('#txtFlatNumber').val()
    	    		   		
    	    		   	}),
    	    		   	dataType: 'json',
    	    		   	success: function (data) {
    	    		   		console.log(data);
    	    		   		if(data.length!=0) {
        	    		   		if (data.length > 1) {
        	    		   			$('#lstCustomerNm').append('<option value=0>Choose Customer</option>');
        	    		   			for(var i=0;i<data.length;i++){
        	    		   				$('#lstCustomerNm').append('<option value='+data[i].customerId+'>'+data[i].customerName+'</option>');
        	    		   				var customerData={};
        	    		   				customerData["customerId"] = data[i].customerId;
        	    		   				customerData["mobileNo"] = data[i].cutomerMobileNo;
        	    		   				customerDataArray.push(customerData);
        	    		   			}
        	    		   			alert("Please choose the customer");
        	    		   			$('#lstCustomerNm').focus();
        	    		   		} else {
        	    		   			$('#lstCustomerNm').html('');
        	    		   			if ("${sMode}" == "edit") {
        	    		   				$('#lstCustomerNm').append('<option value=0>Choose Customer</option>');
        	    		   				var customerData={};
        	    		   				customerData["customerId"] = data[0].customerId;
        	    		   				customerData["mobileNo"] = data[0].cutomerMobileNo;
        	    		   				customerDataArray.push(customerData);        	    		   				
        	    		   			}
        	    		   			$('#lstCustomerNm').append('<option value='+data[0].customerId+'>'+data[0].customerName+'</option>');
        	    		   			if ("${sMode}" == "new") {
        	    		   				$('#txtCustomerMobile').val(data[0].cutomerMobileNo);
        	    		   			}
        	    		   			if ("${sMode}" == "new") {
        	    		   				findRFQData();
        	    		   			}
        	    		   		}
        	    		   		//customerId = data.customerId;
    	    		   		} else {
        	    		   		$('#txtCustomerNm').val('');
        	    		   		$('#txtCustomerMobile').val('');
        	    		   		customerId = 0;
        	        			$('#lstQuotNo').html('');
        	        			$('#lstQuotNo').append('<option selected value="0">Quotation No...</option>');        	    		   		
    	    		   		}
    	    		   	},
    	    		    error: function (error) {
    	    		   		$('#txtCustomerNm').val('');
    	    		   		$('#txtCustomerMobile').val('');
    	        			$('#lstQuotNo').html('');
    	        			$('#lstQuotNo').append('<option selected value="0">Quotation No...</option>');    	    		   		
    	    		   		customerId = 0;
    	    		    }
    	    	});          		
        	} else {
        		if (towerNumber == "0") {
        			alert('Select Tower Number First');
        			$('#txtFlatNumber').val('');
        			$('#lstTowerNo').focus();
        			$('#lstQuotNo').html('');
        			$('#lstQuotNo').append('<option selected value="0">Quotation No...</option>');        			
        			return false;
        		}
        	}
        }
        function findRFQData() {
        	
        	var towerNumber = $('#lstTowerNo').val();
        	var flatNumber = $('#txtFlatNumber').val();
        	$('#lstQuotNo').html('');
        	$('#lstQuotNo').append('<option value=0>Quotation No...</option>');
        	$('#lstQuotNo').attr('disabled', true);
        	clearAllDataRowsFromGrid();
        	if ((flatNumber != "") && (towerNumber != "0")) {
            	$.ajax({
    	    		//url: '/EZOfficeInventory/findRFQInSalesOrder',
    	    		url: 'https://salepurchasecompany.co.in/findRFQInSalesOrder',
    	         	type: 'POST',
    	    		contentType: 'application/json',	
    	    		   data: JSON.stringify(
    	    		   	{
    	    		   		"towerNo":$('#lstTowerNo').val(),
    	    		   		"flatNo":$('#txtFlatNumber').val(),
    	    		   		"customerName":$('#lstCustomerNm').val()
    	    		   		
    	    		   	}),
    	    		   	dataType: 'json',
    	    		   	success: function (data) {
    	    		   		console.log(data);
    	    		   		if(data.length!=0) {
    	    		   			$('#lstQuotNo').attr('disabled', false);
    	    		   			for(var i=0;i<data.length;i++){
    	    		   				$('#lstQuotNo').append('<option value='+data[i].rfQId+'>'+data[i].rfQNumber+'</option>');
    	    		   			}
    	    		   			alert("Quotation Available For the Customer.");
    	    		   			$('#lstQuotNo').focus();
    	    		   		}
    	    		   	},
    	    		    error: function (error) {
    	    		        console.log(`Error ${error}`);
    	    		    }
    	    	});          		
        	}
        }        
        function openSearchBox() {
    		var searchDataVal=$('#searchData').val(); 
    		$('#tbodyLoan').html('');
    		if (searchDataVal == "") {
    			alert('Input Some Text to Search the Item Data');
    			$('#searchData').focus();
    			return false;
    		} else {
    			 $.ajax({
    				 //url: '/EZOfficeInventory/Search-ItemMaster-Data',
    				 url: 'https://salepurchasecompany.co.in/Search-ItemMaster-Data',
    				 type: 'Post',
    				 contentType: 'application/json',
  				   	 data: JSON.stringify(
  					 {
  					    "searchVarData":searchDataVal
  					 }),  
  					success: function (data) {
  						console.log(data);
  						if(data.length!=0) {
  							$('#optionData').show();
  							for(var i=0;i<data.length;i++){
  								$('#tbodyLoan').append(
  									'<tr>'+
  									'<td hidden>'+data[i].itemId+'</td>'+
  									'<td hidden>'+data[i].uomId+'</td>'+
  									'<td>'+data[i].itemShortNm+'</td>'+
  									'<td>'+data[i].itemDescription+'</td>'+
  									'<td>'+data[i].uomName+'</td>'+
  									'<td>'+data[i].gstNo+'</td>'+
  									'<td><label class="radio-inline"> <input type="radio" class="radioUser" name="selectUser" value='+data[i].itemId+'>Select</label></td></tr>'
  								);
  							}
  							$('#userDataModel').modal('show');
  						} else{
					  		alert("No details are available on given input.");
					  		$('#searchData').focus();
				        }
  					},
				    error: function (error) {
				        console.log(error);
				    }
    			 });
    		}
   		} 
        $("#userTable").on('click','.radioUser',function(){
        	var today = new Date();
        	var dd = String(today.getDate()).padStart(2, '0');
        	var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
        	var yyyy = today.getFullYear().toString().substr(-2);

        	today = dd + '/' + mm + '/' + yyyy;
        	var currentRow=$(this).closest("tr"); 
            var itemId=currentRow.find("td:eq(0)").text();
            var itemName=currentRow.find("td:eq(3)").text();
            var uomId=currentRow.find("td:eq(1)").text();
            var col2=currentRow.find("td:eq(2)").text(); 
            var col3=currentRow.find("td:eq(4)").text(); 
            var gst=currentRow.find("td:eq(5)").text();
	   		gridDataArray=[];
	   		$("#reportDtltdata tr").each(function(){
	   			i=0;var gridItemobj={};
	   			gridItemobj["itemId"] =$(this).closest('tr').find("td:eq(0)").text();
	    		gridItemobj["uomId"] = $(this).closest('tr').find("td:eq(1)").text();
	    		gridDataArray.push(gridItemobj);
	   		});
    		let filter = 
	    			gridDataArray.filter(d => 
	   			    d.itemId == itemId & 
	  			    d.uomId == uomId) 
  			if (filter.length > 0) {
  				alert("Item Already Added in this Sales Order");
  				var $self = $(this);
  				if( $self.is(':checked') ){
  					setTimeout(function(){$self.removeAttr('checked');},0);
  				}
  				return false;
  			}
            $('#userDataModel').modal('hide');
            $('#tbodyLoan').html('');
            tabRowLen = tabRowLen + 1;
            delBtn= '<button type="button" class="common-btn btn-sm red-btn" id="delBtn" onclick="onClickDelete(event, ' + itemId + ')")>Delete</button>';
            $("#reportDtltdata").append(
            		'<tr>'+
            		'<td hidden>'+ itemId +'</td>'+
            		'<td hidden>'+ uomId +'</td>'+
            		'<td>'+ tabRowLen +'</td>'+
            		'<td>'+ itemName +'</td>'+
            		'<td>'+ col3 +'</td>'+
            		'<td>'+ today +'</td>'+
            		/* '<td>'+ gst +'</td>'+ */
            		'<td><input type="text" class="form-control" id="txtGst" value="'+ gst +'" placeholder="Gst"></td>'+
            		'<td><input type="text" class="form-control" id="txtQty" placeholder="Qty"></td>'+
            		/* '<td><input type="text" class="form-control" id="txtRate" placeholder="Rate"></td>'+ */
					'<td style="text-align: left;">'+
					'<div class="input-group">'+
					'<div class="input-group-prepend">'+
					 '<span class="input-group-text"><i class="fa fa-rupee-sign"></i></span>'+
					  '<input type="text" class="form-control" onkeypress="return allowNumericWithDecimal(event)"'+
					'id="txtRate" placeholder="Rate" style="width: 100%;">'+
					'</div></div></td>'+              		
            		/* '<td><input type="text" class="form-control" id="txtAmt" disabled="disabled" placeholder="Amount"></td>'+ */
					'<td style="text-align: left;">'+
					'<div class="input-group">'+
					'<div class="input-group-prepend">'+
					 '<span class="input-group-text"><i class="fa fa-rupee-sign"></i></span>'+
					  '<input type="text" class="form-control" onkeypress="return allowNumericWithDecimal(event)"'+
					'id="txtAmt" placeholder="Amount" style="width: 100%;" disabled="disabled">'+
					'</div></div></td>'+            		
            		'<td>'+delBtn+'</td>'+
            		+'</tr>');
           // $('#txtAmt').attr('disabled', true);
            $('#searchData').val('');
        });      
        function onClickDelete(event) {
      	  $(event.target).parents('tr').remove();
      	  calculateNetAmount();
     	};        
  	function calculateNetAmount() {
  		  var txtTotalAmount = 0;	
  		  $('#reportDtltdata input').each(function (i,el) {
  			     el.name=el.name.replace(/\d+_?\d*/,
  			     $(el).parent().parent().index()+'_'+$(el).parent().index());
  			     el.id=el.id.replace(/\d+/,i);
  			     // comment out the following line for production version:
  			     //el.value="id:"+el.id+", name:"+el.name;
  			     if (el.id == "txtAmt") {
  			    	 txtTotalAmount = roundToTwo(txtTotalAmount + parseFloat(el.value)); 
  			     }
  			  });    		
  			  //alert(txtTotalAmount);
  			  $("#txtNetTotalAmt").val(formatNumber(txtTotalAmount));
  	}
  	function roundToTwo(num) {
  	    return +(Math.round(num + "e+2")  + "e-2");
  	}
  	$("#sotable").on('keyup','#txtGst',function(){
		var qty= $(this).closest('tr').find('#txtQty').val();
		var rate= $(this).closest('tr').find('#txtRate').val();
		var gstPct = $(this).closest('tr').find('#txtGst').val();
		if (rate == 0) {
			rate = 1;
		}
		var soItemAmount = calculateSOItemAmt(parseFloat(qty),parseFloat(rate),parseFloat(gstPct));
		$(this).closest('tr').find('#txtAmt').val(soItemAmount.toFixed(2));
		calculateNetAmount();
	});  	
  	$("#sotable").on('keyup','#txtQty',function(){
		var qty= $(this).closest('tr').find('#txtQty').val();
		var rate= $(this).closest('tr').find('#txtRate').val();
		var gstPct = $(this).closest('tr').find('#txtGst').val();
		if (rate == 0) {
			rate = 1;
		}
		var soItemAmount = calculateSOItemAmt(parseFloat(qty),parseFloat(rate),parseFloat(gstPct));
		$(this).closest('tr').find('#txtAmt').val(soItemAmount.toFixed(2));
		calculateNetAmount();
	});
  	$("#sotable").on('keyup','#txtRate',function(){
		var qty= $(this).closest('tr').find('#txtQty').val();
		var rate= $(this).closest('tr').find('#txtRate').val();
		var gstPct = $(this).closest('tr').find('#txtGst').val();
		if (rate == 0) {
			rate = 1;
		}
		var soItemAmount = calculateSOItemAmt(parseFloat(qty),parseFloat(rate),parseFloat(gstPct));
		$(this).closest('tr').find('#txtAmt').val(soItemAmount.toFixed(2));
		calculateNetAmount();
	});      
	$('#sotable').on('keypress','#txtQty',function(event) {
	    if (((event.which != 46 || (event.which == 46 && $(this).val() == '')) ||
	            $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
	        event.preventDefault();
	    }
	});	
	$('#sotable').on('keypress','#txtRate',function(event) {
	    if (((event.which != 46 || (event.which == 46 && $(this).val() == '')) ||
	            $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
	        event.preventDefault();
	    }
	});  	
 	function calculateSOItemAmt(soQty,soRate,gstPct) {
 		var itemAmount = (soQty * soRate);
 		if (gstPct > 0) {
 			var gstAmount = (itemAmount * gstPct)/100;
 			itemAmount = itemAmount + gstAmount;
 		}
 		return itemAmount; 
 	}  	
 	
 	function clearAllDataRowsFromGrid() {
 		if ("${sMode}" == "new") {
 	 		var rowCount = 1;
 	 		$("#reportDtltdata tr").each(function(){
 	 			if (rowCount > 0) {
 	 				$(this).closest('tr').remove();
 	 			}
 	 			rowCount++;
 	 		});
 	 		$('#txtNetTotalAmt').val('');
 	 		tabRowLen = 0;
 		}
 	}
 	
	function validate() {
		var isVldFail = true;
		var soDate = $('#txtSoDate').val();
		var soDtlGrid = $("#reportDtltdata tr").length;
		if (soDate == "") {
			alert('SO Date Cannot be left Blank');
			$('#txtSoNumber').focus();
			isVldFail = false;
			$(this).prop('disabled', false);
			return false;
		}
		if (soDtlGrid == "0") {
			alert('Atleast Select One Item In SO');
			$('#searchData').focus();
			isVldFail = false;
			$(this).prop('disabled', false);
			return false;				
		} 
		var isVldFail;
		$("#reportDtltdata tr").each(function(){
			i=0;var itemDesc;var uomDesc;
			$(this).children("td").each(function(){
				if (i == 3) {
					itemDesc = $(this).html();
				} else if (i == 4) {
					uomDesc = $(this).html();
				} else if (i == 7) {
				  if ($(this).closest('tr').find('#txtQty').val() == "") {
					alert("Qty At Item:[" + itemDesc + "] With UOM :[" + uomDesc + "]\nCannot be left blank")
					$(this).closest('tr').find('#txtQty').focus();
					isVldFail = false;
					$(this).prop('disabled', false);
					return false;
				  }
				} else if (i == 8) {
					if ($(this).closest('tr').find('#txtRate').val() == "") {
						alert("Rate At Item:[" + itemDesc + "] With UOM :[" + uomDesc + "]\nCannot be left blank")
						$(this).closest('tr').find('#txtRate').focus();
						isVldFail = false;
						$(this).prop('disabled', false);
						return false;
					}
				}
				i++;
			});
		});
		
		return isVldFail;
	}  	
	function savePoData() {
		if (validate() == true) {
			var arrayObj=[];
			var flatNumber = 0;
			if ($('#txtFlatNumber').val() != "") {
				flatNumber = $('#txtFlatNumber').val();
			}
			$("#reportDtltdata tr").each(function(){
				var obj={}, i=0;
				$(this).children("td").each(function(){
				      if (i == 0) {
				    	  obj["itemId"]=$(this).html();  
				      } else if (i == 1) {
				    	  obj["uomId"]=$(this).html();
				      } else if (i == 7) {
				    	  obj["soQty"]=$(this).closest('tr').find('#txtQty').val();
				      }  else if (i == 8) {
				    	  obj["soRate"]=$(this).closest('tr').find('#txtRate').val();
				      } else if (i == 9) {
				    	  obj["soAmount"]=$(this).closest('tr').find('#txtAmt').val();
				      } else if (i == 5) {
				    	  obj["soDtlDate"]=$(this).html(); 
				      } else if (i == 6) {
				    	  obj["gstPct"]=$(this).closest('tr').find('#txtGst').val();
				      }
				      i++;					
				})
			    obj["sMode"] ="${sMode}";
			    obj["towerNo"] =$('#lstTowerNo').val();
			    obj["flatNo"] =flatNumber;
			    obj["customerId"] =$('#lstCustomerNm').val();
			    obj["salesDate"] =$('#txtSoDate').val();
			    obj["remarks"] =$('#txtRemarks').val().replace(/(\r\n|\n|\r)/gm, "");
			    obj["createdById"] =1;
			    obj["rfQId"] =$('#lstQuotNo').val();
			    if ("${sMode}" == "edit") {
			    	obj["salesOrderNumber"] =$("#txtSoNumber").val();
			    	obj["saleId"] ="${so.getSaleId()}";
			    }
			    obj["contId"] =$('#lstContractor').val();
		    	arrayObj.push(obj);				
			});
			console.log(arrayObj);
			var xhr = new XMLHttpRequest();
			//xhr.open("POST", "/EZOfficeInventory/Save-SO-Data", true);
			xhr.open("POST", "https://salepurchasecompany.co.in/Save-SO-Data", true);
			xhr.setRequestHeader("Content-Type", "application/json");
			xhr.onreadystatechange = function () {
			  if (xhr.readyState === 4 && xhr.status === 200) {
				  var responseData = JSON.parse(xhr.responseText);
				  console.log(responseData);
				  if (responseData.errorFlag == false) {
			           $("#msgId").addClass("alert alert-success");
			    	   $("#alertMsg").append(responseData.strMessage.substring(0,responseData.strMessage.indexOf(":"))); 
			    	   $("#txtSoNumber").val(responseData.strMessage.substring(responseData.strMessage.indexOf(":")+1,responseData.strMessage.length));
			    	   $("#txtSoDate").attr('disabled', true);
			    	   $("#lstTowerNo").attr('disabled', true);
			    	   $("#txtFlatNumber").attr('disabled', true);
			    	   $("#txtRemarks").attr('disabled', true);
			    	   $('#lstContractor').attr('disabled', true);
			    	   $('#lstCustomerNm').attr('disabled', true);
			    	   $("#divSearchItem").hide();
			    	   $("#sotable").find("input,button,textarea,select").attr("disabled", "disabled");
			    	   $('#btnSave').attr('disabled', true); 
			    	   salesOrderId = responseData.recordNumber;
			    	   alert(responseData.strMessage);	
			    	   $('#btnPrint').show();
				  } else {
		           	  $("#msgId").addClass("alert alert-success");
		           		alert(responseData.strMessage);
		    	   	  $("#alertMsg").append(responseData.strMessage); 
		    	   	$(this).prop('disabled', false);
				}
			  }				
			};
			xhr.send(JSON.stringify(arrayObj)); 
		}
	}
    function fillContractorData(contractorId) {
    	$.ajax({
    		//url: '/EZOfficeInventory/getContractorData',
    		url: 'https://salepurchasecompany.co.in/getContractorData',
         	type: 'POST',
    		contentType: 'application/json',	
    		   data: JSON.stringify(
    		   	{
    		   		"searchVarData":"C"
    		   		
    		   	}),
    		   	dataType: 'json',
    		   	success: function (data) {
    		   		console.log(data);
    		   		$('#lstContractor').html('');
    		   		$('#lstContractor').append('<option value=0>Choose Sub Contractor..</option>');
    		        for(var i=0;i<data.length;i++){
    		        	$('#lstContractor').append('<option value='+data[i].partyId+'>'+data[i].partyName+'</option>');
    		        }
     	    		if (contractorId != "") {
    	    			$('#lstContractor').val(contractorId);

    	    		}     		        
    		   	},
    		    error: function (error) {
    		        console.log(`Error ${error}`);
    		    }
    	});	
    }	
	function exitToHomePage() {
		//location.href = "/EZOfficeInventory/salesOrder";
		location.href = "https://salepurchasecompany.co.in/salesOrder";
	}
	function refreshData() {
		//location.href = "/EZOfficeInventory/AddNewSalesOrder";
		location.href = "https://salepurchasecompany.co.in/AddNewSalesOrder";
	}	
	function vwReport() {
		srchData = {
				"salesOrderId" : salesOrderId
			};
			//window.location.href = "/EZOfficeInventory/PrintPO?"
			 //window.location.href = "https://salepurchasecompany.co.in/OpenPurchaseOrder?"
				//	+ $.param(srchData);
			//var poLink = "/EZOfficeInventory/PrintSalesOrder?"+ $.param(srchData);
			var poLink = "https://salepurchasecompany.co.in/PrintSalesOrder?"+ $.param(srchData);
			popitup(poLink);
	}
	function popitup(url) {
		newwindow=window.open(url,'name','height=600,width=900');
		if (window.focus) {newwindow.focus()}
		return false;
	} 	
	function allowNumericWithDecimal(event) {
	    if (((event.which != 46 || (event.which == 46 && $(this).val() == '')) ||
	            $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
	        event.preventDefault();
	    }		
	}
  	function formatNumber(n) {
    	  return n.toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,");
    	}  	
	</script>
</body>
</html>