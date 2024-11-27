<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Customers Payment Statement</title>
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
    <link rel="shortcut icon" href="img/favicon.ico">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script> 
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/ui-lightness/jquery-ui.css' rel='stylesheet'>
      
  <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" ></script>
 <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet" type="text/css">
 <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script> 

 <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" ></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" ></script>
 <script src="src/jquery.table2excel.js"></script>
    
  <script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js" ></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js" ></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js" ></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js" ></script>
 <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js" ></script>     
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
                            <li class="active"><a href="https://salepurchasecompany.co.in/purchase">Purchase Order</a></li>
                            <li><a href="https://salepurchasecompany.co.in/salesOrder">Sales Order</a></li>
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
                    <li class="breadcrumb-item active">Payment Received Statement</li>
                </ul>
            </div>
        </div>    
        <section>
			<div class="container-fluid">
         	 	 <div class="card">
         	 	 	<div class="card-body">
         	 	 		<div class="container">
                           <div class="form-group row">
                           <label class="col-sm-4 col-md-1 col-form-label">From Date:</label>
                               <div class="col-sm-6 col-md-3 pl0 cal-position">
    	                            <input type="text" id="txtFromDate" class="form-control input-group date" placeholder="From Date">
		                                  <i class="fa fa-calendar"></i>                                     
                                 </div>
                                 <label class="col-sm-4 col-md-1 col-form-label pl15">To Date:</label>
                                   <div class="col-sm-6 col-md-3 pl0 cal-position">
	                                 <input type="text" id="txtToDate" class="form-control input-group date" placeholder="To Date">
		                                  <i class="fa fa-calendar"></i>                                     
                                  </div>
                            </div>            	 	 		
							<div class="form-group row">
								<label class="col-sm-4 col-md-1 col-form-label">Tower</label>
								<div class="col-sm-6 col-md-3 pl0">
									<select class="custom-select" id="lstTowerNo">
									</select>
								</div>
								<label class="col-sm-4 col-md-1 col-form-label pl15">Flat</label>
								<div class="col-sm-6 col-md-3 pl0">
									<input type="text" id="txtFlatNumber" class="form-control" onblur="findCustomerData()" onkeypress="return isNumber(event)" style="background-color: lightyellow;" placeholder="Enter Flat Number">									
								</div>
							</div>    
							<div class="form-group row">
								<label class="col-sm-4 col-md-1 col-form-label">Customer</label>
								<div class="col-sm-6 col-md-3 pl0">
									<!-- <input type="text" id="txtCustomerNm" class="form-control" placeholder="Customer Name"> -->
									<select class="custom-select" id="lstCustomerNm">
										<option selected="selected" value="0">Choose Customer</option>
									</select>	
									<br><a href="#" onclick="showCustomerSearch();">Search Customer</a>							
								</div>
								<label class="col-sm-4 col-md-1 col-form-label pl15">Mobile</label>	
								 <div class="col-sm-6 col-md-3 pl0">
									<input type="text" id="txtCustomerMobile" class="form-control" onkeypress="return isNumber(event)" placeholder="Contact Number">
								 </div>								
								 </div>	
							<div class="form-group row">
								<label class="col-sm-4 col-md-1 col-form-label">SO Number</label>
								<div class="col-sm-6 col-md-3 pl0">
									<!-- <input type="text" id="txtCustomerNm" class="form-control" placeholder="Customer Name"> -->
									<select class="custom-select" id="lstSoNo">
										<option selected="selected" value="0">Choose Sales Order</option>
									</select>								
								</div>	
    							<label class="col-sm-4 col-md-1 col-form-label pl15"></label>
						    	<div class="col-sm-6 col-md-3 pl0">
							        <div class="form-check form-check-inline">
							            <input type="checkbox" checked="checked" id="chkRptDtl" class="form-check-input">
							            <label for="chkRptDtl" class="form-check-label">Detail</label>
							        </div>
							        <div class="form-check form-check-inline">
							            <input type="checkbox" id="chkRptSmry" class="form-check-input">
							            <label for="chkRptSmry" class="form-check-label">Statement</label>
							        </div>
							    </div> 
							</div>
			         		<div id="msgId">
					          		<h5 id="alertMsg"></h5>
					          	</div> 
			                     <div class="col-sm-6 text-center btn-spaceing mt6">
			                        <div class=" w3-bar">
			                            <div>
			                            <Button ID="btnShow" onclick="showReport();" class="common-btn">Show</Button>&nbsp;&nbsp;&nbsp;
			                            <Button ID="btnRefresh"onclick="refreshData()" class="common-btn">Refresh</Button>&nbsp;&nbsp;&nbsp;
			                            <Button ID="btnExport"onclick="exportToExcel()" class="common-btn">Export</Button>&nbsp;&nbsp;&nbsp;
			                            <Button ID="btnPrint"onclick="printCurrentReport()" class="common-btn">Print</Button>
			                            </div>
			                            
			                         </div>							       				
								</div> 
							</div>
					<div class="col-md-12 commen-space">
						<div id="billDtl" class="table-responsive style-8">
							<table class="table table-bordered table-hover" id="pymntGridTab">
								<thead id="pymntGridHead" class="thead-dark">
						  		<tr>
							  		<th scope="col">Srl.</th>
							  		<th scope="col">Bill Number</th>
							  		<th scope="col">Bill Date</th>
							  		<th scope="col">Tower/Flat No</th>
							  		<th scope="col">Party Name</th>
							  		<th scope="col">Bill Amount</th>
							  		<th scope="col">Received Amount</th>
							  		<th scope="col">Balance Amount</th>
						  		</tr>								
								</thead>
								<tbody id="pymntGridBody">
								
								</tbody>
								
							</table>
						</div>
						</div>   							
         	 	 		</div>
       	 	 		</div>
       	 		</div>	
        </section>     
       <footer class="main-footer">
        <p>Copyright © 2024-2025, Designed & Developed by ABC</p>
     </footer>                	
    </div>    
    <!--Modal Popup Area-->
	<div class="modal" tabindex="-1" role="dialog" id="userDataModel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Search Customer</h5>
					<button type="button" class="common-close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
				<section>
					<div class="container-fluid">
					<div class="container">
						<div class="form-group row"> 
						    <label class="col-sm-4 col-md-2 col-form-label">Search:</label>
						    <div class="col-sm-6 col-md-7 pl0">
						        <input type="text" id="txtSrchData" class="form-control" 
						               onkeypress="return isNumber(event)" style="background-color: lightyellow;" 
						               placeholder="Enter Customer Name/Mobile in SearchBox">  
						    </div>
						    <div class="col-sm-2 col-md-3 pl0">
						        <button id="btnSrchCustomer" onclick="searchCustomerDat();" class="common-btn btn btn-primary">Search</button>
						    </div>                
						</div>
					</div>
					</div>
				</section>
					<div id="optionData">
						<table class="table" id="userTable">
							<thead id='tHead'>
								<tr>
									<th hidden>id</th>	<!-- 0 -->
									<th>Customer Name</th> <!-- 2 -->
									<th>MobileNo</th> <!-- 3 -->
									<th>TowerNo</th> <!-- 5 -->
									<th>FlaNo</th> <!-- 6 -->
									<th>Select One</th> <!-- 7 -->
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
</body>
   <!-- JavaScript files-->
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
   $(document).ready(function () {
  	 setCurrentDate();
  	$('#txtCustomerMobile').attr('disabled', true);	
 	$('#txtCustomerNm').attr('disabled', true);
	$('#txtFromDate').attr('readonly', true);
	$('#txtFromDate').addClass('input-disabled');	
	$('#txtToDate').attr('readonly', true);
	$('#txtToDate').addClass('input-disabled');		
	$('#btnPrint').hide();  
  	 fillTowerData("0");
   });
   
    $('#lstTowerNo').on('change', function() {
	   $('#txtFlatNumber').focus();
		$('#pymntGridBody').html('');
		$('#pymntGridBody').hide();	   
   });   
   
    function setCurrentDate() {
    	var today = new Date();
    	var dd = String(today.getDate()).padStart(2, '0');
    	//var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
    	var month = today.toLocaleString('default', { month: 'short' });

    	var yyyy = today.getFullYear().toString().substr(-2);

    	today = dd + '-' + month + '-' + yyyy;
    		
    	$("#txtFromDate").val('01' + '-' + month + '-' + yyyy);
    	$("#txtToDate").val(today);
    }      
    
    function fillSoNumber() {
	$('#lstSoNo').html('');
	 $.ajax({
   		//url: '/EZOfficeInventory/fillSOInRecvdPymntPG',
   		url: 'https://salepurchasecompany.co.in/fillSOInRecvdPymntPG',
        	type: 'POST',
   		contentType: 'application/json',	
   		   data: JSON.stringify(
   		   	{
   		   		"searchVarData":$('#lstCustomerNm').val()
	   		   	}),
   		   	dataType: 'json',
   		   	success: function (data) {
   		   		console.log(data);
   		   		if (data.length > 0) {
   		   		$('#lstSoNo').append('<option value=0>Choose Sales Order</option>');
   		   			for(var i=0;i<data.length;i++){
   		        		$('#lstSoNo').append('<option value='+data[i].soID+'>'+data[i].soNo+'<->'+data[i].soDate+'</option>');
   		        	}    		   			
   		   		} else {
   		   			alert("No Sales Order Available For Selected Customer")
   		   		}

   		   	},
   		    error: function (error) {
   		        console.log(`Error ${error}`);
   		    }
   	});    	
   }
   function fillTowerData(towerId) {
	   $('#lstSoNo').html('');
	   $('#lstSoNo').append('<option value=0>Choose Sales Order</option>');
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
   
   function validate() {
	 if ($('#lstTowerNo').val() == "0") {
		 alert('Please Select Any Tower');
		 $('#lstTowerNo').focus();
		 return false;
	 }  
	   
	   return true;
   }
   
   function showReport() {
	   if ($('#chkRptDtl').is(':checked')) {
		   getSOPymntRecvdData();
	   }
	   if ($('#chkRptSmry').is(':checked')) {
		   getPaymentStatement();
	   }	   
   }
   
   function getPaymentStatement() {
	   var tabRowLen = 1; 
	   var customerId = $('#lstCustomerNm').val();
	   	var towerId = $('#lstTowerNo').val();
	   	var flatNo = $('#txtFlatNumber').val();
	   	
	   	if (customerId == "0") {
	   		customerId = null;
	   	}
	   	if (towerId == "0") {
	   		towerId = null;
	   	}
	   	if (flatNo == "") {
	   		flatNo = null;
	   	}
	   	$('#btnPrint').hide();
	   	$('#pymntGridBody').html('');
	   	$.ajax({
	   		//url: '/EZOfficeInventory/getCustomerSOAStmtData',
	   		url: 'https://salepurchasecompany.co.in/getCustomerSOAStmtData',
       	type: 'POST',
	   		contentType: 'application/json',	
	   		   data: JSON.stringify(
	   		   	{
	   		   		"customerId":customerId,
	   		   		"towerName":towerId,
	   		   		"flatNo":flatNo,
	   		   		"fromDate":$('#txtFromDate').val(),
	   		   		 "toDate":$('#txtToDate').val()
		   		   	}),
	   		   	dataType: 'json',
	   		   	success: function (data) {
	   		   		console.log(data);
	   		   		if (data.length > 0) {
	   		   			$('#pymntGridTab').show();
	   		   			$('#pymntGridBody').show();
	   		   			$('#btnPrint').show();
	   		   			for(var i=0;i<data.length;i++){
  		   				$('#pymntGridBody').append(
		                        '<tr>'+
		                        '<td>'+tabRowLen+'</td>'+
		                        '<td>'+data[i].customerName+'</td>'+
			                      '<td>'+data[i].towerDescription+'/'+ data[i].flatNo +'</td>'+
			                      '<td>'+formatNumber(data[i].totalBillAmount)+'</td>'+
			                      '<td>'+formatNumber(data[i].recvdBillAmount)+'</td>'+
			                      '<td>'+formatNumber(data[i].advanceBillAmount)+'</td>'+
			                      '</tr>'); 
  		   					tabRowLen++;
	   		        	}    		   			
	   		   		} else {
	   		   			alert("No Payment Data Found");
	   		   		}

	   		   	},
	   		    error: function (error) {
	   		        console.log(`Error ${error}`);
	   		    }
	   	});    	
  }        	
   function getSOPymntRecvdData() {
   	var tabRowLen = 1; 
   	var totalBill = 0;
   	var runningBalance = 0;
   	var soId = $('#lstSoNo').val();
   	var customerId = $('#lstCustomerNm').val();
   	var towerNumber = $('#lstTowerNo').val();
   	var flatNumber = $('#txtFlatNumber').val();
   	
   	if (soId == "0") {
   		soId = null;
   	}
   	if (customerId == "0") {
   		customerId = null;
   	}
   	if (towerNumber == "0") {
   		towerNumber = null;
   	}
   	if (flatNumber == "") {
   		flatNumber = null;
   	}
   	
   	
   	$('#btnPrint').hide();
   	$('#pymntGridBody').html('');
   	$.ajax({
   		//url: '/EZOfficeInventory/getSOPymntRecvdData',
   		url: 'https://salepurchasecompany.co.in/getSOPymntRecvdData',
        	type: 'POST',
   		contentType: 'application/json',	
   		   data: JSON.stringify(
   		   	{
   		   		"salesOrderId":soId,
   		   		"customerId":customerId,
   		   		"towerNo":towerNumber,
   		   		"flatNo":flatNumber,
   		   		"fromDate":$('#txtFromDate').val(),
   		   		 "toDate":$('#txtToDate').val()
	   		   	}),
   		   	dataType: 'json',
   		   	success: function (data) {
   		   		console.log(data);
   		   		if (data.length > 0) {
   		   			$('#pymntGridTab').show();
   		   			$('#pymntGridBody').show();
   		   			$('#btnPrint').show();
   		   			for(var i=0;i<data.length;i++){
    		        if (data[i].totalBillAmount > 0) {
  		        		totalBill = runningBalance + data[i].totalBillAmount;
    		        }
      		        	runningBalance = totalBill - data[i].recvdBillAmount;
   		   				$('#pymntGridBody').append(
		                        '<tr>'+
		                        '<td>'+tabRowLen+'</td>'+
			                     '<td><a href="#" onclick="vwSOReport('+data[i].saleId+');">'+data[i].salesOrderNumber+'</a></td>'+
			                     '<td>'+data[i].salesDate+'</td>'+ 
			                     '<td>'+data[i].towerNo+'/'+ data[i].flatNo +'</td>'+
			                      '<td>'+data[i].customerName+'</td>'+
			                      '<td>'+formatNumber(data[i].totalBillAmount)+'</td>'+
			                      '<td>'+(data[i].recvdBillAmount)+'</td>'+
			                      '<td>'+formatNumber(runningBalance)+'</td>'+
			                      '</tr>'); 
      		        		tabRowLen++;
      		        		totalBill = runningBalance;
   		        	}    		   			
   		   		} else {
   		   			alert("No Payment Data Found");
   		   		}

   		   	},
   		    error: function (error) {
   		        console.log(`Error ${error}`);
   		    }
   	});    	
   }        	
   
   
   $('#lstCustomerNm').on('change', function() {
	   $('#txtCustomerMobile').val('');	
	   let filter = 
			customerDataArray.filter(d => 
			    d.customerId == $('#lstCustomerNm').val());
		if (filter.length > 0) {
			var data = JSON.stringify(filter);
			var stringify = JSON.parse(data);
			$('#txtCustomerMobile').val(stringify[0]["mobileNo"]);
			fillSoNumber();
		}
   });	    
   
   function findCustomerData() {
   	
   	var towerNumber = $('#lstTowerNo').val();
   	var flatNumber = $('#txtFlatNumber').val();
   	$('#txtCustomerMobile').val('');
	$('#lstSoNo').html('');
	$('#lstSoNo').append('Choose Sales Order');   	
	$('#pymntGridBody').html('');
   	if ((flatNumber != "") && (towerNumber != "0")) {
   		$('#lstCustomerNm').html('');
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
/* 	    		   		if(data.length!=0) {
   	    		   		$('#txtCustomerNm').val(data.customerName);
   	    		   		$('#txtCustomerMobile').val(data.cutomerMobileNo);
   	    		   		customerId = data.customerId;
	    		   		} else {
   	    		   		$('#txtCustomerNm').val('');
   	    		   		$('#txtCustomerMobile').val('');
	    		   		} */
	    		   		if (data.length > 1) {
	    		   			$('#lstCustomerNm').append('<option value=0>Choose Customer</option>');
	    		   			for(var i=0;i<data.length;i++){
	    		   				$('#lstCustomerNm').append('<option value='+data[i].customerId+'>'+data[i].customerName+'</option>');
	    		   				var customerData={};
	    		   				customerData["customerId"] = data[i].customerId;
	    		   				customerData["mobileNo"] = data[i].cutomerMobileNo;
	    		   			customerDataArray.push(customerData);
	    		   			}
	    		   			//alert("Please choose the customer");
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
	    		   			$('#txtCustomerMobile').val(data[0].cutomerMobileNo);
	    		   			fillSoNumber();
	    		   		}	    		   		
	    		   	},
	    		    error: function (error) {
	    		   		$('#lstCustomerNm').val('');
	    		   		$('#txtCustomerMobile').val('');
	    		    }
	    	});          		
   	} else {
	   	$('#lstCustomerNm').val('');
		$('#txtCustomerMobile').val('');   		
   		if (towerNumber == "0") {
   			alert('Select Tower Number First');
   			$('#txtFlatNumber').val('');
   			$('#lstTowerNo').focus();
   			return false;
   		}
   	}
   }   
	function refreshData() {
		//location.href = "/EZOfficeInventory/SaleOrderStkRpt";
		location.href = "https://salepurchasecompany.co.in/SaleOrderStkRpt";
	} 
	function exportToExcel() {
		tableToExcel("pymntGridTab","Payment_Received_SOA","ReceivedPaymentSOA-" + $('#lstCustomerNm').find(":selected").text());
	}
	function tableToExcel(table, sheetName, fileName) {
		//fileName = fileName;

		var uri = 'data:application/vnd.ms-excel;base64,',
		    templateData = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--><meta http-equiv="content-type" content="text/plain; charset=UTF-8"/></head><body><table>{table}</table></body></html>',
		    base64Conversion = function (s) { return window.btoa(unescape(encodeURIComponent(s))) },
		    formatExcelData = function (s, c) { return s.replace(/{(\w+)}/g, function (m, p) { return c[p]; }) }

		$("tbody > tr[data-level='0']").show();

		if (!table.nodeType)
		    table = document.getElementById(table)

		var ctx = { worksheet: sheetName || 'Worksheet', table: table.innerHTML }

		var element = document.createElement('a');
		element.setAttribute('href', 'data:application/vnd.ms-excel;base64,' + base64Conversion(formatExcelData(templateData, ctx)));
		element.setAttribute('download', fileName);
		element.style.display = 'none';
		document.body.appendChild(element);
		element.click();
		document.body.removeChild(element);
	}	
	
	function printCurrentReport() {
	   if ($('#chkRptDtl').is(':checked')) {
		   printOut();
	   }
	   if ($('#chkRptSmry').is(':checked')) {
		   printStmtRpt();
	   }			
	}
	
 	function printOut() {
		var towerNo = $('#lstTowerNo').val();
		var txtFlatNumber =  $('#txtFlatNumber').val();
		var customerId = $('#lstCustomerNm').val();
		var customerMobileNo = $('#txtCustomerMobile').val();
		var salesOrderId = $('#lstSoNo').val();
		var customerName = $("#lstCustomerNm option:selected").text();
		var txtFromDate = $('#txtFromDate').val();
		var txtToDate = $('#txtToDate').val();
 		
 		srchData = {
		   		"towerNo":towerNo,
		   		"flatNo":txtFlatNumber,
			    "customerId":customerId,
			    "customerMobileNo":customerMobileNo,
			    "salesOrderId":salesOrderId,
			    "customerName":customerName,
			    "dtFrom":txtFromDate,
			    "dtTo":txtToDate
			};
			//var poLink = "/EZOfficeInventory/reportPymntSOA?"+ $.param(srchData);
			var poLink = "https://salepurchasecompany.co.in/reportPymntSOA?"+ $.param(srchData);
			popitup(poLink);		
	} 
 	function printStmtRpt() {
		var towerNo = $("#lstTowerNo option:selected").text();
		var flatNo = $('#txtFlatNumber').val();
		var txtFromDate = $('#txtFromDate').val();
		var txtToDate = $('#txtToDate').val();
		var customerId = $('#lstCustomerNm').val();
		var towerId = $('#lstTowerNo').val();
 		srchData = {
		   		"towerNo":towerNo,
		   		"flatNo":flatNo,
			    "dtFrom":txtFromDate,
			    "dtTo":txtToDate,
			    "customerId":customerId,
			    "towerId":towerId
			}; 	
		//var poLink = "/EZOfficeInventory/reportPymntSOAStmt?"+ $.param(srchData);
		var poLink = "https://salepurchasecompany.co.in/reportPymntSOAStmt?"+ $.param(srchData);
		popitup(poLink);		
 	}
	function popitup(url) {
		newwindow=window.open(url,'name','height=600,width=1200');
		if (window.focus) {newwindow.focus()}
		return false;
	} 	 	
  	function formatNumber(n) {
    	  return n.toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,");
    }  	
    	
  	function convertStringToFloat(str)
  	{
  		cleanNum = str.replace(",", "");
  		return parseFloat(cleanNum);		
  	}	
	function vwSOReport(salesOrderId) {
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
	$('#chkRptDtl').change(function() {
		$('#pymntGridBody').html('');
		$('#pymntGridBody').hide();
		if($(this).is(":checked")) {
			$('#chkRptSmry').prop('checked', false);
			$('#lstSoNo').attr('disabled', false);	
			switchGrid("Dtl");
		} else {
			$('#chkRptSmry').prop('checked', true);
			$('#lstSoNo').attr('disabled', true);	
			switchGrid("Summary");
		}
	});
	$('#chkRptSmry').change(function() {
		$('#pymntGridBody').html('');
		$('#pymntGridBody').hide();
		if($(this).is(":checked")) {
			$('#chkRptDtl').prop('checked', false);
			$('#lstSoNo').attr('disabled', true);	
			$('#btnPrint').hide();
			switchGrid("Summary");
		} else {
			$('#chkRptDtl').prop('checked', true);
			$('#lstSoNo').attr('disabled', false);	
			$('#btnPrint').hide();
			switchGrid("Dtl");
		}
	});	
	function showCustomerSearch() {
		$('#pymntGridBody').html('');
		$('#userDataModel').modal('show');
	}
   function searchCustomerDat() {
	   $('#tbodyLoan').html('');
	   $('#txtFlatNumber').val('');
	   if ($('#txtSrchData').val() == ""){
		   alert("Enter Valid Input");
		   return false;
	   }
	   $.ajax({
		 //url: '/EZOfficeInventory/searchCustomerData',
		 url: 'https://salepurchasecompany.co.in/searchCustomerData',
		   type: 'POST',
		   contentType: 'application/json',
		   data: JSON.stringify(
   		   	{
   		   		"searchVarData":$('#txtSrchData').val()
   		   	}),	
   		 	dataType: 'json',
   		 	success: function (data) {
   		 	console.log(data);
   		 	$('#optionData').show();
   		 	if (data.length > 0) {
	   		 	for(var i=0;i<data.length;i++){
		   		 	$('#tbodyLoan').append(
		   		 		'<tr>'+
		   		 		'<td hidden>'+data[i].customerId+'</td>'+
		   		 		'<td>'+data[i].customerName+'</td>'+
		   		 		'<td>'+data[i].mobileNuber+'</td>'+
		   		 		'<td>'+data[i].towerNuber+'</td>'+
		   		 		'<td>'+data[i].flatNumber+'</td>'+
		   		 	'<td><label class="radio-inline"> <input type="radio" class="radioUser" name="selectUser" value='+data[i].customerId+'>Select</label></td></tr>'
		   		 	);
	   				var customerData={};
	   				customerData["customerId"] = data[i].customerId;
	   				customerData["mobileNo"] = data[i].mobileNuber;
		   			customerDataArray.push(customerData);
	   		 	}
   		 	} else {
   		 		alert("No details are available on given input");
   		 		$('#txtSrchData').focus();
   		 		
   		 	}
   		 	},
		    error: function (error) {
		    	alert("error:"+error);
		    }
	   });
   		
   } 	
   $("#userTable").on('click','.radioUser',function(){
	   var currentRow=$(this).closest("tr"); 
	    $('#lstCustomerNm').html('');		
	    $('#pymntGridBody').html('');
	    $("#lstTowerNo").prop('selectedIndex',0);
	    $('#lstCustomerNm').append('<option value=0>Choose Customer</option>');
	    $('#lstCustomerNm').append('<option value='+currentRow.find("td:eq(0)").text()+'>'+currentRow.find("td:eq(1)").text()+'</option>');
 		$('#txtCustomerMobile').val(currentRow.find("td:eq(2)").text());	
        $('#userDataModel').modal('hide');
        $('#tbodyLoan').html('');
        $("#lstCustomerNm").prop('selectedIndex',1);
  });
  function switchGrid(type) {
	  $('#pymntGridHead').html('');
	  if (type =="Dtl") {
		  $('#pymntGridHead').append(
				  '<tr><th scope="col">Srl.</th><th scope="col">Bill Number</th><th scope="col">Bill Date</th><th scope="col">Tower/Flat No</th><th scope="col">Customer Name</th><th scope="col">Bill Amount</th><th scope="col">Received Amount</th><th scope="col">Balance Amount</th></tr>');		  
	  } else if (type == "Summary") {
		  $('#pymntGridHead').append(
		  '<tr><th scope="col">Srl.</th><th scope="col">Customer Name</th><th scope="col">Tower/Flat No</th><th scope="col">Bill Amount</th><th scope="col">Received Amount</th><th scope="col">Balance Amount</th></tr>');		  
	  }
  }

  </script>
</html>