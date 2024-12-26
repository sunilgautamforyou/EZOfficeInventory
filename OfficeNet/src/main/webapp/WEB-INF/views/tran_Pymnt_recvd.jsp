<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Receive Case Payment</title>
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
                    <h2 class="h5"><a href="/loanApp/dashBoard">ABC</a></h2>
                </div>
                <!-- Small Brand information, appears on minimized sidebar-->
                <div class="sidenav-header-logo"><a href="/loanApp/dashBoard" class="brand-small text-center"> <strong>A</strong><strong>B</strong></a></div>
            </div>
            <!-- Sidebar Navigation Menus-->
            <div class="main-menu">
                <ul id="side-main-menu" class="side-menu list-unstyled">
                    <li class="active"><a href="#dashboard" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>Master</a>
                        <ul id="dashboard" class="collapse list-unstyled show">
                            <li><a href="/OfficeNet/CustomerHomePG">Customer Master</a></li>
                       </ul>
                    </li>
                    <li class="active"><a href="#purchase" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-bar-chart"></i>Transaction</a>
                        <ul id="purchase" class="collapse list-unstyled show">
                            <li><a href="/loanApp/">Create Job Card</a></li>
                            <li class="active"><a href="/loanApp/receivedPymnt">Received Payment</a></li>
                        </ul>
                    </li> 
                   <li class="active"><a href="#reports" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-book"></i>Reports</a>
                  	<ul id="reports" class="collapse list-unstyled show">
                  	<li><a href="/loanApp/pymntRcvdRpt">Statement Of Accounts</a></li>
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
                            <li class="nav-item"><a href="/loanApp" class="nav-link logout"> <span class="d-none d-sm-inline-block">Logout</span><i class="fa fa-sign-out"></i></a></li>
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
							<label class="col-sm-4 col-md-2 col-form-label">Customer Name:</label>
	                             <div class="col-sm-6 col-md-8 pl0">
	                                 <select class="custom-select" id="lstCustNo">
	                                     <option value="0">Choose Any Customer...</option>
				                		<option value="1">Ram [9810981010] [Area:Nangloi]</option>
				                		<option value="2">Tara [9810981010] [Area:Madipur]</option>
				                		<option value="2">Naresh [88855500] [Area:Nihal Vihar]</option>	                                     
	                                   </select>   
	                                   <br><a href="#">Search Customer</a>	
	                             </div>	
						</div>		
						<div class="form-group row">
							<label class="col-sm-4 col-md-2 col-form-label">Received Date:</label>
                             <div class="col-sm-6 col-md-3 pl0 cal-position">
                                 <input type="text" id="txtPymntDate" class="form-control input-group date" placeholder="Case Date">
                                 <i class="fa fa-calendar"></i>
                             </div>	
                             <label class="col-sm-4 col-md-1 col-form-label pl15">Remarks:</label>
                             <div class="col-sm-6 col-md-3 pl0">
                                 <input type="text" id="txtRemarks" class="form-control" placeholder="Remarks">
                             </div>                             						
						</div>		
					</div>
					<div class="col-md-12 commen-space">
						<div id="billDtl" class="table-responsive style-12">
						  <table class="table table-bordered table-hover" id="billtable">
						  	<thead id="billMainHead" class="thead-dark">
						  		<tr>
						  		<th scope="col">Srl</th>
						  		<th scope="col">Case Type</th>
						  		<th scope="col">Case Date</th>
						  		<th scope="col">Rate</th>
						  		<th scope="col">Case Amount</th>
						  		<th scope="col">Tenure</th>
						  		<th scope="col">Installment</th>
						  		<th scope="col">Last Received Date</th>
						  		<th scope="col">Total Received</th>
						  		<th scope="col">Balance</th>
						  		<th scope="col">Received Payment</th>
						  		</tr>
						  	</thead>
						  	<tbody>
						  	<tr> 
						  		<td><label>1</label></td>
						  		<td><input type="text" id="txtCaseType" value="Daily"></td>
						  		<td><input type="text" id="txtCaseDate" value="01-Oct-2024"></td>
						  		<td><input type="text" id="txtRate"></td>
								<td><input type="text" id="txtCaseAmt" value="50,000.00"></td>
								<td><input type="text" id="txtTenure" value="120 (Days)"></td>
								<td><input type="text" id="txtEmiAmt"  value="500.00"></td>
								<td><input type="text" id="txtLstRcvdDt"  value="10-Oct-2024"></td>
								<td><input type="text" id="txtTotalRecvd"  value="5,000.00"></td>
								<td><input type="text" id="txtBalAmt"  value="55,000.00"></td>
						  		<td><button id="btnShowHistory" class="common-btn">Received<br>Payment</button></td>
						  	</tr>
						  	<tr> 
						  		<td><label>2</label></td>
						  		<td><input type="text" id="txtCaseType" value="Meter"></td>
						  		<td><input type="text" id="txtCaseDate" value="01-Oct-2024"></td>
						  		<td><input type="text" id="txtRate" Value="100.00"></td>
								<td><input type="text" id="txtCaseAmt" value="10,000.00"></td>
								<td><input type="text" id="txtTenure"></td>
								<td><input type="text" id="txtEmiAmt" value="100.00"></td>
								<td><input type="text" id="txtLstRcvdDt"  value="10-Oct-2024"></td>
								<td><input type="text" id="txtTotalRecvd"  value="1,000.00"></td>
								<td><input type="text" id="txtBalAmt"  value="10,000.00"></td>
						  		<td><button id="btnShowHistory" class="common-btn">Received<br>Payment</button></td>
						  	</tr>						  	
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
    jQuery(document).ready(function($){
/*     	$('#txtCaseType').attr('readonly', true);
    	$('#txtCaseType').addClass('input-disabled');    	
    	$('#txtCaseDate').attr('readonly', true);
    	$('#txtCaseDate').addClass('input-disabled'); 
    	$('#txtRate').attr('readonly', true);
    	$('#txtRate').addClass('input-disabled');  
    	$('#txtCaseAmt').attr('readonly', true);
    	$('#txtCaseAmt').addClass('input-disabled');    	
    	$('#txtTenure').attr('readonly', true);
    	$('#txtTenure').addClass('input-disabled'); 
    	$('#txtEmiAmt').attr('readonly', true);
    	$('#txtEmiAmt').addClass('input-disabled');     	
    	$('#txtLstRcvdDt').attr('readonly', true);
    	$('#txtLstRcvdDt').addClass('input-disabled');    	
    	$('#txtTotalRecvd').attr('readonly', true);
    	$('#txtTotalRecvd').addClass('input-disabled'); 
    	$('#txtBalAmt').attr('readonly', true);
    	$('#txtBalAmt').addClass('input-disabled');      */	
    	$("table input[type='text']").prop("disabled", true); 
    });
    </script>
</body>
</html>