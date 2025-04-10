<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>ItemWise Stock Report</title>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
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
                  	<li  class="active"><a href="https://salepurchasecompany.co.in/itmStkRpt">ItemWise Stock Report</a></li>
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
                    <li class="breadcrumb-item active">ItemWise Stock Report</li>
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
			         		<div id="msgId">
					          		<h5 id="alertMsg"></h5>
					          	</div> 
			                     <div class="col-sm-6 text-center btn-spaceing mt6">
			                        <div class=" w3-bar">
			                            <div>
					                        <Button ID="btnShow" onclick="getStkReportData();" class="common-btn">Show</Button>&nbsp;&nbsp;&nbsp;
					                        <Button ID="btnRefresh"onclick="refreshData()" class="common-btn">Refresh</Button>&nbsp;&nbsp;&nbsp;
					                        <Button ID="btnExport"onclick="exportToExcel()" class="common-btn">Export</Button>&nbsp;&nbsp;&nbsp;
					                        <Button ID="btnPrint"onclick="printOut()" class="common-btn">Print</Button>
			                            </div>
			                            
			                         </div>							       				
								</div> 
							</div>
							<div class="col-md-12 commen-space">
								<div id="report" > 
                                    <table class="table table-bordered table-hover no-footer" id="stlTable">
                                      <thead id="reportMainHead" class="thead-dark">
		                                 <tr>
						                    <th scope="col" hidden="true">ItemId</th>
						                    <!-- <th scope="col">Sr No.</th> -->
						                    <th scope="col">Item Description</th>
						                    <th scope="col">Uom</th>
						                    <th scope="col">PO Qty</th>
						                    <th scope="col">PO Amt</th>		                                          
						                    <th  scope="col">Mrn Qty</th>
						                    <th  scope="col">Mrn Amt</th>
						                    <th  scope="col">SO Qty</th>
						                 	<th  scope="col">SO Amt</th>	
						                 	<th  scope="col">P&L Amt</th>
						                 	<th  scope="col">Bal Qty</th>
						                 	<th  scope="col">Last Pur Rate</th>
						                 	<th  scope="col">Approx Stk Amt</th>
  		                                   </tr>
                                      </thead>
                                      <tbody id="reportDtltdata"></tbody>
                                    </table>									
								</div>
							</div>   							
         	 	 		</div>
       	 	 		</div>
       	 		</div>	
        </section>         	
    </div>
</body>    
   <script src="js/jquery.min.js"></script>
   <script src="js/popper.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
   <script src="js/jquery.dataTables.min.js"></script>
   <script src="js/dataTables.bootstrap4.min.js"></script>
   <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
   <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
   <script type="text/javascript">
   $('.input-group.date').datepicker({
       format: "dd-M-yy",
       todayHighlight: true,
       autoclose: true,
       showMeridian: true,
       //startDate: "-365d",
       //endDate: "+30d",
   }).on('changeDate', function (ev) {
       $(this).datepicker('hide');
   });
   $(document).ready(function () {
	  	setCurrentDate();
	 	$('#txtFromDate').attr('readonly', true);
	 	$('#txtFromDate').addClass('input-disabled');	
	 	$('#txtToDate').attr('readonly', true);
	 	$('#txtToDate').addClass('input-disabled');		
	 	$('#btnPrint').hide();  	 	   
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
   function getStkReportData() {
	 var tabRowLen = 1;
	 var data = JSON.stringify({
		    "fromDate":$('#txtFromDate').val(),
		    "toDate":$('#txtToDate').val()
		});	   
	 var spinner = '<div class="spinner-border" role="status"><span class="visually-hidden">Loading...</span></div>';
	   $.ajax({
               //url:"/EZOfficeInventory/getStockItemWiseReport",
               url:"https://salepurchasecompany.co.in/getStockItemWiseReport",
               method:"POST",
               data: data,
               contentType: 'application/json',
               cache: false,
               processData: false,
               beforeSend:function(){
            	   $('#btnShow').html(spinner);
               },
               success:function(data)
               {
              	if (data.length > 0) {
              		for(var i=0;i<data.length;i++){
              			//console.log("Record:"+data[i].itemName)
              			$('#reportDtltdata').append(
              				'<tr><td hidden=true>'+ data[i].itemId +'</td>'+
              				/* '<td>'+ tabRowLen +'</td>'+ */
              				'<td>'+ data[i].itemName +'</td>'+
              				'<td>'+ data[i].uomName +'</td>'+
              				'<td>'+ formatNumber(parseFloat(data[i].poQty)) +'</td>'+
              				'<td>'+ formatNumber(parseFloat(data[i].poAmt)) +'</td>'+
              				'<td>'+ formatNumber(parseFloat(data[i].mrnQty)) +'</td>'+
              				'<td>'+ formatNumber(parseFloat(data[i].mrnAmt)) +'</td>'+
              				'<td>'+ formatNumber(parseFloat(data[i].soQty)) +'</td>'+
              				'<td>'+ formatNumber(parseFloat(data[i].soAmt)) +'</td>'+
              				'<td>'+ formatNumber(parseFloat(data[i].balAmt)) +'</td>'+
              				'<td>'+ formatNumber(parseFloat(data[i].balQty)) +'</td>'+
              				'<td>'+ formatNumber(parseFloat(data[i].lastPurchaseRate)) +'</td>'+
              				'<td>'+ formatNumber(parseFloat(data[i].approxBalStkAmt)) +'</td></tr>'
              			);
              			tabRowLen++;
              		}
              		createNewDataTable();
              		$('#btnShow').text("Show");
              		$('#btnShow').attr('disabled', true);
              		$('#txtFromDate').attr('disabled', true);
              		$('#txtToDate').attr('disabled', true);
              		$('#btnPrint').show();
              	}
              }
               ,error: function(ts)
               {
              	 $("#msgId").addClass("alert alert-danger");
              	 alert("error:" + ts.responseText);
              	 $('#btnShow').text("Show");
               }
	 });	   
   }
 	function formatNumber(n) {
 		return n.toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,");
  }    
    function createNewDataTable() {
		table = new DataTable('#stlTable', {
			"ordering" : true,
			fixedHeader : true,
			"pageLength" : 10,
			scrollX: true		
		});
	}  	
	function refreshData() {
		//location.href = "/EZOfficeInventory/itmStkRpt";
		location.href = "https://salepurchasecompany.co.in/itmStkRpt";
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
	function exportToExcel() {
		var fileName = "FromDt:" + $('#txtFromDate').val() + " ToDate:" + $('#txtToDate').val();
		tableToExcel("stlTable","ItemWiseStockReport","ItemWiseStockReport-"+fileName);
	}
	function printOut() {
		srchData = {
			    "fromDate":$('#txtFromDate').val(),
			    "toDate":$('#txtToDate').val()
			};
			//var poLink = "/EZOfficeInventory/openStockItemWiseReport?"+ $.param(srchData);
			var poLink = "https://salepurchasecompany.co.in/openStockItemWiseReport?"+ $.param(srchData);
			popitup(poLink);		
	}	
	function popitup(url) {
		newwindow=window.open(url,'name','height=600,width=1200');
		if (window.focus) {newwindow.focus()}
		return false;
	} 	 		
   </script>    


</html>