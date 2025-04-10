<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sales Order Home Page</title>
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
                            <li><a href="https://salepurchasecompany.co.in/partyMaster">Party Master</a></li>
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
                    <li class="breadcrumb-item active">Sales Order Home Page</li>
                </ul>
            </div>
        </div>
        <section>
			<div class="container-fluid">
				<div class="card">
					<div class="card-body">
						<div class="col-md-12 commen-space">
							<div class="form-group row">
								<a href="https://salepurchasecompany.co.in/AddNewSalesOrder">Add New Sales Order</a>
							</div>
							<div class="form-group row">
								<label class="col-sm-4 col-md-1 col-form-label">Date From</label>
								<div class="col-sm-6 col-md-3 pl0 cal-position">
									<input type="text" id="txtFromDate" class="form-control input-group date" placeholder="Date From">
									<i class="fa fa-calendar"></i>
								</div>
								<label class="col-sm-4 col-md-1 col-form-label pl15">Date To</label>
								<div class="col-sm-6 col-md-3 pl0 cal-position">
									<input type="text" id="txtToDate" class="form-control input-group date" placeholder="Date To">
									<i class="fa fa-calendar"></i>
								</div>
							</div>
                            <div class="form-group row" id="divSearchItem">
							<div class="input-group">
							<label class="col-sm-4 col-md-1 col-form-label">Search Bar</label>
							<div class="input-group-prepend col-sm-6 col-md-3 pl0">
								<span class="input-group-text"><i class="fa fa-search"></i></span>
								<input type="text" class="form-control" id="searchData" 
								placeholder="Enter Customer Name Here"">
							</div>
							<label class="col-sm-4 col-md-1 col-form-label pl15"></label>
                            <div class="col-sm-6 col-md-3 pl0">
                            	<Button ID="btnSrch" class="common-btn button-dark" onclick="openSearchBox()" >Search</Button>
                            	<Button ID="btnView" class="common-btn button-dark" onclick="loadCustomerHomePGData('0')" >Show</Button>
                            </div>									
							</div>  

                                                            	
                            </div>							
							<div class="table-responsive style-8">
								<table id="example" class="table table-bordered table-hover no-footer" style="width:100%">
									 <thead id="mainHead" class="thead-dark"></thead>
								     <tbody id="tdata"></tbody>		
								</table>							
							</div>
						</div>
					</div>
					<!-- Page Header-->
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
					<h5 class="modal-title">Search Customer Data</h5>
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
									<th>Tower</th> <!-- 1 -->
									<th>Flat No</th> <!-- 2 -->
									<th>Customer Name</th> <!-- 3 -->
									<th>Mobile Number</th> <!-- 4 -->
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
    <!-- JavaScript files-->
 	<script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/dataTables.bootstrap4.min.js"></script>
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>     
</body>
<script type="text/javascript">
$('.input-group.date').datepicker({
    format: "dd-M-yy",
    todayHighlight: true,
    autoclose: true,
    showMeridian: true,
}).on('changeDate', function (ev) {
    $(this).datepicker('hide');
    return validate();
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
jQuery(document).ready(function($){
	var viewBtn;
	var editBtn;
	var printBtn;
	var table ;
  	setCurrentDate();
 	$('#txtFromDate').attr('readonly', true);
 	$('#txtFromDate').addClass('input-disabled');	
 	$('#txtToDate').attr('readonly', true);
 	$('#txtToDate').addClass('input-disabled');		
	loadCustomerHomePGData("0");
});
function validate() {
	var fromDate = $('#txtFromDate').val();
	var todate = $('#txtToDate').val();
   	if (Date.parse(fromDate) > Date.parse(todate)) {
   		alert("From Date Cannot Greator then ToDate");
   		setCurrentDate();
   		return false;
   	}
	 return true;
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
			 //url: '/EZOfficeInventory/getSaleOrderCustomerData',
			 url: 'https://salepurchasecompany.co.in/getSaleOrderCustomerData',
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
								'<td hidden>'+data[i].customerId+'</td>'+
								'<td>'+data[i].towerDescription+'</td>'+
								'<td>'+data[i].flatNo+'</td>'+
								'<td>'+data[i].customerName+'</td>'+
								'<td>'+data[i].cutomerMobileNo+'</td>'+
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
	var currentRow=$(this).closest("tr"); 
    var customerId=currentRow.find("td:eq(0)").text();
    $('#example').DataTable().clear().destroy();
    loadCustomerHomePGData(customerId);
    $('#searchData').val('');
    $('#userDataModel').modal('hide');
    $('#tbodyLoan').html('');    
});
function loadCustomerHomePGData(customerId) {
	$.ajax({
		//url: '/EZOfficeInventory/get-All-SO-HomePG-Data',
		url: 'https://salepurchasecompany.co.in/get-All-SO-HomePG-Data',
     	type: 'POST',
		contentType: 'application/json',	
		   data: JSON.stringify(
		   	{
				"fromDate":$('#txtFromDate').val(),
				"toDate":$('#txtToDate').val(),
				"salesOrderId":"",
				"customerId":customerId
		   	}),
		   	dataType: 'json',
		   	success: function (data) {
		   		console.log(data);
		        var k=1;
		          $('#mainHead').html(
		        		 '<tr>'+
		        		// '<th>Sr. No</th>'+
		                 '<th hidden>SaleOrderId</th>'+
		                 '<th >SO Number</th>'+
		                 '<th >SO Date</th>'+
		                 '<th>Customer Name</th>'+
		                 '<th>Mobile No</th>'+
		                 '<th>Flat Number</th>'+
		                 '<th >Action</th>'+
		                 '</tr>'	
		        );		   		
		        for(var i=0;i<data.length;i++){
		        	viewBtn= '<button type="button" class="common-btn btn-sm" id="viewbtn" onclick=OpenEntryPG("view",'+data[i].saleId+')>View</button>';
		        	editBtn= '<button type="button" class="common-btn gray-btn btn-sm" id="editbtn" onclick=OpenEntryPG("edit",'+data[i].saleId+')>Edit</button>';
		        	printBtn = '<button type="button" class="common-btn gray-btn btn-sm" id="editbtn" onclick=vwReport('+data[i].saleId+')>Print</button>';
		        	$('#tdata').append(
		        		'<tr>'+
		        		'<td hidden>'+data[i].saleId +'</td>'+
		        		'<td>'+data[i].salesOrderNumber+'</td>'+
		        		'<td>'+data[i].salesDate+'</td>'+
		        		'<td>'+data[i].customerName+'</td>'+
		        		'<td>'+data[i].cutomerMobileNo+'</td>'+
		        		'<td>'+data[i].flatNo+'</td>'+
		        		'<td>'+viewBtn +'  '+editBtn+' '+printBtn+'</td>'+
		        		'</tr>'
		        	);		
		        }
		        createNewDataTable();
		   	},
		    error: function (error) {
		        console.log(`Error ${error}`);
		    }
	});	
}
function createNewDataTable() {
/* 	table = new DataTable('#example', {
		"ordering" : true,
		fixedHeader : true,
		"pageLength" : 5
	}); */
	if (!$.fn.DataTable.isDataTable('#example')) {
	    $('#example').DataTable({
			"ordering" : true,
			fixedHeader : true,
			"pageLength" : 5
		});
	}	
}
function OpenEntryPG(sMode, salesOrderId) {
	srchData = {
		"searchVarData" : sMode,
		"salesOrderId" : salesOrderId
	};
	//window.location.href = "/EZOfficeInventory/OpenSalesOrder?"
     window.location.href = "https://salepurchasecompany.co.in/OpenSalesOrder?"
			+ $.param(srchData);
}
function vwReport(salesOrderId) {
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
</script>
</html>