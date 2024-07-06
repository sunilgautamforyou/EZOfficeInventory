<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Customer Master</title>
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
                            <li class="active"><a href="https://salepurchasecompany.co.in/dashBoard">Customer Master</a></li>
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
                            <li><a href="https://salepurchasecompany.co.in/receicePymnt">Received Payment</a></li>
                            <li><a href="https://salepurchasecompany.co.in/mrn">Material Receipt</a></li>
                            <li><a href="https://salepurchasecompany.co.in/rfq">Quotation</a></li>
                        </ul>
                    </li> 
                   <li class="active"><a href="#reports" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-book"></i>Reports</a>
                  	<ul id="reports" class="collapse list-unstyled show">
                  	<li><a href="https://salepurchasecompany.co.in/stockReport">Stock Report</a></li>
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
                    <li class="breadcrumb-item active">Customer Master</li>
                </ul>
            </div>
        </div>
        <section>
            <div class="container-fluid">
                    <div class="card">
                        <div class="card-body">
                            <div class="container-form">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">Customer ID</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <input type="text" class="form-control" id="txtCustomerId" placeholder="Generating Customer ID...">
                                    </div>
                                  </div>
                                  <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">Customer Name</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <input type="text" class="form-control" id="txtCustomerNM" placeholder="Customer Name">
                                    </div>
                                  </div>
                                  <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">Tower No</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <select class="custom-select" id="lstTowerNo">
                                            <option value="0">Choose...</option>
                                          </select>   
                                    </div>
                                  </div>
                                  <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">Flat No.</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <input type="text" class="form-control" onblur="validateFlatNo()" onkeypress="return isNumber(event)" id="txtflatNo" placeholder="Flat No.">
                                    </div>
                                  </div>
                                  <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">Mobile No.</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <input type="text" class="form-control" onkeypress="return isNumber(event)" id="txtCustMobile" placeholder="Mobile No.">
                                    </div>
                                  </div>
                                  <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">Remarks</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <textarea type="text" class="form-control" id="txtRemarks"  placeholder="Remarks Here" rows="3"></textarea>
                                    </div>
                                  </div>
					               <div id="msgId">
						          	<h5 id="alertMsg"></h5>
						          	</div>                                   
                                    <div class="col-sm-6 text-center btn-spaceing">
                                        <div class=" w3-bar">
                                            <Button ID="btnSave" onclick="saveRecord()" class="common-btn">Save</Button>
                                            <Button ID="btnRefresh" onclick="refresh()" class="common-btn">Refresh</Button>
                                            <Button ID="btnClose" onclick="exitToHomePage()" class="common-btn gray-btn">Exit</Button>
    
                                        </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                <!-- Page Header-->
       </div>
       </section>
        <footer class="main-footer">
           <p>Copyright © 2024-2025, Designed & Developed by ABC</p>
        </footer>
    </div>
    <!-- JavaScript files-->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/dataTables.bootstrap4.min.js"></script>
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- Main File-->
    <script src="js/custom.js"></script>
</body>
<script type="text/javascript">
$(document).ready(function () {
	$('#txtCustomerId').attr('disabled', true);
	if ("${sMode}" == "new") {
		fillTowerData("0");
	}
	if ("${sMode}" == "edit" || "${sMode}" == "view") {
		$('#txtCustomerNM').val("${customerData.customerName}");
		$('#txtflatNo').val("${customerData.flatNumber}");
		$('#txtCustMobile').val("${customerData.mobileNuber}");
		$('#txtRemarks').val("${customerData.remarks}");
		$('#txtCustomerId').val("Record Number:" + "${customerData.getCustomerId()}");
 		var lstTowerNo = "${customerData.getTowerNuber()}"+'<->'+"${customerData.getTowerDesc()}"; 
    	$('#lstTowerNo').html('');
    	$('#lstTowerNo').append('<option value='+"${customerData.getTowerId()}"+'>'+lstTowerNo+'</option>');
    	if ("${sMode}" == "edit") {
    		fillTowerData("${customerData.getTowerId()}");
    	}    	
		$('#txtCustomerNM').attr('disabled', true);
        if ("${sMode}" == "view") {
        	$('#txtRemarks').attr('disabled', true);
        	$('#btnSave').hide();
        	$('#btnRefresh').hide();
    		$('#lstTowerNo').attr('disabled', true);
    		$('#txtflatNo').attr('disabled', true);      
    		$('#txtCustMobile').attr('disabled', true);    		
        }
	}
	
});
$("#txtCustomerNM").on('keypress',function(){   
    if($(this).val().length>19){
        alert("Customer Name Allowed for 20 Digit Only");
        $("#txtCustomerNM").val('');
        return false;
       }
});	
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
		        for(var i=0;i<data.length;i++){
		        	$('#lstTowerNo').append('<option value='+data[i].towerId+'>'+data[i].towerNumber+'<->'+data[i].towerDescription+'</option>');
		        }
		   	},
		    error: function (error) {
		        console.log(`Error ${error}`);
		    }
	});	
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
function validate() {
	var customerName = $('#txtCustomerNM').val();
	var towerNo = $('#lstTowerNo').val();
	var flatNo = $('#txtflatNo').val();
	var customerMobile = $('#txtCustMobile').val();
	if (customerName == "") {
		alert("Customer Name Cannot left blank");
		$('#txtCustomerNM').focus();
		return false;			
	}
	if (towerNo == "Choose...") {
		alert("Tower No Cannot left blank");
		$('#lstTowerNo').focus();
		return false;			
	}	
	if (flatNo == "") {
		alert("Flat No Cannot left blank");
		$('#txtflatNo').focus();
		return false;			
	}
	if (customerMobile == "") {
		alert("Mobile No Cannot left blank");
		$('#txtCustMobile').focus();
		return false;			
	}	
	return true;
}

function saveRecord() {
	if (validate() == true) {
		if (confirm('Are you sure you want to save?')) {
			var customerName = $('#txtCustomerNM').val();
			var towerNo = $('#lstTowerNo').val();
			var flatNo = $('#txtflatNo').val();
			var customerMobile = $('#txtCustMobile').val();
			var txtRemarks = $('#txtRemarks').val().replace(/(\r\n|\n|\r)/gm, "");
			var customerId;
				if ("${sMode}" == "edit") {
					customerId = "${customerData.getCustomerId()}";
				} else {
					customerId = 0;
				}				
			var data= {
					"sMode":"${sMode}",
					"customerId":customerId,
					"customerName":customerName,
					"towerNuber":towerNo,
					"flatNumber":flatNo,
					"mobileNuber":customerMobile,
					"remarks":txtRemarks,
					"createdBy":1
			}
			console.log(data);
			var xhr = new XMLHttpRequest();
			//xhr.open("POST", "/EZOfficeInventory/Save-Customer-Master-Data", true);
			xhr.open("POST", "https://salepurchasecompany.co.in/Save-Customer-Master-Data", true);
			xhr.setRequestHeader("Content-Type", "application/json");
			xhr.onreadystatechange = function () {
				if (xhr.readyState === 4 && xhr.status === 200) {
					var responseData = JSON.parse(xhr.responseText);
					console.log(responseData);
					if (responseData.errorFlag == false) {
						$('#txtCustomerId').val("Record Number:" + responseData.recordNumber);
						$('#txtCustomerNM').attr('disabled', true);
						$('#lstTowerNo').attr('disabled', true);
						$('#txtflatNo').attr('disabled', true);
						$('#txtCustMobile').attr('disabled', true);
						$('#txtRemarks').attr('disabled', true);
			    	    $('#btnSave').attr('disabled', true); 
				        $('#btnRefresh').attr('disabled', true); 
				        $("#msgId").addClass("alert alert-success");
				    	$("#alertMsg").append(responseData.strMessage); 
				    	alert(responseData.strMessage);						
					}
				}
			};
			xhr.send(JSON.stringify(data));
		}
	}
}

function validateFlatNo() {
	var towerNumber = $('#lstTowerNo').val();
	var flatNumber = $('#txtflatNo').val();
	
	if ((flatNumber != "") && (towerNumber != "0")) {
    	$.ajax({
    		//url: '/EZOfficeInventory/search-customer-by-flatNo',
    		url: 'https://salepurchasecompany.co.in/search-customer-by-flatNo',
         	type: 'POST',
    		contentType: 'application/json',	
    		   data: JSON.stringify(
    		   	{
    		   		"towerNo":$('#lstTowerNo').val(),
    		   		"flatNo":$('#txtflatNo').val()
    		   		
    		   	}),
    		   	dataType: 'json',
    		   	success: function (data) {
    		   		console.log(data);
    		   		customerId = data.customerId;
    		   		alert("Cannot Choose this FlatNo Number \nAs Customer:["+ data.customerName + '<->' + data.cutomerMobileNo +"] Alerady exists On Same Tower Flat Number");
    		   		$('#txtflatNo').val('0');
    		   		$('#txtflatNo').focus();
    		   		return false;
    		   	},
    		    error: function (error) {
    		        console.log(`Error ${error}`);
    		    }
    	});          		
	} else {
		if (towerNumber == "0") {
			alert('Select Tower Number First');
			$('#txtflatNo').val('');
			$('#lstTowerNo').focus();
			return false;
		}
	}
}

function refresh() {
	$('#txtCustomerNM').val('');
	$('#lstTowerNo').val();
	$('#txtflatNo').val('');
	$('#txtCustMobile').val('');
	$('#txtRemarks').val('');
	$("#lstTowerNo").prop("selectedIndex", 0);
	$("#txtCustomerId").attr("placeholder", "Generating Customer ID...");


}
function exitToHomePage() {
	//location.href = "/EZOfficeInventory/dashBoard";
	location.href = "https://salepurchasecompany.co.in/dashBoard";
}
</script>
</html>