<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Party Master Entry Page</title>
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
                    <h2 class="h5"><a href="https://EZOfficeInventory.azurewebsites.net/dashBoard">ABC</a></h2>
                </div>
                <!-- Small Brand information, appears on minimized sidebar-->
                <div class="sidenav-header-logo"><a href="https://EZOfficeInventory.azurewebsites.net/dashBoard" class="brand-small text-center"> <strong>A</strong><strong>B</strong></a></div>
            </div>
            <!-- Sidebar Navigation Menus-->
            <div class="main-menu">
                <ul id="side-main-menu" class="side-menu list-unstyled">
                    <li class="active"><a href="#dashboard" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>Master</a>
                        <ul id="dashboard" class="collapse list-unstyled show">
                        	<li><a href="https://EZOfficeInventory.azurewebsites.net/category">Category Master</a></li>
                            <li><a href="https://EZOfficeInventory.azurewebsites.net/dashBoard">Customer Master</a></li>
                            <li><a href="https://EZOfficeInventory.azurewebsites.net/uomMaster">UOM Master</a></li>
                            <li><a href="https://EZOfficeInventory.azurewebsites.net/ItemMaster">Item Master</a></li>
                            <li class="active"><a href="https://EZOfficeInventory.azurewebsites.net/partyMaster">Party Master</a></li>
                       </ul>
                    </li>
                    <li class="active"><a href="#purchase" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-bar-chart"></i>Transaction</a>
                        <ul id="purchase" class="collapse list-unstyled show">
                            <li><a href="https://EZOfficeInventory.azurewebsites.net/purchase">Purchase Order</a></li>
                            <li><a href="https://EZOfficeInventory.azurewebsites.net/salesOrder">Sales Order</a></li>
                            <li><a href="https://EZOfficeInventory.azurewebsites.net/makePayment">Make Payment</a></li>
                            <li><a href="https://EZOfficeInventory.azurewebsites.net/receicePymnt">Received Payment</a></li>
                            <li><a href="https://EZOfficeInventory.azurewebsites.net/mrn">Material Receipt</a></li>
                            <li><a href="https://EZOfficeInventory.azurewebsites.net/rfq">Quotation</a></li>
                        </ul>
                    </li> 
                   <li class="active"><a href="#reports" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-book"></i>Reports</a>
                  	<ul id="reports" class="collapse list-unstyled show">
                  	<li><a href="https://EZOfficeInventory.azurewebsites.net/stockReport">Stock Report</a></li>
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
                            <li class="nav-item"><a href="https://ezofficeinventory.azurewebsites.net/" class="nav-link logout"> <span class="d-none d-sm-inline-block">Logout</span><i class="fa fa-sign-out"></i></a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <!-- Breadcrumb-->
        <div class="breadcrumb-holder">
            <div class="container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item active">Party Master</li>
                </ul>
            </div>
        </div>
        <section>
            <div class="container-fluid">
                    <div class="card">
                        <div class="card-body">
                            <div class="container-form">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">Party ID</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <input type="text" class="form-control" id="txtPartyId" placeholder="Generating Party ID...">
                                    </div>
                                  </div>
                                <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">Party Type</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <label><input type="radio" class="type_checkbox" value="S" name="pType" checked="checked"/> Supplier</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <label><input type="radio" class="type_checkbox" value="C" name="pType"/> Contractor</label>
                                    </div>
                                  </div>                                  
                                  <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">Party Name</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <input type="text" class="form-control" id="txtPartyNm" placeholder="Party Name">
                                    </div>
                                  </div>
                                  <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">Address</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <textarea type="text" class="form-control" id="txtAddress"  placeholder="Address Here" rows="2"></textarea>
                                    </div>
                                  </div>
                                 
                                  <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">Phone No.</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <input type="text" class="form-control" id="txtPartyPhone" onkeypress="return isNumber(event)" placeholder="Phone No.">
                                    </div>
                                  </div>
                                  <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">Pan No.</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <input type="text" class="form-control" id="txtPartyPanNo" placeholder="Pan No.">
                                    </div>
                                  </div>
                                  <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">GST No.</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <input type="text" class="form-control" id="txtGSTNo" placeholder="GST No.">
                                    </div>
                                  </div>
                                  <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">Remarks</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <textarea type="text" class="form-control" id="txtRemarks" placeholder="Remarks Here" rows="2"></textarea>
                                    </div>
                                  </div>
					               <div id="msgId">
						          	<h5 id="alertMsg"></h5>
						          	</div>                                   
                                    <div class="col-sm-6 text-center btn-spaceing">
                                        <div class=" w3-bar">
                                            <Button ID="btnSave" class="common-btn" onclick="savePartyData()">Save</Button>
                                            <Button ID="btnRefresh" class="common-btn" onclick="refreshData()" >Refresh</Button>
                                            <Button ID="btnExit" class="common-btn gray-btn" onclick="exitToHomePage()">Exit</Button>
    
                                        </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                <!-- Page Header-->
       </div>
        <footer class="main-footer">
           <p>Copyright © 2024-2025, Designed & Developed by ABC</p>
        </footer>
    </div>
    <!--Modal Popup Area-->
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
	function validate() {
		var partyName = $('#txtPartyNm').val();
		var partyAddress = $('#txtAddress').val();
		var partyPhone = $('#txtPartyPhone').val();
		var partyPan = $('#txtPartyPanNo').val();
		var partyGst = $('#txtGSTNo').val();
		if (partyName == "") {
			alert("Name Cannot left blank");
			$('#txtPartyNm').focus();
			return false;			
		}
		if (partyAddress == "") {
			alert("Address Cannot left blank");
			$('#txtAddress').focus();
			return false;			
		}	
		if (partyPhone == "") {
			alert("Phone Number Cannot left blank");
			$('#txtPartyPhone').focus();
			return false;			
		}		
/* 		if (partyPan == "") {
			alert("Pan Number Cannot left blank");
			$('#txtPartyPanNo').focus();
			return false;			
		}
		if (partyGst == "") {
			alert("GST Number Cannot left blank");
			$('#txtGSTNo').focus();
			return false;			
		}	 */	
		return true;
	}
	
	function savePartyData() {
		if (validate()==true) {
			if (confirm('Are you sure you want to save?')) {
				var partyName = $('#txtPartyNm').val().replace(/(\r\n|\n|\r)/gm, "");
				var partyAddress = $('#txtAddress').val().replace(/(\r\n|\n|\r)/gm, "");
				var partyPhone = $('#txtPartyPhone').val().replace(/(\r\n|\n|\r)/gm, "");
				var partyPan = $('#txtPartyPanNo').val();
				var partyGst = $('#txtGSTNo').val().replace(/(\r\n|\n|\r)/gm, "");
				var partyRemarks = $('#txtRemarks').val().replace(/(\r\n|\n|\r)/gm, "");
				var partyType=  $('input[name=pType]:checked').val();
 				var partyId;
 				if ("${sMode}" == "edit") {
 					partyId = "${partyData.getPartyId()}";
 				} else {
 					partyId = 0;
 				}				
    			var data= {
    					"sMode":"${sMode}",
    					"partyName":partyName,
        			    "address":partyAddress,
        			    "phoneNo":partyPhone,
        			    "panNo":partyPan,
        			    "gstNo":partyGst,
        			    "remarks":partyRemarks,
        			    "createdBy":1,
        			    "partyId":partyId,
        			    "partyType":partyType
        			}				
    			console.log(data);
 				var xhr = new XMLHttpRequest();
 				//xhr.open("POST", "/EZOfficeInventory/Create-New-PartyMaster", true);
 				xhr.open("POST", "https://EZOfficeInventory.azurewebsites.net/Create-New-PartyMaster", true);
 				xhr.setRequestHeader("Content-Type", "application/json");
 				xhr.onreadystatechange = function () {
 					if (xhr.readyState === 4 && xhr.status === 200) {
 						var responseData = JSON.parse(xhr.responseText);
 						console.log(responseData);
 						if (responseData.errorFlag == false) {
 						   $('#txtPartyId').val("Record Number:" + responseData.recordNumber);
 						   $('#txtPartyNm').attr('disabled', true);
 				    	   $('#txtAddress').attr('disabled', true);
 				    	   $('#txtPartyPhone').attr('disabled', true);
 				    	   $('#txtGSTNo').attr('disabled', true);
 				    	   $('#txtPartyPanNo').attr('disabled', true);
 				    	   $('#txtRemarks').attr('disabled', true);
 				    	   $('#btnSave').attr('disabled', true); 
 				    	   $('input[name="pType"]').attr('disabled', 'disabled');
 				    	   $('#btnRefresh').attr('disabled', true); 
 				           $("#msgId").addClass("alert alert-success");
 				    	   $("#alertMsg").append(responseData.strMessage); 
 				    	   alert(responseData.strMessage);
 						} else {
  				           $("#msgId").addClass("alert alert-warning");
 				    	   $("#alertMsg").append(responseData.strMessage); 	 							
 						}
 					}
 				};
 				xhr.send(JSON.stringify(data));     			
			}
		}
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
	function refreshData() {
		$('#txtPartyNm').val('');
		$('#txtAddress').val('');
		$('#txtPartyPhone').val('');
		$('#txtPartyPanNo').val('');
		$('#txtGSTNo').val('');	
		$('#txtRemarks').val('');
	}
	$("#txtPartyPanNo").on('keypress',function(){   
	    if($(this).val().length>10){
	        alert("Pan No Can be 10 Digit Only");
	        $("#txtPartyPanNo").val('');
	        return false;
	       }
	});	
	$("#txtGSTNo").on('keypress',function(){   
	    if($(this).val().length>15){
	        alert("Gst No Can be 15 Digit Only");
	        $("#txtPartyPanNo").val('');
	        return false;
	       }
	});	
	$("#txtPartyNm").on('keypress',function(){   
	    if($(this).val().length>50){
	        alert("Party Name Can be 50 Digit Only");
	        $("#txtPartyNm").val('');
	        return false;
	       }
	});		
	$(document).ready(function () {
		$('#txtPartyId').attr('disabled', true);
		if ("${sMode}" == "edit" || "${sMode}" == "view") {
			$("#txtPartyId").val("Record Number:" + "${partyData.getPartyId()}");
			$('#txtPartyNm').val("${partyData.getPartyName()}");
			$('#txtAddress').val("${partyData.getAddress()}");
			$('#txtPartyPhone').val("${partyData.getPhoneNo()}");
			$('#txtGSTNo').val("${partyData.getGstNo()}");
			$('#txtPartyPanNo').val("${partyData.getPanNo()}");
			$('#txtRemarks').val("${partyData.getRemarks()}");
			$('#btnRefresh').hide();
			$('#txtPartyNm').attr('disabled', true);
			$('input.type_checkbox[value="${partyData.getPartyType()}"]').prop('checked', true);
			if ("${sMode}" == "view") {
				$('#btnSave').hide();
				$('#txtAddress').attr('disabled', true);
				$('#txtPartyPhone').attr('disabled', true);
				$('#txtGSTNo').attr('disabled', true);
				$('#txtPartyPanNo').attr('disabled', true);
				$('#btnRefresh').attr('disabled', true);
				$('#txtRemarks').attr('disabled', true);
				$('input[name="pType"]').attr('disabled', 'disabled');
			}
		}
	});	
	function exitToHomePage() {
		//location.href = "/EZOfficeInventory/partyMaster";
		location.href = "https://EZOfficeInventory.azurewebsites.net/partyMaster";
	}	
</script>
</html>