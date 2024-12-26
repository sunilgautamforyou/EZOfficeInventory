<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Case Entry</title>
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
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
<!-- Custom Scrollbar-->
<link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<!-- theme stylesheet-->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<!-- Custom stylesheet - for your changes-->
<!-- Favicon-->
<link rel="shortcut icon" href="img/favicon.ico">
<style type="text/css">
.input-disabled {
	background-color: #EBEBE4;
	border: 1px solid #ABADB3;
	padding: 2px 1px;
}
</style>
</head>
<body>
	<!-- Side Navbar -->
<nav class="side-navbar">
	<div class="side-navbar-wrapper">
		<!-- Sidebar Header    -->
<div
	class="sidenav-header d-flex align-items-center justify-content-center">
	<!-- User Info-->
<div class="sidenav-header-inner text-center">
	<h2 class="h5">
		<a href="/loanApp/dashBoard">ABC</a>
	</h2>
</div>
<!-- Small Brand information, appears on minimized sidebar-->
<div class="sidenav-header-logo">
	<a href="/loanApp/dashBoard" class="brand-small text-center"> <strong>A</strong><strong>B</strong></a>
	</div>
</div>
<!-- Sidebar Navigation Menus-->
		<div class="main-menu">
			<ul id="side-main-menu" class="side-menu list-unstyled">
				<li class="active"><a href="#dashboard" aria-expanded="false"
					data-toggle="collapse"> <i class="icon-interface-windows"></i>Master
				</a>
					<ul id="dashboard" class="collapse list-unstyled show">
						<li><a href="/OfficeNet/CustomerHomePG">Customer Master</a></li>
					</ul></li>
				<li class="active"><a href="#purchase" aria-expanded="false"
					data-toggle="collapse"> <i class="fa fa-bar-chart"></i>Transaction
				</a>
					<ul id="purchase" class="collapse list-unstyled show">
						<li class="active"><a href="/loanApp/">Create Job Card</a></li>
						<li><a href="/loanApp/receivedPymnt">Received Payment</a></li>
					</ul></li>
				<li class="active"><a href="#reports" aria-expanded="false"
					data-toggle="collapse"> <i class="fa fa-book"></i>Reports
				</a>
					<ul id="reports" class="collapse list-unstyled show">
						<li><a href="/loanApp/pymntRcvdRpt">Statement Of
								Accounts</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</nav>
<div class="page">
	<!-- navbar-->
<header class="header">
	<nav class="navbar">
		<div class="container-fluid">
			<div
				class="navbar-holder d-flex align-items-center justify-content-between">
				<div class="navbar-header">
					<a id="toggle-btn" href="#" class="menu-btn"><i
						class="icon-bars"> </i></a><a href="index.html" class="navbar-brand"></a>
				</div>
				<ul
					class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center top-menu">
					<!-- Notifications dropdown-->

<li class="login-user"><a href="#">Welcome <span>ABC</span></a></li>
<!-- Log out-->
<li class="nav-item"><a href="/loanApp"
	class="nav-link logout"> <span
	class="d-none d-sm-inline-block">Logout</span><i
							class="fa fa-sign-out"></i></a></li>
				</ul>
			</div>
		</div>
	</nav>
</header>
<!-- Breadcrumb-->
<div class="breadcrumb-holder">
	<div class="container-fluid">
		<ul class="breadcrumb">
			<li class="breadcrumb-item active">DayBook-Payments</li>
		</ul>
	</div>
</div>
<section>
<div class="container-fluid">
	<div class="card">
		<div class="card-body">
<div class="container">
<div class="form-group row">
		<label class="col-sm-4 col-md-1 col-form-label">Bill No.</label>
		<div class="col-sm-6 col-md-3 pl0">
			<input type="text" id="txtBillNumber" style="background-color: #FFFACD;" class="form-control" placeholder="Generating Bill Number">
		</div>
		<label class="col-sm-4 col-md-1 col-form-label pl15">Bill Date</label>
		<div class="col-sm-6 col-md-3 pl0 cal-position">
			<input type="text" id="txtBillDate" class="form-control input-group date" placeholder="Bill Date">
			<i class="fa fa-calendar"></i>
		</div>
</div>  
<div class="form-group row">
	<label class="col-sm-4 col-md-1 col-form-label">Customer:</label>
	<div class="col-sm-6 col-md-3 pl0">
		<select class="custom-select" id="lstCustNo">
			<option value="0">Choose Any Customer...</option>
		</select> <br> <a href="#" onclick="showPopUp('Customer')">Search Customer</a>
	</div>
	<label class="col-sm-4 col-md-1 col-form-label pl15">Guarantor:</label>
	<div class="col-sm-6 col-md-3 pl0">
		<select class="custom-select" id="lstGuarantor">
			<option value="0">Choose Any Guarantor...</option>
			<option value="0">Self</option>
		</select> <br> <a href="#" onclick="showPopUp('Guarantor')">Search Guarantor</a>
	</div>	
</div> 
<div class="form-group row">
		<label class="col-sm-4 col-md-1 col-form-label">Office:</label>
		<div class="col-sm-6 col-md-3 pl0">
		<select class="custom-select" id="lstOffice">
			<option value="0">Nihal Vihar</option>
			<option value="1">Paschim Vihar</option>
			<option value="2">Uttam Nagar</option>
		</select>
		</div>
		<label class="col-sm-4 col-md-1 col-form-label pl15">Remarks:</label>
		<div class="col-sm-6 col-md-3 pl0 cal-position">
		<textarea type="text" class="form-control" id="txtRemarks"  placeholder="Remarks Here" rows="2"></textarea>
	</div>
</div>
</div>
<div class="container" id="dvEntry">
	<div class="form-group row">
		<table id="groupTable" class="table table-bordered table-hover"  style="width: 100%">
	<tr>
		<td style="width: 40%">
			<div id="billDtl" class="table-responsive style-12" style="width: !important;%">
				<table class="table table-bordered table-hover" id="paymentsTbl" style="width: 100%">
					<thead id="PymntsHead" class="thead-dark">
						<tr>
							<th scope="col">Srl</th>
							<th scope="col">Payment Description</th>
							<th scope="col">Value</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><label>1</label></td>
							<td><div class="col-sm-12 col-md-12 pl0">
									<select class="custom-select" id="ddlCaseType">
										<option value="1">Daily</option>
										<option value="2">Meter</option>
										<option value="2">Monthly</option>
										<option value="3">Gold</option>
										<!-- <option value="4">Group</option> -->
										<option value="5">Mortgage</option>
									</select>
								</div></td>
							<td style="text-align: left;">
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="fa fa-rupee-sign"></i></span>
										<input type="text" class="form-control" id="txtCaseAmount" placeholder="Enter the Bill Amount" style="width: 100%;">
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td><label>2</label></td>
							<td style="text-align: left;">
							<label id="lblTenure">For Total Days</label>&nbsp;&nbsp;<label id="lblChkPct"><input type="checkbox" checked="checked" id="chkPctAmt">%</label></td>
							<td style="text-align: left;">
							<input type="text" class="form-control" id="txtTenure" onkeypress="return isNumber(event)" placeholder="Enter the Tenure" style="width: 100%">
							</td>
						</tr>
						<tr>
							<td><label>3</label></td>
							<td style="text-align: left;"><label>Installment</label></td>
							<td style="text-align: left;"><input type="text" id="txtRate" class="form-control" id="txtROI" placeholder="Enter the Installment" style="width: 100%"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</td>
		<td style="text-align: left;width: 40%">
			<div class="col-md-12 commen-space" style="width: !important;%">
				<table class="table table-bordered table-hover" id="tblCalc" style="width: 100%">
					<thead id="PymntsHead" class="thead-dark">
						<tr>
							<th scope="col">Srl</th>
							<th scope="col">Payment Description</th>
							<th scope="col">Value</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><label>4</label></td>
							<td><label>Deduction</label></td>
							<td style="text-align: left;">
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="fa fa-rupee-sign"></i></span>
										<input type="text" class="form-control" id="txtAdvEmiAmt" placeholder="Advance Deducted" style="width: 50%;">
										<span id="fileChargesSymb" class="input-group-text"><i class="fa fa-rupee-sign"></i></span>
										<input type="text" class="form-control" id="txtFileCharge" onkeypress="return allowNumericWithDecimal(event)" placeholder="File Charges" style="width: 50%;">
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td><label>5</label></td>
							<td style="text-align: left;"><label>Total Bill Amount</label></td>
<!-- 							<td style="text-align: left;">
							<input type="text" class="form-control" id="txtTotalAmt" placeholder="Generating...." style="width: 100%"></td> -->
							<td style="text-align: left;">
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="fa fa-rupee-sign"></i></span>
										<input type="text" class="form-control" id="txtTotalAmt" placeholder="Generating...." style="width: 100%;">
									</div>
								</div>
							</td>							
						</tr>
						<tr>
							<td><label>6</label></td>
							<td style="text-align: left;">
							<label>Final Payment</label></td>
							<td style="text-align: left;">
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="fa fa-rupee-sign"></i></span>
										<input type="text" class="form-control" id="txtPayableAmt" placeholder="Generating...." style="width: 100%;">
									</div>
								</div>
							</td>								
								</tr>
							</tbody>
						</table>
					</div>
				</td>
			</tr>
		</table>
	</div>
</div>
<div id="msgId">
	<h5 id="alertMsg"></h5>
</div>
<div class="col-sm-4 text-center btn-spaceing mt15">
	<div class=" w3-bar">
		<Button ID="btnSave" onclick="saveBillData()" class="common-btn">Save</Button>
		<Button ID="btnRefresh" class="common-btn" onclick="exitToHomePage()">Refresh</Button>
	</div>
</div>
		</div>
	</div>
</div>
    <!--Modal Popup Area-->
	<div class="modal fade" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-hidden="true" aria-modal="true" role="dialog" id="userDataModel">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="SrchMoal"></h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>	
				<div class="modal-body">
					<div class="container">
					  <div class="form-group row">
						<label class="col-sm-4 col-md-2 col-form-label">Search:</label>		 
						<div class="col-sm-6 col-md-8">
						<input type="text" id="txtInputSrch" style="background-color: #FFFACD;" class="form-control" placeholder="Enter Search Text Here">
						<button id="btnSrch" class="common-btn" onclick="loadCustomerData();">Search</button>
						</div>						 
					  </div>
					  <div class="form-group row">
					   <div class="col-md-12 commen-space" style="width: !important;%">
					   	 <table class="table table-bordered table-hover" id="tblSrch" style="width: 100%">
							<thead id="srchHead" class="thead-dark">
								<tr>
									<th scope="col" hidden="true">CustomerId</th>
									<th scope="col" style="width: 35%">Customer Name</th>
									<th scope="col" style="width: 55%">Address</th>
									<th scope="col" style="width: 10%">Select One</th>
								</tr>
							</thead>
							<tbody id="srchBody">
							</tbody>					   	 	
					   	 </table>
					   </div>
					  </div>
					</div>
    			</div>
				<div class="modal-footer">
					<button type="button" class="common-secondary" data-dismiss="modal">Close</button>
				</div>											
			</div>
		</div>
	</div>  
</section>
	<footer class="main-footer">
		<p>Copyright Â© 2024-2025, Designed & Developed by ABC</p>
	</footer>
</div>
<!-- JavaScript files-->
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/dataTables.bootstrap4.min.js"></script>
<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<!-- Main File-->
<script src="js/custom.js"></script>
<script type="text/javascript">
jQuery(document).ready(function($){
	$('#txtTotalAmt').attr('readonly', true);
	$('#txtTotalAmt').addClass('input-disabled');	
	$('#txtPayableAmt').attr('readonly', true);
	$('#txtPayableAmt').addClass('input-disabled');	
	$('#txtBillNumber').attr('readonly', true);
	$('#txtBillNumber').addClass('input-disabled');	
	$('#txtBillDate').attr('readonly', true);
	$('#txtBillDate').addClass('input-disabled');	
	$('#txtFileCharge').hide();
	//$('#txtAdvEmiAmt').css({width:100});
	//$('#txtAdvEmiAmt').width($('#txtAdvEmiAmt').prop('scrollWidth'));
	$("#txtAdvEmiAmt").attr("size","50");
	$("#fileChargesSymb").hide();
	$('#chkPctAmt').hide();
	$('#lblChkPct').hide();
	setCurrentDate();
	$('#dvEntry').hide();
});

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
		
	$("#txtBillDate").val(today);
}

$('#billDtl').on('keypress','#txtCaseAmount',function(event) {
    if (((event.which != 46 || (event.which == 46 && $(this).val() == '')) ||
            $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
        event.preventDefault();
    }
});	

$('#tblCalc').on('keypress','#txtAdvEmiAmt',function(event) {
    if (((event.which != 46 || (event.which == 46 && $(this).val() == '')) ||
            $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
        event.preventDefault();
    }
});	

$('#billDtl').on('keypress','#txtRate',function(event) {
    if (((event.which != 46 || (event.which == 46 && $(this).val() == '')) ||
            $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
        event.preventDefault();
    }
});	

 var txtCaseAmount = document.getElementById('txtCaseAmount');

  txtCaseAmount.addEventListener('keyup', function() {
  var val = this.value;
  val = val.replace(/[^0-9\.]/g,'');
  
  if(val != "") {
    valArr = val.split('.');
    valArr[0] = (parseInt(valArr[0],10)).toLocaleString();
    val = valArr.join('.');
  }
  
  this.value = val;
});
  
  var txtAdvEmiAmt = document.getElementById('txtAdvEmiAmt');

  txtAdvEmiAmt.addEventListener('keyup', function() {
  var val = this.value;
  val = val.replace(/[^0-9\.]/g,'');
  
  if(val != "") {
    valArr = val.split('.');
    valArr[0] = (parseInt(valArr[0],10)).toLocaleString();
    val = valArr.join('.');
  }
  
  this.value = val;
});
  
  $("#tblCalc").on('keyup','#txtFileCharge',function(){
	  var selectedCaseTypeText = $("#ddlCaseType option:selected").text();
	  var caseAmount = $('#txtCaseAmount').val();	  
      if (selectedCaseTypeText == "Monthly" || selectedCaseTypeText == "Gold" 
			|| selectedCaseTypeText == "Mortgage" && convertStringToFloat(caseAmount) > 0) {
  		calculateMonthlyAmount();
  	}        
  });
  
  $("#tblCalc").on('keyup','#txtAdvEmiAmt',function(){
	  var selectedCaseTypeText = $("#ddlCaseType option:selected").text();
	  var caseAmount = $('#txtCaseAmount').val();
	  var txtAdvEmiAmt = $('#txtAdvEmiAmt').val();
	  var txtRate = $('#txtRate').val();
	  if (txtRate == "") {
		  txtRate = "0";
	  }
	  if (selectedCaseTypeText == "Daily") {
		  if (convertStringToFloat(txtRate) <= 0) {
				alert("Please Input Installment Amount")
				$('#txtAdvEmiAmt').val('');
				$('#txtRate').focus();	
				return false;
		  }
		  if (parseFloat(convertStringToFloat(txtAdvEmiAmt)) > parseFloat(convertStringToFloat(caseAmount))) {
			  alert("Advance Amount cannot be greator than bill Amount");
			  $('#txtAdvEmiAmt').val('');
			  calculateDailyAmount();
			  return false;
		  }
		  calculateDailyAmount();
	  } else if (selectedCaseTypeText == "Monthly" || selectedCaseTypeText == "Gold" 
			|| selectedCaseTypeText == "Mortgage" && convertStringToFloat(caseAmount) > 0) {
		  if (convertStringToFloat(txtRate) <= 0) {
				alert("Please Input Installment Amount")
				$('#txtAdvEmiAmt').val('');
				if($('#chkPctAmt').is(":checked")) {
					$('#txtTenure').focus();		
				} else {
					$('#txtRate').focus();
				}
				
				return false;
		  }		
		  if (parseFloat(convertStringToFloat(txtAdvEmiAmt)) > parseFloat(convertStringToFloat(caseAmount))) {
			  alert("Advance Amount cannot be greator than bill Amount");
			  $('#txtAdvEmiAmt').val('');
			  calculateDailyAmount();
			  return false;
		  }
		  calculateMonthlyAmount();
	}	  
  });
function cleanAllValues() {
	$('#txtCaseAmount').val('');
	 $('#txtAdvEmiAmt').val('');
	 $('#txtTenure').val('');
	 $('#txtRate').val('');
	 $('#txtTotalAmt').val('');
	 $('#txtPayableAmt').val('');
	 $("#txtFileCharge").val('');
	 
}  

$("#billDtl").on('keyup','#txtTenure',function(e){
	var selectedCaseTypeText = $("#ddlCaseType option:selected").text();
	var billAmount = convertStringToFloat($('#txtCaseAmount').val());
	var caseAmount = $('#txtCaseAmount').val();
	if (selectedCaseTypeText == "Monthly" || selectedCaseTypeText == "Gold" 
		|| selectedCaseTypeText == "Mortgage") {
        //var text = $(this).val();
        var maxlength = $(this).val().length;

        if(maxlength > 3)  
        {
           //$(this).val($(this).val().substr(0, maxlength));
           $('#txtTenure').val($(this).val().substr(0, 3));
        }	
        if ($(this).val() > 100) {
        	alert("Percentage cannot be more than 100");
        	$('#txtTenure').val('');
        	$('#txtTenure').focus();
        	$('#txtPayableAmt').val('');
        	$('#txtRate').val('');
        	return false;
        }
        if (billAmount == "") {
        	alert("Enter the Valid Bill Amount");
        	$('#txtTenure').val('');
        	$('#txtCaseAmount').focus();
        	$('#txtRate').val('');
        	return false;        	
        }
        
        var emiAmount = parseFloat((billAmount * $(this).val()) / 100);
        $('#txtRate').val(formatNumber(emiAmount));
        
        if (selectedCaseTypeText == "Monthly" || selectedCaseTypeText == "Gold" 
			|| selectedCaseTypeText == "Mortgage" && convertStringToFloat(caseAmount) > 0) {
    		calculateMonthlyAmount();
    	}        
        
	}
});

$("#billDtl").on('keypress','#txtTenure',function(e){
	var selectedCaseTypeText = $("#ddlCaseType option:selected").text();
	if (selectedCaseTypeText == "Monthly") {
	  var key = e.which;
	  if ((key < 48 || key > 57) && !(key == 8 || key == 9 || key == 13 || key == 37 || key == 39 || key == 46) ){
	    return false;
	  }		 
	}
});
  
$("#billDtl").on('keyup','#txtRate',function(){
	var caseAmount = $('#txtCaseAmount').val();
	var selectedCaseTypeText = $("#ddlCaseType option:selected").text();
	if (caseAmount <= 0) {
		alert("Please Input Bill Amount")
		$('#txtRate').val('');
		$('#txtTenure').val('');
		$('#txtCaseAmount').focus();
	}
	
	if (selectedCaseTypeText == "Daily" && convertStringToFloat(caseAmount) > 0) {
		calculateDailyAmount();
	} else if (selectedCaseTypeText == "Meter" && convertStringToFloat(caseAmount) > 0) {
		calculateMeterAmount();
	} else if (selectedCaseTypeText == "Monthly" || selectedCaseTypeText == "Gold" 
		|| selectedCaseTypeText == "Mortgage" && convertStringToFloat(caseAmount) > 0) {
		calculateMonthlyAmount();
	}
});


function calculateMonthlyAmount() {
	var txtCaseAmount = $('#txtCaseAmount').val();
	var txtTenure = $('#txtTenure').val();
	var txtRate = $('#txtRate').val();
	var txtAdvAmt = $('#txtAdvEmiAmt').val();	
	var txtFileCharge = $('#txtFileCharge').val();	
	
	if (txtRate == "") {
		txtRate = 0;
	} else {
		txtRate = convertStringToFloat(txtRate);
	}
	
	if (txtFileCharge == "") {
		txtFileCharge = 0;
	}  else {
		txtFileCharge = convertStringToFloat(txtFileCharge);
	}
	
	if (txtAdvAmt == "") {
		txtAdvAmt = 0;
	}  else {
		txtAdvAmt = convertStringToFloat(txtAdvAmt);
	}
	
	var finalBillAmount = parseFloat(convertStringToFloat(txtCaseAmount) - (txtAdvAmt+txtFileCharge));
	$('#txtTotalAmt').val(txtCaseAmount);
	$('#txtPayableAmt').val(formatNumber(finalBillAmount));
	
}

function calculateDailyAmount() {
	var txtCaseAmount = $('#txtCaseAmount').val();
	var txtTenure = $('#txtTenure').val();
	var txtRate = $('#txtRate').val();
	var txtAdvAmt = $('#txtAdvEmiAmt').val();
	
	if (txtTenure <= 0) {
		alert("Please Input Valid Tenure");
		$('#txtTenure').focus();
		$('#txtRate').val('');
		$('#txtPayableAmt').val('');
		return false;
	}
	
	if (txtRate == "") {
		txtRate = "0";
	}
	
	if ($('#txtTenure').val() == "") {
		txtTenure = 0;
	}
	
	if ($('#txtAdvEmiAmt').val() == "") {
		txtAdvAmt = "0";
	}
	
	var totalBillAmt = parseFloat(txtTenure)*parseFloat(txtRate);
	
	$('#txtTotalAmt').val(formatNumber(totalBillAmt));
	
	var finalBillAmt = (totalBillAmt - parseFloat(convertStringToFloat(txtAdvAmt)));
	
	$('#txtPayableAmt').val(formatNumber(finalBillAmt));
}
function calculateMeterAmount() {
	var txtCaseAmount = $('#txtCaseAmount').val();
	$('#txtTotalAmt').val(formatNumber(convertStringToFloat(txtCaseAmount)));
	$('#txtPayableAmt').val(formatNumber(convertStringToFloat(txtCaseAmount)));
}
$('#chkPctAmt').change(function() {
    if($(this).is(":checked")) {
        alert("Enter the Installment Percentage");
        $('#txtTenure').attr('disabled', false);
        $('#txtRate').val('');
        $('#txtTenure').val('');
        $('#txtRate').attr('disabled', true);
        $('#txtTenure').focus();
        $('#lblChkPct').html('%');
    } else {
    	alert("Enter the Installment Amount");
        $('#txtRate').attr('disabled', false);
        $('#txtTenure').val('');
        $('#txtRate').val('')
        $('#txtTenure').attr('disabled', true);
        $('#txtRate').focus();
        //$('#lblChkPct').text("&#8377;");
    }
	 $('#txtAdvEmiAmt').val('');
	 $('#txtTenure').val('');
	 $('#txtRate').val('');
	 $('#txtTotalAmt').val('');
	 $('#txtPayableAmt').val('');
	 $("#txtFileCharge").val('');
    
});
$('#ddlCaseType').on('change', function() {
	var selectedCaseTypeText = $("#ddlCaseType option:selected").text();
	$('#txtTenure').attr("placeholder", "Enter the Tenure");
	$('#txtTenure').attr('disabled', false);
	$('#txtRate').attr('disabled', false);
	$('#chkPctAmt').hide();
	$('#lblChkPct').hide();	
	cleanAllValues();
	$('#txtFileCharge').hide();
	$("#fileChargesSymb").hide();
	if (selectedCaseTypeText == "Daily") {
		$('#lblTenure').html('For Total Days');
	}
	if (selectedCaseTypeText == "Meter" || 
			selectedCaseTypeText == "Monthly" || 
			selectedCaseTypeText == "Gold" || 
			selectedCaseTypeText == "Mortgage") {
		$('#lblTenure').html('Tenure');
		$('#txtTenure').attr('disabled', true);
		if (selectedCaseTypeText == "Monthly" || selectedCaseTypeText == "Gold" 
				|| selectedCaseTypeText == "Mortgage") {
			$('#txtFileCharge').show();
			$("#txtAdvEmiAmt").attr("size","20");
			$("#fileChargesSymb").show();
			$('#lblTenure').html('Rate Of Interest');
			$('#txtTenure').attr('disabled', false);
			$('#txtTenure').attr("placeholder", "Enter the Interest Percentage");
			$('#txtRate').attr('disabled', true);
			$('#chkPctAmt').show();
			$('#lblChkPct').show();			
			//$('#txtAdvEmiAmt').width($('#txtAdvEmiAmt').prop('scrollWidth'));
		}
	}
	$('#txtCaseAmount').focus();
});

function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}
function formatNumber(n) {
	  return n.toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,");
}  
function convertStringToFloat(str)
{
	cleanNum = str.replace(",", "");
	return parseFloat(cleanNum);		
}
function allowNumericWithDecimal(event) {
    if (((event.which != 46 || (event.which == 46 && $(this).val() == '')) ||
            $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
        event.preventDefault();
    }		
}	

function showPopUp(type) {
	$('#srchBody').html('');
	$('#txtInputSrch').val('');
	if (type == "Customer") {
		$('#SrchMoal').html('Search Customer');
		$('#userDataModel').modal('show');
	} else {
		if ($("#lstCustNo").val() == "0") {
			alert("Choose Customer First");
			return false;
		} 
		$('#SrchMoal').html('Search Guarantor');
		$('#userDataModel').modal('show');
	}
}

function loadCustomerData() {
	var inputTextSrch = $('#txtInputSrch').val();
	if (inputTextSrch == "") {
		alert("Please Enter Valid Text Search...");
		$('#txtInputSrch').focus();
		return false;
	}
  	 var searchData = JSON.stringify({
		"searchText":inputTextSrch
	});        	
  	$('#srchBody').html('');
	   $.ajax({
           url:"/OfficeNet/dayBook_Pymnt/loadCustomerData",
           method:"POST",
           data: searchData,
           contentType: 'application/json',
           cache: false,
           processData: false,
           beforeSend:function(){
        	   //$('#btnShow').html(spinner);
           },
           success:function(data)
           {
        	   if(data.length!=0) {
        		   for(var i=0;i<data.length;i++){
						$('#srchBody').append(
							'<tr>'+
							'<td hidden>'+data[i].cust_Id+'</td>'+
							'<td>'+data[i].cust_Name+'</td>'+
							'<td>'+data[i].cust_CAdd+'</td>'+
							'<td><label class="radio-inline"> <input type="radio" class="radioUser" name="selectUser" value='+data[i].cust_Id+'>Select</label></td></tr>'
						);        			   
        		   }
        	   } else {
        		   alert("No customer found For this Input!!!!");
        		   $('#txtInputSrch').focus();
        	   }
           }
           ,error: function(ts)
           {
          	 $("#msgId").addClass("alert alert-danger");
          	 alert("error:" + ts.responseText);
           }
	 });		
}
$("#tblSrch").on('click','.radioUser',function(){
	var currentRow=$(this).closest("tr"); 
	var customerId=currentRow.find("td:eq(0)").text();
	var customerName=currentRow.find("td:eq(1)").text();
	var searchType = $('#SrchMoal').html();
	if (searchType == "Search Customer") {
		$('#lstCustNo').append('<option value='+customerId+'>'+customerName+'</option>');
		$("#lstCustNo").prop('selectedIndex',1);		
		$("#lstGuarantor").prop('selectedIndex',1);
		$('#dvEntry').show();
	} else {
		$('#lstGuarantor').append('<option value='+customerId+'>'+customerName+'</option>');
		$("#lstGuarantor").prop('selectedIndex',2);		
		$('#dvEntry').show();
	}

	
	$('#userDataModel').modal('hide');

});

function validate() {
	var customerId = $('#lstCustNo').val();
	var billDate = $('#txtBillDate').val();
	var guarantor = $("#lstGuarantor").val();
	var office = $('#lstOffice').val();
	var txtPayableAmt = $('#txtPayableAmt').val();
	
	if (customerId == "0") {
		alert("Customer cannot left blank");
		$('#lstCustNo').focus();
		return false;
	}
	if (txtPayableAmt == "") {
		alert("Bill Amount cannot be left blank");
		$('#txtCaseAmount').focus();
		return false;		
	}
	return true;
}

function saveBillData() {
  if (validate() == true) {
	  
  }
}

</script>
</body>
</html>