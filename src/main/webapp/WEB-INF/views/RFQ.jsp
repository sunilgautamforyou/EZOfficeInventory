<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Request For Quotation</title>
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
                            <li><a href="https://EZOfficeInventory.azurewebsites.net/partyMaster">Party Master</a></li>
                       </ul>
                    </li>
                    <li class="active"><a href="#purchase" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-bar-chart"></i>Transaction</a>
                        <ul id="purchase" class="collapse list-unstyled show">
                            <li><a href="https://EZOfficeInventory.azurewebsites.net/purchase">Purchase Order</a></li>
                            <li><a href="https://EZOfficeInventory.azurewebsites.net/salesOrder">Sales Order</a></li>
                            <li><a href="https://EZOfficeInventory.azurewebsites.net/makePayment">Make Payment</a></li>
                            <li><a href="https://EZOfficeInventory.azurewebsites.net/receicePymnt">Received Payment</a></li>
                            <li><a href="https://EZOfficeInventory.azurewebsites.net/mrn">Material Receipt</a></li>
                            <li class="active"><a href="https://EZOfficeInventory.azurewebsites.net/rfq">Quotation</a></li>
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
                    <li class="breadcrumb-item active">Request For Quotation</li>
                </ul>
            </div>
        </div>  
        <section>
        	<div class="container-fluid">
        		<div class="card">
        			<div class="card-body">
        				<div class="container">
							<div class="form-group row">
								<label class="col-sm-4 col-md-1 col-form-label">RFQ No.</label>
								<div class="col-sm-6 col-md-3 pl0">
									<input type="text" id="txtRFQNumber" class="form-control" placeholder="Quotation Number">
								</div>
								<label class="col-sm-4 col-md-1 col-form-label pl15">RFQ Date</label>
								<div class="col-sm-6 col-md-3 pl0 cal-position">
									<input type="text" id="txtRFQDate" class="form-control input-group date" placeholder="Quotation Date">
									<i class="fa fa-calendar"></i>
								</div>
							</div>  
							<div class="form-group row">
								<label class="col-sm-4 col-md-1 col-form-label">Tower</label>
								<div class="col-sm-6 col-md-3 pl0">
									<select class="custom-select" id="lstTowerNo">
										<!-- <option selected>Choose...</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option> -->
									</select>
								</div>
								<label class="col-sm-4 col-md-1 col-form-label pl15">Flat</label>
								<div class="col-sm-6 col-md-3 pl0 cal-position">
									<input type="text" id="txtFlatNumber" class="form-control" onblur="findCustomerData()" onkeypress="return isNumber(event)" placeholder="Flat Number">									
								</div>
							</div>
							<div class="form-group row">
							<label class="col-sm-4 col-md-1 col-form-label">Customer</label>
							<div class="col-sm-6 col-md-3 pl0">
								<input type="text" id="txtCustomerNm" class="form-control" placeholder="Customer Name">
							</div>
							<label class="col-sm-4 col-md-1 col-form-label pl15">Mobile</label>	
							 <div class="col-sm-6 col-md-3 pl0 cal-position">
								<input type="text" id="txtCustomerMobile" class="form-control" onkeypress="return isNumber(event)" placeholder="Contact Number">
							 </div>	
							</div>	
                             <div class="form-group row">
                               <label class="col-sm-4 col-md-1 col-form-label">Remarks</label>
                               <div class="col-sm-6 col-md-3 pl0">
                                   <textarea type="text" class="form-control" id="txtRemarks"  placeholder="Remarks Here" rows="2"></textarea>
                               </div>
                            </div>	
							<div class="form-group row" id="divSearchItem">
                            <label class="col-sm-4 col-md-1 col-form-label">Search Bar</label>
                            <div class="col-sm-3 col-md-3 pl0">
                                 <input type="text" class="form-control" id="searchData" placeholder="Enter Item Short/Description Here">
                              </div>   
                              <div class="col-sm-4 col-md-1 col-form-label pl15">
                                  	<Button ID="btnSrch" class="common-btn button-dark" onclick="openSearchBox()" >Search</Button>
                                </div>
                            </div>
        				</div>
						<div class="col-md-12 commen-space">
                                <div id="report" class="table-responsive style-8"> 
                                    <table class="table table-bordered table-hover" id="sotable">
                                      <thead id="reportMainHead" class="thead-dark">
                                         <tr>
                                          <th scope="col" hidden="true">ItemId</th> <!-- 0 -->
                                          <th scope="col" hidden="true">UomID</th> <!-- 1 -->
                                          <th scope="col">Sr No.</th> <!-- 2 -->
                                          <th scope="col">Item Description</th> <!-- 3 -->
                                          <th scope="col">UOM</th> <!-- 4 -->
                                          <th scope="col">Issue Date</th> <!-- 5 -->
                                          <th scope="col">GST%</th> <!-- 6 -->
                                          <th scope="col">Quantity</th> <!-- 7 -->
                                          <th  scope="col">Rate</th> <!-- 8 -->
                                          <th  scope="col">Amount</th> <!-- 9 -->
                                          <th  scope="col">Action</th> <!-- 10 -->
                                       </tr> 
                                      </thead>
                                      <tbody id="reportDtltdata"></tbody>
                                        <tr rowspan="2" >
                                            <td hidden="true"></td>
                                            <td hidden="true"></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td class="border-left"><b>Total Amount</b></td>
                                            <td class="border-left"> 
                                                <span><b><label id="lblTotal"></label></b>
                                                <i class="fa fa-rupee-sign"></i>
                                                </span>
                                              </td>
 											<td></td>                                            
                                           
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
                                    <Button ID="btnSave" onclick="saveRFQData()" class="common-btn">Save</Button>
                                    <Button ID="btnRefresh" onclick="refreshData()" class="common-btn">Refresh</Button>
                                    <Button ID="btnPrint" onclick="vwReport()" class="common-btn gray-btn">Print</Button>
                                    <Button ID="btnClose" onclick="exitToHomePage()" class="common-btn gray-btn">Exit</Button>

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
    <!--Modal Popup Area-->
	<div class="modal" tabindex="-1" role="dialog" id="userDataModel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Search Item Data</h5>
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
									<th hidden>Uomid</th> <!-- 1 -->
									<th>Item Short Name</th> <!-- 2 -->
									<th>Description</th> <!-- 3 -->
									<th>UOM</th> <!-- 4 -->
									<th>GST</th> <!-- 5 -->
									<th>Rate</th> <!-- 6 -->
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
    var tabRowLen = 0;   
    var delBtn;	
    var customerId = 0;
    var rfqId = 0;
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
	    function setCurrentDate() {
	    	var today = new Date();
	    	var dd = String(today.getDate()).padStart(2, '0');
	    	//var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
	    	var month = today.toLocaleString('default', { month: 'short' });

	    	var yyyy = today.getFullYear().toString().substr(-2);

	    	today = dd + '-' + month + '-' + yyyy;
	    		
	    	$("#txtRFQDate").val(today);
	    }	
	    $(document).ready(function () {
	    	$('#txtRFQNumber').attr('disabled', true);
	    	$('#btnPrint').hide();
	    	$('#txtCustomerNm').attr('disabled', true);
	    	$('#txtCustomerMobile').attr('disabled', true);	 
	    	if ("${sMode}" == "new" || "${sMode}" == "edit") {
	    		fillTowerData("0");
	    	}
	    	if ("${sMode}" == "new") {
	    		setCurrentDate();
	    	}	  
	    	if ("${sMode}" == "edit" || "${sMode}" == "view") {
	    		$("#txtRFQNumber").val("${rfq.getRfqNumber()}");
	    		$('#btnPrint').show();
	    		rfqId = "${rfq.getRfqId()}";
	    		if ("${rfq.getCustomerName()}" != "") {
	    			$('#txtCustomerNm').val("${rfq.getCustomerName()}");
	    			$('#txtCustomerNm').attr('disabled', true);
	    			customerId = "${rfq.getCustomerId()}";	    			
	    		}
	    		if ("${rfq.getCutomerMobileNo()}" != "") {
	    			$('#txtCustomerMobile').val("${rfq.getCutomerMobileNo()}");
	    			$('#txtCustomerMobile').attr('disabled', true);
	    		}	
	    		$('#txtRFQDate').val("${rfq.getRfqDate()}");
	    		$("#txtRFQDate").attr('disabled', true);
	    		if ("${rfq.getTowerNo()}" != "") {
	    			//$('#lstTowerNo').val("${so.getTowerNo()}");
	    			$('#lstTowerNo').html('');
	    			$('#lstTowerNo').append('<option value='+"${rfq.getTowerId()}"+'>'+"${rfq.getTowerNo()}"+'<->'+"${rfq.getTowerDescription()}"+'</option>');
	    			$('#lstTowerNo').attr('disabled', true);
	    		}	    
	    		if ("${rfq.getFlatNo()}" != "0") {
	    			$('#txtFlatNumber').val("${rfq.getFlatNo()}");
	    			$('#txtFlatNumber').attr('disabled', true);
	    		}	  
	    		if ("${rfq.getRemarks()}" != "") {
	    			$('#txtRemarks').val("${rfq.getRemarks()}");
	    		}	    
	    		if ("${sMode}" == "view") {
	    			$('#txtCustomerNm').attr('disabled', true);
	    			$('#txtCustomerMobile').attr('disabled', true);
	    			$('#lstTowerNo').attr('disabled', true);
	    			$('#txtFlatNumber').attr('disabled', true);
	    			$('#txtRemarks').attr('disabled', true);
					$("#divSearchItem").hide();
				    $('#btnSave').attr('disabled', true); 
				    $('#btnRefresh').attr('disabled', true);	    			
	    		}
	    		fillRFQDtlDataGrid("${rfq.getRfqId()}");
	    	}
	    });
	    function fillRFQDtlDataGrid(rfQId) {
	    	$.ajax({
				//url: '/EZOfficeInventory/bindQuotationDataGrid',
				url: 'https://EZOfficeInventory.azurewebsites.net/bindQuotationDataGrid',
		     	type: 'POST',
				contentType: 'application/json',	
				   data: JSON.stringify(
				   	{
				   		"searchVarData":rfQId
				   		
				   	}),
				   	dataType: 'json',
				   	success: function (data) {
				   		console.log(data);
  				        for(var i=0;i<data.length;i++){
  				            $('#tbodyLoan').html('');
  				            tabRowLen = tabRowLen + 1;
  				            delBtn= '<button type="button" class="common-btn btn-sm red-btn" id="delBtn" onclick="onClickDelete(event, ' + data[i].rfqId + ')")>Delete</button>';
  				            $("#reportDtltdata").append(
  				            		'<tr>'+
  				            		'<td hidden>'+ data[i].itemId +'</td>'+
  				            		'<td hidden>'+ data[i].uomId +'</td>'+
  				            		'<td>'+ tabRowLen +'</td>'+
  				            		'<td>'+ data[i].itemDesc +'</td>'+
  				            		'<td>'+ data[i].uomDesc +'</td>'+
  				            		'<td>'+ data[i].rfqDtlDate +'</td>'+
  				            		'<td>'+ data[i].gstPct +'</td>'+
  				            		'<td><input type="text" class="form-control" id="txtQty" onkeypress="return isNumber(event)" placeholder="Qty" value="'+ data[i].rfqQty +'"></td>'+
  				            		'<td><input type="text" class="form-control" id="txtRate" onkeypress="return isNumber(event)" placeholder="Rate" value="'+ data[i].rfqRate +'"></td>'+
  				            		'<td><input type="text" class="form-control" id="txtAmt" disabled="disabled" placeholder="Amount" value="'+ data[i].rfqAmount +'"></td>'+
  				            		'<td>'+delBtn+'</td>'+
  				            		+'</tr>');
  				         }
  				     	 calculateNetAmount();
	  				      if ("${sMode}" == "view") {
	  				    		$("#sotable").find("input,button,textarea,select").attr("disabled", "disabled");
	  				      }  				     	 
				   	},
				    error: function (error) {
				        console.log(`Error ${error}`);
				    }
			});	    	
	    }
	    function fillTowerData(towerId) {
	    	$.ajax({
	    		//url: '/EZOfficeInventory/get-tower-list',
	    		url: 'https://EZOfficeInventory.azurewebsites.net/get-tower-list',
	         	type: 'POST',
	    		contentType: 'application/json',	
	    		   data: JSON.stringify(
	    		   	{
	    		   		"searchVarData":towerId
	    		   		
	    		   	}),
	    		   	dataType: 'json',
	    		   	success: function (data) {
	    		   		console.log(data);
	    		   		$('#lstTowerNo').append('<option value=0>Choose Tower Number..</option>');
	    		        for(var i=0;i<data.length;i++){
	    		        	$('#lstTowerNo').append('<option value='+data[i].towerId+'>'+data[i].towerNumber+'<->'+data[i].towerDescription+'</option>');
	    		        }
	    		   	},
	    		    error: function (error) {
	    		        console.log(`Error ${error}`);
	    		    }
	    	});	
	    }
	    $('#lstTowerNo').on('change', function() {
	    	/* 	    	var ddlSelectedTowerData = $('#lstTowerNo').val(); 
	    		    	if (ddlSelectedTowerData != "Choose Tower Number..") {
	    		    		alert('Select FLAT Number');
	    		    		$('#txtFlatNumber').val('');
	    		    		$('#txtFlatNumber').focus();
	    		    	} */
	    		    	$('#txtFlatNumber').focus();
		    });
        function findCustomerData() {
        	
        	var towerNumber = $('#lstTowerNo').val();
        	var flatNumber = $('#txtFlatNumber').val();
        	
        	if ((flatNumber != "") && (towerNumber != "0")) {
            	$.ajax({
    	    		//url: '/EZOfficeInventory/search-customer-by-flatNo',
    	    		url: 'https://EZOfficeInventory.azurewebsites.net/search-customer-by-flatNo',
    	         	type: 'POST',
    	    		contentType: 'application/json',	
    	    		   data: JSON.stringify(
    	    		   	{
    	    		   		"towerNo":$('#lstTowerNo').val(),
    	    		   		"flatNo":$('#txtFlatNumber').val()
    	    		   		
    	    		   	}),
    	    		   	dataType: 'json',
    	    		   	success: function (data) {
    	    		   		console.log(data);
    	    		   		$('#txtCustomerNm').val(data.customerName);
    	    		   		$('#txtCustomerMobile').val(data.cutomerMobileNo);
    	    		   		customerId = data.customerId;
    	    		   	},
    	    		    error: function (error) {
    	    		        console.log(`Error ${error}`);
    	    		    }
    	    	});          		
        	} else {
        		if (towerNumber == "0") {
        			alert('Select Tower Number First');
        			$('#txtFlatNumber').val('');
        			$('#lstTowerNo').focus();
        			return false;
        		}
        	}
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
    				 //url: '/EZOfficeInventory/Search-ItemMaster-Data',
    				 url: 'https://EZOfficeInventory.azurewebsites.net/Search-ItemMaster-Data',
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
  									'<td hidden>'+data[i].itemId+'</td>'+
  									'<td hidden>'+data[i].uomId+'</td>'+
  									'<td>'+data[i].itemShortNm+'</td>'+
  									'<td>'+data[i].itemDescription+'</td>'+
  									'<td>'+data[i].uomName+'</td>'+
  									'<td>'+data[i].gstNo+'</td>'+
  									'<td>'+data[i].itemRate+'</td>'+
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
        	var today = new Date();
        	var dd = String(today.getDate()).padStart(2, '0');
        	var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
        	var yyyy = today.getFullYear().toString().substr(-2);

        	today = dd + '/' + mm + '/' + yyyy;
        	var currentRow=$(this).closest("tr"); 
            var itemId=currentRow.find("td:eq(0)").text();
            var itemName=currentRow.find("td:eq(3)").text();
            var uomId=currentRow.find("td:eq(1)").text();
            var col2=currentRow.find("td:eq(2)").text(); 
            var col3=currentRow.find("td:eq(4)").text(); 
            var gst=currentRow.find("td:eq(5)").text();
            var itemRate=currentRow.find("td:eq(6)").text();
	   		gridDataArray=[];
	   		$("#reportDtltdata tr").each(function(){
	   			i=0;var gridItemobj={};
	   			gridItemobj["itemId"] =$(this).closest('tr').find("td:eq(0)").text();
	    		gridItemobj["uomId"] = $(this).closest('tr').find("td:eq(1)").text();
	    		gridDataArray.push(gridItemobj);
	   		});
    		let filter = 
	    			gridDataArray.filter(d => 
	   			    d.itemId == itemId & 
	  			    d.uomId == uomId) 
  			if (filter.length > 0) {
  				alert("Item Already Added in this Quotation Order");
  				var $self = $(this);
  				if( $self.is(':checked') ){
  					setTimeout(function(){$self.removeAttr('checked');},0);
  				}
  				return false;
  			}            
            $('#userDataModel').modal('hide');
            $('#tbodyLoan').html('');
            tabRowLen = tabRowLen + 1;
            delBtn= '<button type="button" class="common-btn btn-sm red-btn" id="delBtn" onclick="onClickDelete(event, ' + itemId + ')")>Delete</button>';
            $("#reportDtltdata").append(
            		'<tr>'+
            		'<td hidden>'+ itemId +'</td>'+
            		'<td hidden>'+ uomId +'</td>'+
            		'<td>'+ tabRowLen +'</td>'+
            		'<td>'+ itemName +'</td>'+
            		'<td>'+ col3 +'</td>'+
            		'<td>'+ today +'</td>'+
            		'<td>'+ gst +'</td>'+
            		'<td><input type="text" class="form-control" id="txtQty"  placeholder="Qty"></td>'+
            		'<td><input type="text" class="form-control" id="txtRate" value="'+ itemRate +'" placeholder="Rate"></td>'+
            		'<td><input type="text" class="form-control" id="txtAmt" disabled="disabled" placeholder="Amount"></td>'+
            		'<td>'+delBtn+'</td>'+
            		+'</tr>');
           // $('#txtAmt').attr('disabled', true);
            $('#searchData').val('');
        });     
        function onClickDelete(event) {
        	  $(event.target).parents('tr').remove();
        	  calculateNetAmount();
       	};
      	function calculateNetAmount() {
    		  var txtTotalAmount = 0;	
    		  $('#reportDtltdata input').each(function (i,el) {
    			     el.name=el.name.replace(/\d+_?\d*/,
    			     $(el).parent().parent().index()+'_'+$(el).parent().index());
    			     el.id=el.id.replace(/\d+/,i);
    			     // comment out the following line for production version:
    			     //el.value="id:"+el.id+", name:"+el.name;
    			     if (el.id == "txtAmt") {
    			    	 txtTotalAmount = txtTotalAmount + parseFloat(el.value); 
    			     }
    			  });    		
    			  //alert(txtTotalAmount);
    			  $("#lblTotal").html(roundToTwo(txtTotalAmount));
    	}
     	$("#sotable").on('keyup','#txtQty',function(){
    		var qty= $(this).closest('tr').find('#txtQty').val();
    		var rate= $(this).closest('tr').find('#txtRate').val();
    		var gstPct = $(this).closest('tr').find("td:eq(6)").text();
    		if (rate == 0) {
    			rate = 1;
    		}
    		var soItemAmount = calculateSOItemAmt(parseFloat(qty),parseFloat(rate),parseFloat(gstPct));
    		$(this).closest('tr').find('#txtAmt').val(soItemAmount.toFixed(2));
    		calculateNetAmount();
    	});
      	$("#sotable").on('keyup','#txtRate',function(){
    		var qty= $(this).closest('tr').find('#txtQty').val();
    		var rate= $(this).closest('tr').find('#txtRate').val();
    		var gstPct = $(this).closest('tr').find("td:eq(6)").text();
    		if (rate == 0) {
    			rate = 1;
    		}
    		var soItemAmount = calculateSOItemAmt(parseFloat(qty),parseFloat(rate),parseFloat(gstPct));
    		$(this).closest('tr').find('#txtAmt').val(soItemAmount.toFixed(2));
    		calculateNetAmount();
    	});      
    	$('#sotable').on('keypress','#txtQty',function(event) {
    	    if (((event.which != 46 || (event.which == 46 && $(this).val() == '')) ||
    	            $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
    	        event.preventDefault();
    	    }
    	});	
    	$('#sotable').on('keypress','#txtRate',function(event) {
    	    if (((event.which != 46 || (event.which == 46 && $(this).val() == '')) ||
    	            $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
    	        event.preventDefault();
    	    }
    	});      	
     	function calculateSOItemAmt(soQty,soRate,gstPct) {
     		var itemAmount = (soQty * soRate);
     		if (gstPct > 0) {
     			var gstAmount = (itemAmount * gstPct)/100;
     			itemAmount = itemAmount + gstAmount;
     		}
     		return itemAmount; 
     	}  	
     	function validate() {
    		var isVldFail = true;
    		var soDate = $('#txtRFQDate').val();
    		var rfQDtlGrid = $("#reportDtltdata tr").length;
    		if (soDate == "") {
    			alert('Quotaion Date Cannot be left Blank');
    			$('#txtRFQDate').focus();
    			isVldFail = false;
    			return false;
    		}
    		if (rfQDtlGrid == "0") {
    			alert('Atleast Select One Item In SO');
    			$('#searchData').focus();
    			isVldFail = false;
    			return false;				
    		} 
    		var isVldFail;
    		$("#reportDtltdata tr").each(function(){
    			i=0;var itemDesc;var uomDesc;
    			$(this).children("td").each(function(){
    				if (i == 3) {
    					itemDesc = $(this).html();
    				} else if (i == 4) {
    					uomDesc = $(this).html();
    				} else if (i == 7) {
    				  if ($(this).closest('tr').find('#txtQty').val() == "") {
    					alert("Qty At Item:[" + itemDesc + "] With UOM :[" + uomDesc + "]\nCannot be left blank")
    					$(this).closest('tr').find('#txtQty').focus();
    					isVldFail = false;
    					return false;
    				  }
    				} else if (i == 8) {
    					if ($(this).closest('tr').find('#txtRate').val() == "") {
    						alert("Rate At Item:[" + itemDesc + "] With UOM :[" + uomDesc + "]\nCannot be left blank")
    						$(this).closest('tr').find('#txtRate').focus();
    						isVldFail = false;
    						return false;
    					}
    				}
    				i++;
    			});
    		});
    		
    		return isVldFail;     		
     	}
     	function saveRFQData() {
     		if (validate() == true) {
     			var arrayObj=[];
     			var flatNumber = 0;
    			if ($('#txtFlatNumber').val() != "") {
    				flatNumber = $('#txtFlatNumber').val();
    			}
    			$("#reportDtltdata tr").each(function(){
    				var obj={}, i=0;
    				$(this).children("td").each(function(){
    				      if (i == 0) {
    				    	  obj["itemId"]=$(this).closest('tr').find("td:eq(0)").text();  
    				      } else if (i == 1) {
    				    	  obj["uomId"]=$(this).closest('tr').find("td:eq(1)").text();
    				      } else if (i == 7) {
    				    	  obj["rfqQty"]=roundToTwo($(this).closest('tr').find('#txtQty').val());
    				      }  else if (i == 8) {
    				    	  obj["rfqRate"]=roundToTwo($(this).closest('tr').find('#txtRate').val());
    				      } else if (i == 9) {
    				    	  obj["rfqAmount"]=roundToTwo($(this).closest('tr').find('#txtAmt').val());
    				      } else if (i == 5) {
    				    	  obj["rfqDtlDate"]=$(this).closest('tr').find("td:eq(5)").text(); 
    				      } else if (i == 6) {
    				    	  obj["gstPct"]=$(this).closest('tr').find("td:eq(6)").text(); 
    				      }
    				      i++;					
    				})
    			    obj["sMode"] ="${sMode}";
    			    obj["towerNo"] =$('#lstTowerNo').val();
    			    obj["flatNo"] =flatNumber;
    			    obj["customerId"] =customerId;
    			    obj["rfqDate"] =$('#txtRFQDate').val();
    			    obj["remarks"] =$('#txtRemarks').val().replace(/(\r\n|\n|\r)/gm, "");
    			    obj["createdById"] =1;
    			    if ("${sMode}" == "edit") {
    			    	obj["rfqNumber"] =$("#txtRFQNumber").val();
    			    	obj["rfqId"] ="${rfq.getRfqId()}";
    			    }
    		    	arrayObj.push(obj);				
    			});   
    			console.log(arrayObj);
    			var xhr = new XMLHttpRequest();
    			//xhr.open("POST", "/EZOfficeInventory/Save-RFQ-Data", true);
    			xhr.open("POST", "https://EZOfficeInventory.azurewebsites.net/Save-RFQ-Data", true);
    			xhr.setRequestHeader("Content-Type", "application/json");
    			xhr.onreadystatechange = function () {
    				if (xhr.readyState === 4 && xhr.status === 200) {
    					  var responseData = JSON.parse(xhr.responseText);
    					  console.log(responseData);
    					  if (responseData.errorFlag == false) {
    				           $("#msgId").addClass("alert alert-success");
    				    	   $("#alertMsg").append(responseData.strMessage.substring(0,responseData.strMessage.indexOf(":"))); 
    				    	   $("#txtRFQNumber").val(responseData.strMessage.substring(responseData.strMessage.indexOf(":")+1,responseData.strMessage.length));
    				    	   $("#txtRFQDate").attr('disabled', true);
    				    	   $("#lstTowerNo").attr('disabled', true);
    				    	   $("#txtFlatNumber").attr('disabled', true);
    				    	   $("#txtRemarks").attr('disabled', true);
    				    	   $("#divSearchItem").hide();
    				    	   $("#sotable").find("input,button,textarea,select").attr("disabled", "disabled");
    				    	   $('#btnSave').attr('disabled', true); 
    				    	   rfqId = responseData.recordNumber;
    				    	   alert(responseData.strMessage);	
    				    	   $('#btnPrint').show();
    					  } else {
    			           	  $("#msgId").addClass("alert alert-success");
    			    	   	  $("#alertMsg").append(responseData.strMessage); 	 							
    					}    					
    				}
    			};
    			xhr.send(JSON.stringify(arrayObj)); 
     		}
     	}
    	function exitToHomePage() {
    		//location.href = "/EZOfficeInventory/salesOrder";
    		location.href = "https://EZOfficeInventory.azurewebsites.net/rfq";
    	}
    	function refreshData() {
    		//location.href = "/EZOfficeInventory/AddNewSalesOrder";
    		location.href = "https://EZOfficeInventory.azurewebsites.net/AddNewRFQ";
    	}    
		function vwReport() {
			srchData = {
					"rfQId" : rfqId
				};
				//window.location.href = "/EZOfficeInventory/PrintPO?"
				 //window.location.href = "https://EZOfficeInventory.azurewebsites.net/OpenPurchaseOrder?"
					//	+ $.param(srchData);
				//var poLink = "/EZOfficeInventory/PrintRFQ?"+ $.param(srchData);
				var poLink = "https://EZOfficeInventory.azurewebsites.net/PrintRFQ?"+ $.param(srchData);
				popitup(poLink);
		}
		function popitup(url) {
			newwindow=window.open(url,'name','height=600,width=900');
			if (window.focus) {newwindow.focus()}
			return false;
			}    
		function roundToTwo(num) {
		    return +(Math.round(num + "e+2")  + "e-2");
		}		
    </script>
</body>
</html>