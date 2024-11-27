<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Stock Report</title>
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
                  	<li class="active"><a href="https://salepurchasecompany.co.in/stockReport">Stock Report</a></li>
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
                    <li class="breadcrumb-item active">Stock Report</li>
                </ul>
            </div>
        </div>   
         <section>
         	 <div class="container-fluid">
         	 	 <div class="card">
         	 	 	<div class="card-body">
         	 	 		<div class="container">
                                  <div class="form-group row">
                                    <label class="col-sm-4 col-md-1 col-form-label">ItemGroup:</label>
                                    <div class="col-sm-6 col-md-3 pl0">
                                      <select class="custom-select" id="lstItemGroup">
											<option selected>Choose...</option>
                                      </select>   
                                    </div>
                                    <label class="col-sm-4 col-md-1 col-form-label pl15">Search:</label>
                                    <div class="col-sm-6 col-md-3 pl0">
                                    	<input type="text" id="txtSearch" class="form-control" style="background-color: lightyellow;" placeholder="Enter Text To Seach Item Group">
                                    </div>
                                    <div class="col-sm-2 col-md-2 pl2" id="dvSrchItemGrp">
                                    	<a href="">Search</a>
                                    </div>	
                                  </div> 
                                  <div class="form-group row">
                                    <label class="col-sm-4 col-md-1 col-form-label">Item Name:</label>
                                    <div class="col-sm-6 col-md-3 pl0">
                                      <select class="custom-select" id="lstItem">
											<option selected>Choose...</option>
                                      </select>   
                                    </div>
                                    <label class="col-sm-4 col-md-1 col-form-label pl15">Search:</label>
                                    <div class="col-sm-6 col-md-3 pl0">
                                    	<input type="text" id="txtSearchItemNm" class="form-control" style="background-color: lightyellow;" placeholder="Enter Text To Seach Item Name">
                                    </div>
                                    <div class="col-sm-2 col-md-2 pl2" id="dvSrchItemNm">
                                    	<a href="#" onclick="seachItemByDesc();">Search</a>
                                    </div>	
                                  </div>    
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
         	 	 			</div>
               		<div id="msgId">
		          		<h5 id="alertMsg"></h5>
		          	</div> 
                     <div class="col-sm-6 text-center btn-spaceing mt6">
                        <div class=" w3-bar">
                            <div>
                            <Button ID="btnShow" onclick="getStockReportData()" class="common-btn">Show</Button>
                            <Button ID="btnRefresh" class="common-btn">Refresh</Button>
                            </div>
                            
                         </div>							       				
					</div> 
					<div class="container-fluid">
						<div class="card">
							<div class="card-body">
								<div class="col-md-12 commen-space">
									<div class="table-responsive style-8">
										<table id="stockTbl" class="table table-bordered table-hover no-footer" style="width:100%">
											 <thead id="reportMainHead" class="thead-dark">
		                                       <tr>
		                                          <th scope="col" hidden="true">ItemId</th>
		                                          <th scope="col" hidden="true">CategoryId</th>
		                                          <th scope="col">Sr No.</th>
		                                          <th scope="col">Item Group</th>
		                                          <th scope="col">Item Name</th>
		                                          <th scope="col">Opening Qty</th>
		                                          <th scope="col">Purchase Qty</th>
		                                          <th  scope="col">Issue Qty</th>
		                                          <th  scope="col">Closing Balance</th>
		                                       </tr>											 
											 </thead>
										     <tbody id="reportDtltdata"></tbody>		
										</table>							
									</div>
								</div>
							</div>
							<!-- Page Header-->
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
     $('.input-group.date').datepicker({
         format: "dd-M-yy",
         todayHighlight: true,
         autoclose: true,
         showMeridian: true,
         startDate: "-90d",
         endDate: "+30d",
     }).on('changeDate', function (ev) {
         $(this).datepicker('hide');
     });  
     $(document).ready(function () {
    	 setCurrentDate();
    	 fillCategoryMaster();
     });
     function fillCategoryMaster() {
     	$.ajax({
     		//url: '/EZOfficeInventory/getAllCategoryMaster',
     		url: 'https://salepurchasecompany.co.in/getAllCategoryMaster',
          	type: 'POST',
     		contentType: 'application/json',	
     		   data: JSON.stringify(
     		   	{
     		   		"searchVarData":""
     		   	}),
     		   	dataType: 'json',
     		   	success: function (data) {
     		   		console.log(data);
     		   		if ("${sMode}" == "new") {
         		   		$('#lstItemGroup').html('');
         		   		$('#lstItemGroup').append('<option value=0>Choose Item Category..</option>');
     		   		} else if ("${sMode}" == "edit") {
     		   			$('#lstItemGroup').find('[value="+"${itemData.getCategoryId()}"+"]').remove();	
     		   		}
     		        for(var i=0;i<data.length;i++){
     		        	$('#lstItemGroup').append('<option value='+data[i].categoryId+'>'+data[i].categoryCode+'<->'+data[i].categoryDesc+'</option>');
     		        }
     		   	},
     		    error: function (error) {
     		        console.log(`Error ${error}`);
     		    }
     	});	
     }     
     function fillItemOnCategoryChange(categoryId) {
    	 $.ajax({
    		 //url: '/EZOfficeInventory/getItemDetailStockReport',
    		 url: 'https://salepurchasecompany.co.in/getItemDetailStockReport',
    		 type: 'POST',
    		 contentType: 'application/json',
    		 data: JSON.stringify(
    		  {
    		   		"searchVarData":categoryId
	     	   }),
	     	  dataType: 'json',
	     	 success: function (data) {
	     		console.log(data);
	     		$('#lstItem').html('');
	     		if (data.length > 0) {
	     			$('#lstItem').append('<option value=0>Choose All Items</option>');
	 		        for(var i=0;i<data.length;i++){
	 		        	$('#lstItem').append('<option value='+data[i].itemId+'>'+data[i].itemDescription+'</option>');
	 		        }		     			
	     		} else {
	     			alert("No Item Found For this Category");
	     		}
     		
	     	 },
  		    error: function (error) {
 		        console.log(`Error ${error}`);
 		    }
    	 });
     }
     $('#lstItemGroup').on('change', function() {
    	 var itemCategId = $('#lstItemGroup').val();
    	 if (itemCategId != 0) {
    		 fillItemOnCategoryChange(itemCategId);
    		 $('#lstItemGroup').focus();
    	 }
     });
     function seachItemByDesc() {
    	 var searchDataVal=$('#txtSearchItemNm').val(); 
    	 if (searchDataVal == "") {
    		 alert("Enter Some text to Search Data");
    		 $('#lstItem').html('');
    		 $('#lstItemGroup').append('<option value=0>Choose...</option>');
    		 $('#txtSearchItemNm').focus();
    		 return false;
    	 } else {
			 $.ajax({
				 //url: '/EZOfficeInventory/Search-ItemMaster-Data',
				 url: 'https://salepurchasecompany.co.in/Search-ItemMaster-Data',
				 type: 'Post',
				 contentType: 'application/json',
				   	 data: JSON.stringify(
					 {
					    "searchVarData":searchDataVal
					 }),  
					success: function (data) {
						console.log(data);
						if(data.length!=0) {
							$('#lstItem').html('');
							for(var i=0;i<data.length;i++){
								$('#lstItem').append('<option value='+data[i].itemId+'>'+data[i].itemDescription+'</option>');
							}
						} else{
				  			alert("No details are available on given input.");
				  			$('#txtSearchItemNm').focus();
			        	}
					},
			    error: function (error) {
			        console.log(error);
			    }
			 });    		 
    	 }
     }
     function validate() {
    	 var itemCategId = $('#lstItemGroup').val();
    	 var itemId = $('#lstItem').val();
    	 
    	 if (itemCategId == 0) {
    		 alert("ItemCategory Cannot Left Blank");
    		 $('#lstItemGroup').foucs();
    		 return false;
    	 }
    	 return true;
     }
     function getStockReportData() {
    	 if (validate()==true) {
    		 $.ajax({
    			 //url: '/EZOfficeInventory/getDataForStockMasterReport',
    			 url: 'https://salepurchasecompany.co.in/getDataForStockMasterReport',
    			 type: 'Post',
    			 contentType: 'application/json',
			   	 data: JSON.stringify(
				 {
				    "itemId":$('#lstItem').val(),
				    "categId":$('#lstItemGroup').val(),
				    "fromDate":$('#txtFromDate').val(),
				    "toDate":$('#txtToDate').val()
				 }),    
				 success: function (data) {
					 console.log(data);
					 if(data.length!=0) {
						 var srlDataCount = 0;
						 $('#reportDtltdata').html('');
						 for(var i=0;i<data.length;i++){
							 srlDataCount++;
							 $('#reportDtltdata').append(
							   '<tr>'+
							   '<td hidden>'+data[i].itemId+'</td>'+
							   '<td hidden>'+data[i].categoryId+'</td>'+
							   '<td >'+srlDataCount+'</td>'+
							   '<td >'+data[i].categoryName+'</td>'+
							   '<td >'+data[i].itemName+'</td>'+
							   '<td >'+data[i].opening_Qty+'</td>'+
							   '<td >'+data[i].mrnQty+'</td>'+
							   '<td >'+data[i].saleQuantity+'</td>'+
							   '<td >'+data[i].closingQuantity+'</td>'+
							   '</tr>'
							 );	 
						 }
						 createNewDataTable();
					 } else {
						 alert("No Data found for input criteria")
						 $('#reportDtltdata').html('');
					 }
				 },
				    error: function (error) {
				        console.log(error);
				    }
    		 });
    	 }
     }
     function createNewDataTable() {
    		table = new DataTable('#stockTbl', {
    			"ordering" : false,
    			fixedHeader : true,
    			buttons: ['csv', 'excel'],
    			 columnDefs: [{
    				    class: 'details-control',
    				    orderable: false,
    				    data: null,
    				    defaultContent: '',
    				    targets: 0
    				  },
    			 ],
 			      dom: 'Bfrtip',
 			      buttons: [
 			         
 			          {
 			        	  className: 'common-btn',
 			              extend: 'excelHtml5',
 			              exportOptions: {
 			            	  columns: [  2,3,4,5,6,7,8 ],
 			            	  filename: 'repot'
 			              }
 			          },
 			          {
 			              extend: 'pdfHtml5',
 			              exportOptions: {
 			                  columns: [  2,3,4,5,6,7,8],
 			                  filename:'report'
 			              }
 			          },
 			         // 'colvis'
 			      ] 			      
    		});
    	}     
     function setCurrentDate() {
     	var today = new Date();
     	var dd = String(today.getDate()).padStart(2, '0');
     	//var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
     	var month = today.toLocaleString('default', { month: 'short' });

     	var yyyy = today.getFullYear().toString().substr(-2);

     	today = dd + '-' + month + '-' + yyyy;
     		
     	$("#txtFromDate").val(today);
     	$("#txtToDate").val(today);
     }     
     </script>
     
</html>