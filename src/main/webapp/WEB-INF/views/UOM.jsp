<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Unit Master Entry Page</title>
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
                            <li><a href="https://salepurchasecompany.co.in/dashBoard">Customer Master</a></li>
                            <li class="active"><a href="https://salepurchasecompany.co.in/uomMaster">UOM Master</a></li>
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
                    <li class="breadcrumb-item active">UOM Master</li>
                </ul>
            </div>
        </div>
		<section>
            <div class="container-fluid">
                    <div class="card">
                        <div class="card-body">
                            <div class="container-form">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">UOM ID</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <input type="text" class="form-control" id="txtUomId" placeholder="Generating...">
                                    </div>
                                  </div>
                                  <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">UOM Name</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <input type="text" class="form-control" id="txtUomShortNm" placeholder="UOM Short Name">
                                    </div>
                                  </div>
                                  <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">UOM Description</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <input type="text" class="form-control" id="txtUomDesc" placeholder="UOM Description">
                                    </div>
                                  </div>                                 
                                    <div class="col-sm-6 text-center btn-spaceing">
                                        <div class=" w3-bar">
                                            <Button ID="btnSave" class="common-btn" onclick="saveData()" >Save</Button>
                                            <Button ID="btnrefresh" class="common-btn" onclick="refreshControl()" >Refresh</Button>
                                            <Button ID="btnExit" class="common-btn gray-btn" onclick="exitToHomePage()">Exit</Button>
    
                                        </div>
                                </div>
				               <div id="msgId">
					          	<h5 id="alertMsg"></h5>
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
	$("#txtUomShortNm").on('keypress',function(){   
	    if($(this).val().length>9){
	        alert("Short Name Allowed for 10 Digit Only");
	        $("#txtUomShortNm").val('');
	        return false;
	       }
	});	
	$("#txtUomDesc").on('keypress',function(){   
	    if($(this).val().length>20){
	        alert("Description Allowed for 20 Digit Only");
	        $("#txtUomDesc").val('');
	        return false;
	       }
	});		
	
 	function validate() {
		var uomName = $('#txtUomShortNm').val();
		var uomDesc = $('#txtUomDesc').val();
		
		if (uomName == "" || uomDesc == "") {
			if (uomName == "" && uomDesc == "") {
				alert("UOM Short Name and UOM Description Cannot left blank");
				 $('#txtUomNm').focus();
				return false;
			}
			if (uomName == "") {
				alert("UOM Short Name Cannot left blank");
				$('#txtUomNm').focus();
				return false;				
			}
			if (uomDesc == "") {
				alert("UOM Description Cannot left blank");
				$('#txtUomDesc').focus();
				return false;				
			}	
		}
		return true;
	} 
	function saveData() {
 		if (validate() == true) {
 			if (confirm('Are you sure you want to save?')) {
 				var uomName = $('#txtUomShortNm').val();
 				var uomDesc = $('#txtUomDesc').val().replace(/(\r\n|\n|\r)/gm, ""); 	
 				var uomId;
 				if ("${sMode}" == "edit") {
 					uomId = "${uomData.getUomId()}";
 				} else {
 					uomId = 0;
 				}
 				var data= {
 				  "sMode":"${sMode}",
				  "uomShortName":uomName,
 				  "createdById":1,
 				  "uomDescription":uomDesc,
 				  "active":true,
 				  "uomId":uomId
 				}
 				console.log(data)
 				var xhr = new XMLHttpRequest();
 				//xhr.open("POST", "/EZOfficeInventory/Create-New-UomMaster", true);
 				xhr.open("POST", "https://salepurchasecompany.co.in/Create-New-UomMaster", true);
 				xhr.setRequestHeader("Content-Type", "application/json");
 				xhr.onreadystatechange = function () {
 					if (xhr.readyState === 4 && xhr.status === 200) {
 						var responseData = JSON.parse(xhr.responseText);
 						console.log(responseData);
 						if (responseData.errorFlag == false) {
 						   $('#txtUomId').val("Record Number:" + responseData.recordNumber);
 						   $('#txtUomShortNm').attr('disabled', true);
 				    	   $('#txtUomDesc').attr('disabled', true);
 				    	   $('#btnSave').attr('disabled', true); 
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
	function exitToHomePage() {
		//location.href = "/EZOfficeInventory/uomMaster";
		location.href = "https://salepurchasecompany.co.in/uomMaster";
	}
	function refreshControl() {
		$('#txtUomShortNm').val('');
		$('#txtUomDesc').val('');
		$("#txtUomId").attr("placeholder", "Generating...");

	}
	$(document).ready(function () {
		$('#txtUomId').attr('disabled', true);
		if ("${sMode}" == "edit" || "${sMode}" == "view") {
			$("#txtUomId").val("Record Number:" + "${uomData.getUomId()}");
			$('#txtUomShortNm').val("${uomData.getUomShortName()}");
			$('#txtUomDesc').val("${uomData.getUomDescription()}");
			$('#btnrefresh').hide();
			$('#txtUomShortNm').attr('disabled', true);
			if ("${sMode}" == "view") {
				$('#btnSave').hide();
				$('#txtUomDesc').attr('disabled', true);
			}
		}
	});
</script>
</html>