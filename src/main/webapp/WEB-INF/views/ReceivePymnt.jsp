<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Receive SO Payment</title>
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
    <style type="text/css">
    	.input-disabled{background-color:#EBEBE4;border:1px solid #ABADB3;padding:2px 1px;}
    </style>
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
                            <li><a href="https://salepurchasecompany.co.in/salesOrder">Sales Order</a></li>
                            <li><a href="https://salepurchasecompany.co.in/makePayment">Make Payment</a></li>
                            <li class="active"><a href="https://salepurchasecompany.co.in/receicePymnt">Received Payment</a></li>
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
                    <li class="breadcrumb-item active">Received Payment</li>
                </ul>
            </div>
        </div>
		<section>
		<div class="container-fluid">
			<div class="card">
				<div class="card-body">
					<div class="container">
						<div class="form-group row">
							<label class="col-sm-4 col-md-2 col-form-label">Customer Name</label>
	                             <div class="col-sm-6 col-md-8 pl0">
	                                 <select class="custom-select" id="lstCustNo">
	                                     <option value="0">Choose Any Customer...</option>
	                                   </select>   
	                             </div>							
						</div>
						<div class="form-group row">
							<label class="col-sm-4 col-md-2 col-form-label">SO No</label>
	                             <div class="col-sm-6 col-md-8 pl0">
	                                 <select class="custom-select" id="lstSoNo">
	                                     <option value="0">Choose SO No...</option>
	                                   </select>   
	                             </div>							
						</div>		
						<div class="form-group row">
							<label class="col-sm-4 col-md-2 col-form-label">Received Date</label>
                             <div class="col-sm-6 col-md-3 pl0 cal-position">
                                 <input type="text" id="txtPymntDate" class="form-control input-group date">
                                 <i class="fa fa-calendar"></i>
                             </div>	
                             <label class="col-sm-4 col-md-1 col-form-label pl15">Remarks</label>
                             <div class="col-sm-6 col-md-3 pl0">
                                 <input type="text" id="txtRemarks" class="form-control" placeholder="Remarks">
                             </div>                             						
						</div>						
					</div>
					<div class="col-md-12 commen-space">
						<div id="billDtl" class="table-responsive style-8">
						  <table class="table table-bordered table-hover" id="billtable">
						  	<thead id="billMainHead" class="thead-dark">
						  		<tr>
						  		<th scope="col">Total Bill Amount</th>
						  		<th scope="col">Prev. Received Amount</th>
						  		<th scope="col">Advance Amount</th>
						  		<th scope="col">Received Amount</th>
						  		<th scope="col">Balance Amount</th>
						  		</tr>
						  	</thead>
						  	<tbody>
						  	<tr> 
						  		<td><input type="text" id="txtTotalBillAmt"></td>
						  		<td><input type="text" id="txtPrevBillAmt"></td>
						  		<td><input type="text" id="txtAdvBillAmt"></td>
								<td style="text-align: left;">
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text"><i class="fa fa-rupee-sign"></i></span>
											<input type="text" class="form-control" onkeypress="return allowNumericWithDecimal(event)" 
											id="txtRecvdBillAmt" placeholder="Enter Amount" style="width: 100%;">
										</div>
									</div>
								</td>						  		
						  		<!-- <td><input type="text" id="txtRecvdBillAmt" onkeypress="return allowNumericWithDecimal(event)" placeholder="Enter Amount"></td> -->
						  		<td><input type="text" id="txtBalBillAmt"></td>
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
                          <Button ID="btnSave" onclick="saveData()" class="common-btn">Save</Button>
                          <Button ID="btnRefresh" class="common-btn" onclick="exitToHomePage()">Refresh</Button>
                        </div>
                   </div>
					<div class="col-md-12 commen-space">
						<div id="billDtl" class="table-responsive style-8">
							<table class="table table-bordered table-hover" id="pymntGridTab">
								<thead id="pymntGridHead" class="thead-dark">
						  		<tr>
							  		<th scope="col" hidden="true">pymntId</th>
							  		<th scope="col">Srl.</th>
							  		<th scope="col">Bill Number</th>
							  		<th scope="col">Tower/Flat No</th>
							  		<th scope="col">Party Name</th>
							  		<th scope="col">Bill Amount</th>
							  		<th scope="col">Received Amount</th>
							  		<th scope="col">Balance Amount</th>
							  		<th scope="col">Action</th>
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
	</div>
    <!--Modal Popup Area-->
	<div class="modal fade" tabindex="-1" role="dialog" id="userDataModel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title"><label id="lblModalTitle"></label></h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
				</div>	
			<div class="modal-body">
				<div class="col-md-12 commen-space">
					<div id="report" class="table-responsive style-8">
						<table class="table table-bordered table-hover no-footer" id="pymntHistTab">
							<thead id="pymntHistHead" class="thead-light">
								<tr>
								<th hidden="true">pymntId</th>
								<th>Srl</th>
								<th>Payment Date</th>
								<th>Remarks</th>
								<th>Paid Amount</th> 
							</tr>
							</thead>
							<tbody id="pymntHistData"></tbody>
						</table>
					</div>
				</div>
			</div>				
			<div class="modal-footer">
				<button type="button" class="common-btn" data-dismiss="modal">Close</button>
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
   	var advanceAmount = 0;
    
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
    jQuery(document).ready(function($){
    	var viewBtn;
    	var editBtn;
    	var table ;
    	$('#report').hide();
    	$('#txtTotalBillAmt').attr('readonly', true);
    	$('#txtTotalBillAmt').addClass('input-disabled');
    	$('#txtPrevBillAmt').attr('readonly', true);
    	$('#txtPrevBillAmt').addClass('input-disabled');  
    	$('#txtAdvBillAmt').attr('readonly', true);
    	$('#txtAdvBillAmt').addClass('input-disabled');     
    	$('#txtBalBillAmt').attr('readonly', true);
    	$('#txtBalBillAmt').addClass('input-disabled');     
    	$('#pymntGridTab').hide();
    	$('#txtPymntDate').attr('readonly', true);
    	$('#txtPymntDate').addClass('input-disabled');
    	
    	
    	loadCustomerData();
    	setCurrentDate();
    	paymentSOArrayObj=[];
    }); 
	function showPymntHistModal(soId) {
		$('#lblModalTitle').html('');
		$('#pymntHistData').html('');
		getPaymentDataAgSO(soId);
	}     
    function setCurrentDate() {
    	var today = new Date();
    	var dd = String(today.getDate()).padStart(2, '0');
    	//var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
    	var month = today.toLocaleString('default', { month: 'short' });

    	var yyyy = today.getFullYear().toString().substr(-2);

    	today = dd + '-' + month + '-' + yyyy;
    		
    	$("#txtPymntDate").val(today);
   	}		    
    function isNumber(evt) {
		console.log("number");
	    evt = (evt) ? evt : window.event;
	    var charCode = (evt.which) ? evt.which : evt.keyCode;
	    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
	        return false;
	    }
	    return true;
	}
    function loadCustomerData() {
    	$.ajax({
    		//url: '/EZOfficeInventory/fillCustomerByFrmSO',
    		url: 'https://salepurchasecompany.co.in/fillCustomerByFrmSO',
         	type: 'POST',
    		contentType: 'application/json',	
    		   data: JSON.stringify(
    		   	{
    		   		"searchVarData":""
	   		   	}),
    		   	dataType: 'json',
    		   	success: function (data) {
    		   		console.log(data);
    		   		if (data.length > 0) {
       		        	for(var i=0;i<data.length;i++){
    		        		$('#lstCustNo').append('<option value='+data[i].customerId+'>'+data[i].customerName+'<->'+data[i].mobileNuber+'<->'+data[i].towerDesc+ '/' + data[i].flatNumber +'</option>');
    		        	}    		   			
    		   		} else {
    		   			alert("No Customer Data");
    		   		}

    		   	},
    		    error: function (error) {
    		        console.log(`Error ${error}`);
    		    }
    	});    	
    }    
    $('#lstCustNo').on('change', function() {
    	var custNo = $('#lstCustNo').val();
    	refreshControl();
    	$('#lstSoNo').html('');
    	$('#lstSoNo').append('<option value="0">Choose SO No...</option>');
    	$('#reportDtltdata').html('');
    	$('#report').hide();    	
    	if (custNo != 0) {
    		//loadPaymentHistory();
    		fillSoNumber();
    		$('#lstSoNo').focus();
    	}
    });  
    $('#lstSoNo').on('change', function() {
    	refreshControl();
    	if ($('#lstSoNo').val() != "0") {
    		fillPymntDetailForSO($('#lstSoNo').val());
    		$('#txtRecvdBillAmt').focus();
    		getSOPymntRecvdData($('#lstSoNo').val(),null);
    	}
    });
    function fillSoNumber() {
    	$.ajax({
    		//url: '/EZOfficeInventory/fillSOInRecvdPymntPG',
    		url: 'https://salepurchasecompany.co.in/fillSOInRecvdPymntPG',
         	type: 'POST',
    		contentType: 'application/json',	
    		   data: JSON.stringify(
    		   	{
    		   		"searchVarData":$('#lstCustNo').val()
	   		   	}),
    		   	dataType: 'json',
    		   	success: function (data) {
    		   		console.log(data);
    		   		if (data.length > 0) {
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
    function validate() {
    	var custNo = $('#lstCustNo').val();
    	var soNo = $('#lstSoNo').val();
    	var txtPymntDate = $('#txtPymntDate').val();
    	var txtPymntAmount = $('#txtRecvdBillAmt').val(); 
    	if (custNo == "0" || custNo == "Choose SO No...") {
    		alert("Customer Cannot be left blank");
    		$('#lstCustNo').focus();
    		return false;
    	}
    	if (soNo == "0") {
    		alert("Sales Order Cannot be left blank");
    		$('#lstSoNo').focus();
    		return false;
    	}    	
    	if (txtPymntDate == "") {
    		alert("Payment Date Cannot be left blank");
    		$('#txtPymntDate').focus();
    		return false;
    	}     
    	if (txtPymntAmount == "") {
    		alert("Payment Amount Cannot be left blank");
    		$('#txtRecvdBillAmt').focus();
    		return false;
    	}  
		let filter = 
			paymentSOArrayObj.filter(d => 
			    d.soId == soNo 
			) 
    	if (filter.length > 0) {
			var data = JSON.stringify(filter);
	    	var stringify = JSON.parse(data);
	    	for (var k = 0; k < stringify.length; k++) {
	    		if (txtPymntDate < stringify[k]['pymntDate']) {
	        		alert("Payment Date ["+txtPymntDate+"] Cannot be Less Than \n Last Payment Date [" + stringify[k]['pymntDate'] + "]");
	        		$('#txtPymntDate').focus();
	        		return false;	    			
	    		}	    		
/* 	    		if (txtPymntAmount > stringify[k]['balancePymnt']) {
	        		alert("Payment Amount ["+txtPymntAmount+"] Cannot be Greator Than \n SO Balance [" + stringify[k]['balancePymnt'] + "]");
	        		$('#txtPymntAmt').focus();
	        		return false;	    			
	    		} */
	    	}
    	}    	
    	return true;    	
    }
    function saveData() {
    	if (validate()==true) {
    		if (confirm('Are you sure you want to save?')) {
    	    	var custNo = $('#lstCustNo').val();
    	    	var soNo = $('#lstSoNo').val();
    	    	var txtPymntDate = $('#txtPymntDate').val();
    	    	var txtPymntAmount = $('#txtRecvdBillAmt').val(); 
    			var data= {
   	   			    "customerId":custNo,
   	   			    "soID":soNo,
   	   			    "pymntDate":txtPymntDate,
   	   			    "pymntAmount":txtPymntAmount,
   	   			    "createdBy":1,
   	   			    "sMode":"${sMode}",
   	   				"pymntRemarks":$('#txtRemarks').val()
       			} 
    			console.log(data);
    			var xhr = new XMLHttpRequest();
 				//xhr.open("POST", "/EZOfficeInventory/iInsertRecevdPaymentData", true);
 				xhr.open("POST", "https://salepurchasecompany.co.in/iInsertRecevdPaymentData", true);
 				xhr.setRequestHeader("Content-Type", "application/json");
 				xhr.onreadystatechange = function () {
 					if (xhr.readyState === 4 && xhr.status === 200) {
 						var responseData = JSON.parse(xhr.responseText);
 						console.log(responseData);
 						if (responseData.errorFlag == false) {
 							$('#lstCustNo').attr('disabled', true);
 							$('#lstSoNo').attr('disabled', true);
 							$('#txtPymntDate').attr('disabled', true);
 							$('#txtRecvdBillAmt').attr('disabled', true);
 							$('#btnSave').attr('disabled', true);
 							$('#txtRemarks').attr('disabled', true);
   				            $("#msgId").addClass("alert alert-success");
 				    	    $("#alertMsg").append(responseData.strMessage);   
 				    	   	getSOPymntRecvdData($('#lstSoNo').val(),$('#lstCustNo').val());
 						} else {
   				           $("#msgId").addClass("alert alert-success");
   				    	   $("#alertMsg").append(responseData.strMessage); 	 							
   						}
 					}
 				};
 				xhr.send(JSON.stringify(data));  
    		}
    	}
    }
    function getPaymentDataAgSO(soId) {
    	var tabRowLen = 1; 
    	$.ajax({
    		//url: '/EZOfficeInventory/getPymntRecvdAgSO',
    		url: 'https://salepurchasecompany.co.in/getPymntRecvdAgSO',
         	type: 'POST',
    		contentType: 'application/json',	
    		   data: JSON.stringify(
    		   	{
    		   		"searchVarData":soId
	   		   	}),
    		   	dataType: 'json',
    		   	success: function (data) {
    		   		console.log(data);
    		   		if (data.length > 0) {
       		        	$('#lblModalTitle').html("View Payment History:" + data[0].soNo);
       		        	$('#userDataModel').modal('show');
       		        	for(var i=0;i<data.length;i++){
       		        		$('#pymntHistData').append(
		                        '<tr>'+
		                        '<td hidden>'+data[i].pymntId+'</td>'+
		                        '<td>'+tabRowLen+'</td>'+
			                     '<td>'+data[i].pymntDate+'</td>'+ 
			                      '<td>'+data[i].pymntRemarks+'</td>'+
			                      '<td>'+data[i].pymntAmount+'</td>'+
			                      '</tr>'); 
       		        		tabRowLen++;
    		        	}    		   			
    		   		} else {
    		   			alert("No Payment Data Found");
    		   			$('#userDataModel').modal('hide');
    		   		}

    		   	},
    		    error: function (error) {
    		        console.log(`Error ${error}`);
    		    }
    	});    	
    }        
    function loadPaymentHistory() {
    	var tabRowLen = 0; 
    	$.ajax({
    		//url: '/EZOfficeInventory/getAllPymntRecvdData',
    		url: 'https://salepurchasecompany.co.in/getAllPymntRecvdData',
         	type: 'POST',
    		contentType: 'application/json',	
    		   data: JSON.stringify(
    		   	{
    		   		"searchVarData":$('#lstCustNo').val()
	   		   	}),
    		   	dataType: 'json',
    		   	success: function (data) {
    		   		console.log(data);
    		   		if (data.length > 0) {
    		   			var obj={};
    		   			var soAmount = "";
    		   			var unqSoCount = 0;
    		   			var totalSoAmount = 0;
    		   			var totalAmountPaid = 0;
    		   			var arr = new Array();
    		   			for(var i=0;i<data.length;i++){
       		        		tabRowLen = tabRowLen + 1; 
       		        		var balance = 0;
       		        		var obj={};
       		        		balance = roundToTwo(data[i].soAmount - data[i].pymntAmount);
       		        		$('#report').show();
       		        		$('#reportDtltdata').append(
			                        '<tr>'+
			                        '<td hidden>'+data[i].soID+'</td>'+
			                        '<td hidden>'+data[i].customerId+'</td>'+
			                        '<td>'+tabRowLen+'</td>'+
			                        '<td><a href="#" onclick="showPymntHistModal('+data[i].soID+');">'+data[i].soNo+'</a></td>'+
				                      /* '<td>'+data[i].soNo+'</td>'+ */
				                      '<td>'+data[i].pymntDate+'</td>'+
				                      '<td>'+roundToTwo(data[i].soAmount)+'</td>'+
				                      '<td>'+roundToTwo(data[i].pymntAmount)+'</td>'+
				                      '<td>'+ balance +'</td>'+
				                      '</tr>');
       		        		totalAmountPaid = roundToTwo(totalAmountPaid +data[i].pymntAmount); 
       		        		obj["soId"]=data[i].soID;
       		        		obj["balancePymnt"]=balance;
       		        		obj["pymntDate"]=data[i].pymntDate; 
       		        		paymentSOArrayObj.push(obj);
       		        		if ($.inArray(data[i].soNo, arr) != -1) {

       		        		} else {
       		        			totalSoAmount = roundToTwo(totalSoAmount +data[i].soAmount); 
       		        			arr[unqSoCount] =data[i].soNo; 
       		        			unqSoCount++;       		        			
       		        		}
    		        	}
       		        	$('#lblTotal').html('');
       		        	$('#lblTotal').html(roundToTwo(totalSoAmount));
       		        	$('#lblTotalAmtPaid').html('');
       		        	$('#lblTotalAmtPaid').html(roundToTwo(totalAmountPaid));
       		        	$('#lblBalance').html('');
       		        	$('#lblBalance').html(roundToTwo(totalSoAmount - totalAmountPaid));       		        	
       		        	
    		   		} else {
    		   			$('#report').hide();
    		   		}

    		   	},
    		    error: function (error) {
    		        console.log(`Error ${error}`);
    		    }
    	});    	
    }
	function exitToHomePage() {
		//location.href = "/EZOfficeInventory/receicePymnt";
		location.href = "https://salepurchasecompany.co.in/receicePymnt";
	}       
	function roundToTwo(num) {
	    return +(Math.round(num + "e+2")  + "e-2");
	}		
	function allowNumericWithDecimal(event) {
	    if (((event.which != 46 || (event.which == 46 && $(this).val() == '')) ||
	            $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
	        event.preventDefault();
	    }		
	}
    function fillPymntDetailForSO(soId) {
    	$.ajax({
    		//url: '/EZOfficeInventory/getSaleOrderPymntDtls',
    		url: 'https://salepurchasecompany.co.in/getSaleOrderPymntDtls',
         	type: 'POST',
    		contentType: 'application/json',	
    		   data: JSON.stringify(
    		   	{
    		   		"searchVarData":soId
	   		   	}),
    		   	dataType: 'json',
    		   	success: function (data) {
    		   		console.log(data);
    		   		if (data != null) {
    		   			$('#txtTotalBillAmt').val(formatNumber(data.totalBillAmount));
  		   				$('#txtPrevBillAmt').val(formatNumber(data.recvdBillAmount));
  		   				$('#txtAdvBillAmt').val(formatNumber(data.advanceBillAmount));
  		   				$('#txtBalBillAmt').val(formatNumber(parseFloat(data.totalBillAmount) - (parseFloat(data.recvdBillAmount))));
  		   				advanceAmount = data.advanceBillAmount;
    		   		} 
	   		   	},
    		    error: function (error) {
    		        console.log(`Error ${error}`);
    		    }
    	});    	
    }        	
  	$("#billtable").on('keyup','#txtRecvdBillAmt',function(){
		var totalBillAmt = convertStringToFloat($(this).closest('tr').find('#txtTotalBillAmt').val());
		var prevRecvdAmt = convertStringToFloat($(this).closest('tr').find('#txtPrevBillAmt').val());
		var currentRecvdAmt = convertStringToFloat($(this).closest('tr').find('#txtRecvdBillAmt').val());
		
		if (parseFloat(currentRecvdAmt,10) > parseFloat(totalBillAmt)) {
			$(this).closest('tr').find('#txtAdvBillAmt').val(formatNumber(parseFloat(currentRecvdAmt - totalBillAmt)));
		} else {
			$(this).closest('tr').find('#txtAdvBillAmt').val(formatNumber(parseFloat(advanceAmount)));
		}
		
		if (currentRecvdAmt == "" || isNaN(currentRecvdAmt)) {
			currentRecvdAmt = 0;
		}
		
		var balanceAmt = formatNumber(parseFloat(totalBillAmt) - (parseFloat(prevRecvdAmt) + parseFloat(currentRecvdAmt)));
		$(this).closest('tr').find('#txtBalBillAmt').val(balanceAmt);

	});    

  	function formatNumber(n) {
  	  return n.toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,");
  	}  	
  	
	function convertStringToFloat(str)
	{
		cleanNum = str.replace(",", "");
		return parseFloat(cleanNum);		
	}
	
    function getSOPymntRecvdData(soId,partyId) {
    	var tabRowLen = 1; 
    	var totalBill = 0;
    	var runningBalance = 0;
    	$('#pymntGridBody').html('');
    	var today = new Date();
    	var dd = String(today.getDate()).padStart(2, '0');
    	//var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
    	var month = today.toLocaleString('default', { month: 'short' });

    	var yyyy = today.getFullYear().toString().substr(-2);

    	today = dd + '-' + month + '-' + yyyy;    	
    	
    	var startDate = "01-Jun-2024";
    	
    	$.ajax({
    		//url: '/EZOfficeInventory/getSOPymntRecvdData',
    		url: 'https://salepurchasecompany.co.in/getSOPymntRecvdData',
         	type: 'POST',
    		contentType: 'application/json',	
    		   data: JSON.stringify(
    		   	{
    		   		"salesOrderId":soId,
    		   		"customerId":partyId,
       		   		"towerNo":null,
       		   		"flatNo":null,
       		   		"fromDate":startDate,
      		   		 "toDate":today
	   		   	}),
    		   	dataType: 'json',
    		   	success: function (data) {
    		   		console.log(data);
    		   		if (data.length > 0) {
    		   			$('#pymntGridTab').show();
    		   			for(var i=0;i<data.length;i++){
       		        		if (data[i].totalBillAmount > 0) {
       		        			totalBill = data[i].totalBillAmount;
       		        		}
       		        		runningBalance = totalBill - data[i].recvdBillAmount;
    		   				$('#pymntGridBody').append(
		                        '<tr>'+
		                        '<td hidden>'+data[i].pymntId+'</td>'+
		                        '<td>'+tabRowLen+'</td>'+
			                     '<td>'+data[i].salesOrderNumber+'</td>'+ 
			                      '<td>'+data[i].towerNo+'/'+ data[i].flatNo +'</td>'+
			                      '<td>'+data[i].customerName+'</td>'+
			                      '<td>'+formatNumber(data[i].totalBillAmount)+'</td>'+
			                      /* '<td>'+formatNumber(data[i].recvdBillAmount)+'</td>'+ */
			                       '<td><input type="text" onkeypress="return allowNumericWithDecimal(event)"'+
			                       'id="txtRecvdHistBillAmt" value="'+ formatNumber(data[i].recvdBillAmount) +'"</td>'+
			                      '<td>'+formatNumber(runningBalance)+'</td>'+
			                      '<td><a onclick="onClickEdit(event)" id="hrEdit" href="#">Edit</a></td>'+
			                      '</tr>'); 
       		        		tabRowLen++;
       		        		totalBill = runningBalance;
    		        	} 
    		   			disableHistoryField();
    		   		} else {
    		   			alert("No Payment Data Found");
    		   		}

    		   	},
    		    error: function (error) {
    		        console.log(`Error ${error}`);
    		    }
    	});    	
    }        	
    function onClickEdit(event) {
    	var currentRow=$(event.target).parents('tr');
    	var lnkText = currentRow.find("td:eq(8)").text();
    	if (lnkText == "Edit") {
        	currentRow.find('#txtRecvdHistBillAmt').attr('readonly', false);
        	currentRow.find('#txtRecvdHistBillAmt').removeClass('input-disabled'); 
        	alert("Please Modified the Amount");
        	currentRow.find('#txtRecvdHistBillAmt').focus();  
        	currentRow.find('#hrEdit').html('Save');
    	} else if (lnkText == "Save") {
    		var recvdBillAmount = currentRow.find('#txtRecvdHistBillAmt').val();
    		saveHistoryData(recvdBillAmount,currentRow.find("td:eq(0)").text());
        	currentRow.find('#txtRecvdHistBillAmt').attr('readonly', true);
        	currentRow.find('#txtRecvdHistBillAmt').addClass('input-disabled'); 
        	currentRow.find('#hrEdit').html('Edit');
        	getSOPymntRecvdData($('#lstSoNo').val(),$('#lstCustNo').val());
        	fillPymntDetailForSO($('#lstSoNo').val());	
    	}
   	};
    function disableHistoryField() {
    	$("#pymntGridBody tr").each(function(){
    		var i = 0;
    		$(this).children("td").each(function(){
    			if (i == 6) {
        			$(this).closest('tr').find('#txtRecvdHistBillAmt').attr('readonly', true);
        			$(this).closest('tr').find('#txtRecvdHistBillAmt').addClass('input-disabled'); 
    			}
    			if (i == 7) {
        			var recvdBillAmount = convertStringToFloat($(this).closest('tr').find('#txtRecvdHistBillAmt').val());
        			if (recvdBillAmount > 1) {
        				$(this).closest('tr').find('#hrEdit').attr('hidden', false);
        			} else{
        				$(this).closest('tr').find('#hrEdit').attr('hidden', true);
        			}
    			}
    			i++;
    		});
    	});
    }
    
    function saveHistoryData(txtPymntAmount,pymntId,txtRecvdHistBillAmt) {
    	if (confirm('Are you sure you want to save?')) {
    		var custNo = $('#lstCustNo').val();
    		var soNo = $('#lstSoNo').val();
			var data= {
   	   			    "customerId":custNo,
   	   			    "soID":soNo,
   	   			    "pymntAmount":txtPymntAmount,
   	   			    "createdBy":1,
   	   			    "sMode":"${sMode}",
   	   				"pymntId":pymntId,
   	   				"pymntRemarks":$('#txtRemarks').val()
       			}     	
			console.log(data);
			var xhr = new XMLHttpRequest();
			//xhr.open("POST", "/EZOfficeInventory/iUpdateReceivedPayment", true);
			xhr.open("POST", "https://salepurchasecompany.co.in/iUpdateReceivedPayment", true);
			xhr.setRequestHeader("Content-Type", "application/json");
			xhr.onreadystatechange = function () {
				if (xhr.readyState === 4 && xhr.status === 200) {
					var responseData = JSON.parse(xhr.responseText);
					console.log(responseData);
					if (responseData.errorFlag == false) {
			    	    alert(responseData.strMessage);
					} else {
			           $("#msgId").addClass("alert alert-success");
 				       $("#alertMsg").append(responseData.strMessage); 	 							
					}
				}
			};
			xhr.send(JSON.stringify(data)); 
    	}
    }
    
    function refreshControl() {
    	$('#txtTotalBillAmt').val('0.00');
    	$('#txtPrevBillAmt').val('0.00');
    	$('#txtAdvBillAmt').val('0.00');
    	$('#txtRecvdBillAmt').val('0.00');
    	$('#txtBalBillAmt').val('0.00');
    	$('#pymntGridBody').html('');
    	$('#pymntGridTab').hide();
    }
    </script>
</html>