<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Customer Master Home Page</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="https://salepurchasecompany.co.in/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://salepurchasecompany.co.in/css/dataTables.bootstrap4.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://salepurchasecompany.co.in/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="https://salepurchasecompany.co.in/css/fontastic.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
    <!-- Custom Scrollbar-->
    <link rel="stylesheet" href="https://salepurchasecompany.co.in/css/jquery.mCustomScrollbar.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="https://salepurchasecompany.co.in/css/style.css">
    <link rel="stylesheet" href="https://salepurchasecompany.co.in/css/responsive.css">
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
							<li class="nav-item"><a href="https://salepurchasecompany.co.in/" class="nav-link logout"> <span class="d-none d-sm-inline-block">Logout</span><i class="fa fa-sign-out"></i></a></li>                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <!-- Breadcrumb-->
        <div class="breadcrumb-holder">
            <div class="container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item active">Customer Master Home Page</li>
                </ul>
            </div>
        </div>
        <section>
			<div class="container-fluid">
				<div class="card">
					<div class="card-body">
						<div class="col-md-12 commen-space">
							<div class="form-group row">
								<a href="https://salepurchasecompany.co.in/AddNewCustomerMaster">Add New Customer Entry</a>
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
    <!-- JavaScript files-->
    <script src="https://salepurchasecompany.co.in/js/jquery.min.js"></script>
    <script src="https://salepurchasecompany.co.in/js/popper.min.js"></script>
    <script src="https://salepurchasecompany.co.in/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- Main File-->
    <script src="https://salepurchasecompany.co.in/js/custom.js"></script>          
</body>
<script type="text/javascript">
jQuery(document).ready(function($){
	var viewBtn;
	var editBtn;
	var table ;
/* 	var userName =  ${sessionScope.username};
	if (userName == "") {
		alert("You are not logged in";)
	} else {
		
	} */
	loadCustomerHomePGData();
});
function loadCustomerHomePGData() {
	$.ajax({
		//url: '/EZOfficeInventory/get-All-Customer-HomePG-Data',
		url: 'https://salepurchasecompany.co.in/get-All-Customer-HomePG-Data',
     	type: 'POST',
		contentType: 'application/json',	
		   data: JSON.stringify(
		   	{
		   		"searchVarData":""
		   		
		   	}),
		   	dataType: 'json',
		   	success: function (data) {
		   		console.log(data);
		        var k=1;
		          $('#mainHead').html(
		        		 '<tr>'+
		        		// '<th>Sr. No</th>'+
		                 '<th hidden>customerId</th>'+
		                 '<th >Customer Name</th>'+
		                 '<th >Tower No</th>'+
		                 '<th>Flat No</th>'+
		                 '<th>Mobile No</th>'+
		                 '<th >Action</th>'+
		                 '</tr>'	
		        );		   		
		        for(var i=0;i<data.length;i++){
		        	viewBtn= '<button type="button" class="common-btn btn-sm" id="viewbtn" onclick=OpenEntryPG("view",'+data[i].customerId+')>View</button>';
		        	editBtn= '<button type="button" class="common-btn gray-btn btn-sm" id="editbtn" onclick=OpenEntryPG("edit",'+data[i].customerId+')>Edit</button>';
		        	$('#tdata').append(
		        		'<tr>'+
		        		'<td hidden>'+data[i].customerId +'</td>'+
		        		'<td>'+data[i].customerName+'</td>'+
		        		'<td>'+data[i].towerNuber + '<->' + data[i].towerDesc +'</td>'+
		        		'<td>'+data[i].flatNumber+'</td>'+
		        		'<td>'+data[i].mobileNuber+'</td>'+
		        		'<td>'+viewBtn +'  '+editBtn+'</td>'+
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
	table = new DataTable('#example', {
		"ordering" : true,
		fixedHeader : true,
		"pageLength" : 5
	});
}
function OpenEntryPG(sMode, customerId) {
	srchData = {
		"searchVarData" : sMode,
		"customerId" : customerId
	};
	//window.location.href = "/EZOfficeInventory/OpenCustomer?"
	window.location.href = "https://salepurchasecompany.co.in/OpenCustomer?"
			+ $.param(srchData);
}
</script>
</html>