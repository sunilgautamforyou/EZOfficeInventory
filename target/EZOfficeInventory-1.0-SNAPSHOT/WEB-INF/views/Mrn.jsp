<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Material Receipt Note</title>
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
body {
  margin: 0
}

table {
  width: 100%
}

thead th,
tfoot tr {
  position: sticky;
  background: white;
}

thead th {
  top: 0
}

tfoot tr {
  bottom: 0
}

th,
td {
  font-size: 12px;
  text-align: center
}


/*give some space between thead and tfoot*/

tbody tr:first-of-type td {
  padding-top:  10px;
}

tbody tr:last-of-type td {
  padding-bottom: 10px;
}    
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
                            <li class="active"><a href="https://EZOfficeInventory.azurewebsites.net/mrn">Material Receipt</a></li>
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
                    <li class="breadcrumb-item active">Material Receipt Note</li>
                </ul>
            </div>
        </div> 
  <section>
  	<div class="container-fluid">
   		<div class="card">
   			<div class="card-body">
   				<div class="container">
                        <div class="form-group row">
                            <label class="col-sm-4 col-md-2 col-form-label">Party Name.</label>
                            <div class="col-sm-6 col-md-3 pl0">
                                 <select class="custom-select" id="lstPartyNo">
                               		<option value="0">Choose Any Party...</option>
                          		</select> 
                          	</div>
                            <label class="col-sm-4 col-md-1 col-form-label pl15">MRN No.</label>
                            <div class="col-sm-6 col-md-3 pl0">
                          		<input type="text" id="txtMRNNumber" class="form-control" placeholder="MRN Number">                             
                          	</div>
                         </div>							   					
						<div class="form-group row">
							<label class="col-sm-4 col-md-2 col-form-label">PO No</label>
               				<div class="col-sm-6 col-md-3 pl0">
                   				<select class="custom-select" id="lstPoNo">
                   				 	<option value="0">Choose PO No...</option>
                   				</select>   
               				</div>	
                            <label class="col-sm-4 col-md-1 col-form-label pl15">Bill No.</label>
                            <div class="col-sm-6 col-md-3 pl0">
                               <input type="text" id="txtBillNumber" class="form-control" placeholder="Party Bill Number">
                             </div>               										
						</div> 
                        <div class="form-group row">
                            <label class="col-sm-4 col-md-2 col-form-label">MRN Date.</label>
                            <div class="col-sm-6 col-md-3 pl0 cal-position">
                                 <input type="text" id="txtMrnDate" class="form-control input-group date" placeholder="MRN Date">
                                  <i class="fa fa-calendar"></i>                             
                              </div>
                         </div>						
                    	<div class="form-group row" id="divSearchItem">
                   			<label class="col-sm-4 col-md-2 col-form-label">Search Bar</label>
                   			<div class="col-sm-6 col-md-3 pl0 cal-position">
                   				<Button ID="btnAdd" class="common-btn button-dark" onclick="openSearchBox()">Add Items</Button>
                   			</div>
                    	</div>	
                    </div>	
					<div class="col-md-12 commen-space">
						<div id="report" class="table-responsive style-8">
							<table class="table table-bordered table-hover" id="mrnTable">
								<thead id="reportMainHead" class="thead-dark">
									<tr>
										<th scope="col" hidden="true">mrnId</th> <!-- 0 -->
										<th scope="col" hidden="true">ItemId</th> <!-- 1 -->
										<th scope="col" hidden="true">uomId</th> <!-- 2 -->
										<th scope="col">Sr No.</th> <!-- 3 -->
										<th scope="col">Item Description</th> <!-- 4 -->
										<th scope="col">Uom</th> <!-- 5 -->
										<th scope="col">PO Qty</th> <!-- 6 -->
										<th scope="col">PO Rate</th> <!-- 7 -->
										<th scope="col">GST%</th> <!-- 8 -->
										<th scope="col">Received Qty</th> <!-- 9 -->
										<th scope="col">Balance Qty</th> <!-- 10 -->
										<th scope="col">MRN Qty</th> <!-- 11 -->
										<th scope="col">Discount %</th> <!-- 12 -->
										<th scope="col">Amount</th> <!-- 13 -->
										<th scope="col">Action</th> <!-- 14 -->
									</tr>
								</thead>
								<tbody id="reportDtltdata"></tbody>
								<tfoot id="reportDtltfoot">
								<tr rowspan="2" >
									<td hidden="true"></td>
									<td hidden="true"></td>
									<td hidden="true"></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td class="border-left"><b>Total Amount</b></td>
                                     <td class="border-left"> 
                                         <span><b><label id="lblTotal"></label></b></span>
                                           <i class="fa fa-rupee-sign"></i>
                                       </td>
									<td></td>
								</tr>
								</tfoot>
							</table>
						</div>
					</div>	
               		<div id="msgId">
		          		<h5 id="alertMsg"></h5>
		          	</div> 
                     <div class="col-sm-6 text-center btn-spaceing mt15">
                        <div class=" w3-bar">
                            <Button ID="btnSave" onclick="saveData()" class="common-btn">Save</Button>
                            <Button ID="btnRefresh" class="common-btn">Refresh</Button>
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
									<th hidden>id</th>
									<th hidden>Uomid</th>
									<th>Description</th>
									<th>UOM</th>
									<th>Qty</th>
									<th><input type="button" id="btnAddSrchItem" value="Add Checked Item">
									<br><label class="radio-inline"><input type="checkbox" id="selectall" name="selectAllUser">Select All</label>
									</th>
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
    <!-- Main File-->
    <script src="js/custom.js"></script>
    <script type="text/javascript">
    var tabRowLen = 1;   
    var delBtn;
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
    		
    	$("#txtMrnDate").val(today);
    }
    
    function loadPartyData() {
    	$.ajax({
    		//url: '/EZOfficeInventory/get-all-HomePG-Party-data',
    		url: 'https://EZOfficeInventory.azurewebsites.net/get-all-HomePG-Party-data',
         	type: 'POST',
    		contentType: 'application/json',	
    		   data: JSON.stringify(
    		   	{
    		   		"searchVarData":""
	   		   	}),
    		   	dataType: 'json',
    		   	success: function (data) {
    		   		console.log(data);
    		   		if (data.length > 0) {
       		        	for(var i=0;i<data.length;i++){
    		        		$('#lstPartyNo').append('<option value='+data[i].partyId+'>'+data[i].partyName+'</option>');
    		        	}    		   			
    		   		} else {
    		   			alert("No Party Dat")
    		   		}

    		   	},
    		    error: function (error) {
    		        console.log(`Error ${error}`);
    		    }
    	});    	
    }
    function fillPoNumber() {
    	$.ajax({
    		//url: '/EZOfficeInventory/fillPOInMakePymntPG',
    		url: 'https://EZOfficeInventory.azurewebsites.net/fillPOInMakePymntPG',
         	type: 'POST',
    		contentType: 'application/json',	
    		   data: JSON.stringify(
    		   	{
    		   		"searchVarData":$('#lstPartyNo').val()
	   		   	}),
    		   	dataType: 'json',
    		   	success: function (data) {
    		   		console.log(data);
    		   		if (data.length > 0) {
       		        	for(var i=0;i<data.length;i++){
    		        		$('#lstPoNo').append('<option value='+data[i].ipoId+'>'+data[i].poNo+'<->'+data[i].poDate+'</option>');
    		        	}    		   			
    		   		} else {
    		   			alert("No Purchase Order Available For Selected Party")
    		   		}

    		   	},
    		    error: function (error) {
    		        console.log(`Error ${error}`);
    		    }
    	});    	
    }
    $('#lstPartyNo').on('change', function() {
    	var partyNo = $('#lstPartyNo').val();
    	$('#lstPoNo').html('');
    	$('#lblTotal').html('');
    	$('#reportDtltdata').html('');
    	$('#lstPoNo').append('<option value="0">Choose PO No...</option>');
    	if (partyNo != 0) {
    		fillPoNumber();
    	}
    });
    $('#lstPoNo').on('change', function() {
    	$('#reportDtltdata').html('');
    	$('#lblTotal').html('');
    	$('#txtBillNumber').focus();
    });    
    function openSearchBox() {
    	$.ajax({
    		url: 'https://EZOfficeInventory.azurewebsites.net/getAllPoItemsForMrnDetails',
    		//url: '/EZOfficeInventory/getAllPoItemsForMrnDetails',
    		type: 'Post',
    		contentType: 'application/json',
		   	 data: JSON.stringify(
			 {
			    "searchVarData":$('#lstPoNo').val()
			 }),  
			 success: function (data) {
				 console.log(data);
				 if(data.length!=0) {
					 $('#optionData').show();
					 $('#tbodyLoan').html('');
					 arrayObj=[];
					 for(var i=0;i<data.length;i++){
						 var obj={};
						 $('#tbodyLoan').append(
						'<tr>'+
						'<td hidden>'+data[i].itemId+'</td>'+
						'<td hidden>'+data[i].uomId+'</td>'+
						'<td>'+data[i].itemDesc+'</td>'+
						'<td>'+data[i].uomDesc+'</td>'+
						'<td>'+data[i].poQty+'</td>'+
						'<td><label class="radio-inline"><input type="checkbox" id="chkItem" name="selectUser" value='+data[i].itemId+'>Select</label></td></tr>'
						);			
						obj["itemId"]=data[i].itemId; 
						obj["uomId"]=data[i].uomId; 
						obj["itemDesc"]=data[i].itemDesc; 
						obj["uomDesc"]=data[i].uomDesc; 
						obj["poQty"]=data[i].poQty; 
						obj["poRate"]=data[i].poRate; 
						obj["mrnQty"]=data[i].mrnQty; 
						obj["gstPct"]=data[i].gstPct; 
						arrayObj.push(obj);
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
    $('#selectall').click(function() {
    	if ($(this).is(':checked')) {
    		$("#tbodyLoan tr").each(function(){
    			i=0;
    			$(this).children("td").each(function(){
    				if (i == 5) {
    					$(this).closest('tr').find('#chkItem').prop('checked', true);
    				}
    				i++;
    			});
    		});
    	} else {
    		$("#tbodyLoan tr").each(function(){
    			i=0;
    			$(this).children("td").each(function(){
    				if (i == 5) {
    					$(this).closest('tr').find('#chkItem').prop('checked', false);
    				}
    				i++;
    			});
    		});
    	}
    });
    $('#btnAddSrchItem').click(function() {
    	var isChkdItemExists = false;
    	checkedItemArrayObj=[];
    	$("#tbodyLoan tr").each(function(){
    		i=0;
    		$(this).children("td").each(function(){
    			if (i == 5) {
    				var checked = $(this).closest('tr').find('#chkItem').prop('checked');
    				if (checked == true) {
    					var obj={};
						obj["itemId"]=$(this).closest('tr').find("td:eq(0)").text(); 
						obj["uomId"]=$(this).closest('tr').find("td:eq(1)").text();
						checkedItemArrayObj.push(obj);
    					isChkdItemExists = true;
    				}
    			}
    			i++;
    		});
    	});
    	if (isChkdItemExists == false) {
    		alert("Select Atlease One Item");
    		return false;
    	}
    	gridDataArray=[];
    	$("#reportDtltdata tr").each(function(){
    		i=0;var gridItemobj={};
/*     		$(this).children("td").each(function(){
    			if (b == 0) {
    				gridItemobj["itemId"] = $(this).html();
    			} if (b == 1) {
    				gridItemobj["uomId"] = $(this).html();
    			}
    		}); */
    		gridItemobj["itemId"] =$(this).closest('tr').find("td:eq(0)").text();
    		gridItemobj["uomId"] = $(this).closest('tr').find("td:eq(1)").text();
    		gridItemobj["itemDesc"] = $(this).closest('tr').find("td:eq(3)").text();
    		gridItemobj["UomDesc"] = $(this).closest('tr').find("td:eq(4)").text();
    		gridDataArray.push(gridItemobj);
    	});
    	
    	for(var i=0;i<checkedItemArrayObj.length;i++){
    		var obj={};var itemId = 0;var uomId = 0; 
    		obj = checkedItemArrayObj[i];
    		var keys = $.map( obj, function( value, key ) {
    		  if (key == "itemId") {
    			  itemId = value;
    		  }
    		  if (key == "uomId") {
    			  uomId = value;
    		  }
    		});
    		let filter = 
    			gridDataArray.filter(d => 
   			    d.itemId == itemId & 
  			    d.uomId == uomId
  			) 
  			if (filter.length > 0) {
  				var data = JSON.stringify(filter);
  	    		var stringify = JSON.parse(data); 
  	    		for (var k = 0; k < stringify.length; k++) {
  	    			alert("Duplicate Item Not Allowed. \nItem ["+ stringify[k]['itemDesc'] +" With UOM "+ stringify[k]['UomDesc'] +"] Already Add in Grid.");
  	    		}
  				return false;
  			}
    	}
    	
    	for(var i=0;i<checkedItemArrayObj.length;i++){
    		var obj={};var itemId = 0;var uomId = 0; 
    		obj = checkedItemArrayObj[i];
    		var keys = $.map( obj, function( value, key ) {
    		  if (key == "itemId") {
    			  itemId = value;
    		  }
    		  if (key == "uomId") {
    			  uomId = value;
    		  }
    		});
   		  
    		let filter = 
			  arrayObj.filter(d => 
 			    d.itemId == itemId & 
			    d.uomId == uomId
			)   
			var data = JSON.stringify(filter);
    		var stringify = JSON.parse(data);
    		for (var k = 0; k < stringify.length; k++) {
    			delBtn= '<button type="button" class="common-btn btn-sm red-btn" id="delBtn" onclick="onClickDelete(event, ' + stringify[k]['itemId'] + ')")>Delete</button>';
    			var balanceQty = parseFloat(stringify[k]['poQty']) - parseFloat(stringify[k]['mrnQty']); 
    			$("#reportDtltdata").append(
    	    			'<tr>'+
    	    			'<td hidden></td>'+
    	    			'<td hidden>'+stringify[k]['itemId']+'</td>'+
    	    			'<td hidden>'+stringify[k]['uomId']+'</td>'+
    	    			'<td>'+tabRowLen+'</td>'+
    	    			'<td>'+stringify[k]['itemDesc']+'</td>'+
    	    			'<td>'+stringify[k]['uomDesc']+'</td>'+
    	    			'<td>'+stringify[k]['poQty']+'</td>'+
    	    			'<td>'+stringify[k]['poRate']+'</td>'+
    	    			'<td>'+stringify[k]['gstPct']+'</td>'+
    	    			'<td>'+stringify[k]['mrnQty']+'</td>'+
    	    			'<td>'+balanceQty+'</td>'+
    	    			'<td><input type="text" class="form-control" id="txtMrnQty" onkeypress="return isNumber(event)" placeholder="Qty"></td>'+
    	    			'<td><input type="text" class="form-control" id="txtDiscPct" onkeypress="return isNumber(event)" placeholder="Discount%"></td>'+
    	    			'<td></td>'+
    	    			'<td>'+delBtn+'</td>'+
    	    		   +'</tr>'
   	    		); 
    			tabRowLen++;
    		}
    		$('#userDataModel').modal('hide');
    	}
    });
    function onClickDelete(event) {
  	  $(event.target).parents('tr').remove();
  	  calacuateNetMrnAmount();
 	};  
 	
 	function saveData() {
 		mrnGridItemArray=[];
 		if (validate() == true) {
 	 		$("#reportDtltdata tr").each(function(){
 	 			var obj={}, i=0;
 	 			obj["mrnDtlId"]=$(this).closest('tr').find("td:eq(0)").text();
 	 			obj["itemId"]=$(this).closest('tr').find("td:eq(1)").text();
 	 			obj["uomId"]=$(this).closest('tr').find("td:eq(2)").text();
 	 			obj["poQty"]=$(this).closest('tr').find("td:eq(6)").text();
 	 			obj["poRate"]=$(this).closest('tr').find("td:eq(7)").text();
 	 			obj["gstPct"]=$(this).closest('tr').find("td:eq(8)").text();
 	 			obj["receivedQtyTillDate"]=$(this).closest('tr').find("td:eq(9)").text();
 	 			obj["balanceQty"]=$(this).closest('tr').find("td:eq(10)").text();
 	 			obj["mrnQty"]=$(this).closest('tr').find('#txtMrnQty').val();
 	 			obj["discountPct"]=$(this).closest('tr').find('#txtDiscPct').val();
 	 			obj["mrnItemAmount"]=$(this).closest('tr').find("td:eq(13)").text();
 	 			obj["sMode"]="${sMode}";
 	 			obj["mrnDate"]=$('#txtMrnDate').val();
 	 			obj["partyId"]=$('#lstPartyNo').val();
 	 			obj["poID"]=$('#lstPoNo').val();
 	 			obj["createdby"]="1";
 	 			obj["mrnNo"]=$('#txtMRNNumber').val();
 	 			if ("${sMode}" != "new") {
 	 				obj["mrnId"]="${mrn.getMrnId()}";	
 	 			}
 	 			obj["partyBillNumber"] = $('#txtBillNumber').val();
 	 			mrnGridItemArray.push(obj);
 	 		}); 		
 	 		console.log(mrnGridItemArray);
 	 		var xhr = new XMLHttpRequest();
 	 		//xhr.open("POST", "/EZOfficeInventory/InsertUpdateMrnData", true);
 	 		xhr.open("POST", "https://EZOfficeInventory.azurewebsites.net/InsertUpdateMrnData", true);
 	 		xhr.setRequestHeader("Content-Type", "application/json");
 	 		xhr.onreadystatechange = function () {
 	 			if (xhr.readyState === 4 && xhr.status === 200) {
 	 				 var responseData = JSON.parse(xhr.responseText);
 	 				 console.log(responseData);
 	 				 if (responseData.errorFlag == false) {
 	 					$("#msgId").addClass("alert alert-success");
 	 					$("#alertMsg").append(responseData.strMessage.substring(0,responseData.strMessage.indexOf(":")));
 	 					$("#mrnTable").find("input,button,textarea,select").attr("disabled", "disabled");
 	 					$('#txtMRNNumber').val(responseData.strMessage.substring(responseData.strMessage.indexOf(":")+1,responseData.strMessage.length));
 	 					$('#lstPartyNo').attr('disabled', true);
 	 					$('#lstPoNo').attr('disabled', true);
 	 					$('#txtMrnDate').attr('disabled', true);
 	 					$('#txtBillNumber').attr('disabled', true);
 	 					alert(responseData.strMessage);	
 	 				} else {
 	 					$("#msgId").addClass("alert alert-success");
 	 					$("#alertMsg").append(responseData.strMessage); 	
 	 				}
 	 			}
 	 		};
 	 		xhr.send(JSON.stringify(mrnGridItemArray)); 
 		}

 	}
 	function validate() {
 		if ($('#lstPartyNo').val() == "0") {
 			alert("Select Party First");
 			$('#lstPartyNo').focus();
 			return false;
 		}
 		if ($('#lstPoNo').val() == "0") {
 			alert("Select PO Number First");
 			$('#lstPoNo').focus();
 			return false;
 		} 	
 		if ($('#txtMrnDate').val() == "") {
 			alert("Select Mrn Date First");
 			$('#txtMrnDate').focus();
 			return false;
 		} 		
 		var isGridHasRow = false;
 		$("#reportDtltdata tr").each(function(){
 			if ($(this).closest('tr').find('#txtMrnQty').val() == "" ||
 					$(this).closest('tr').find('#txtMrnQty').val() == "0") {
 				alert("MRN Qty at Item["+ $(this).closest('tr').find("td:eq(4)").text()
 					+"] Can't be Left Blank or Zero");
 				$(this).closest('tr').find('#txtMrnQty').focus();
 				isGridHasRow = true;
 				return false;
 			}
 			isGridHasRow = true;
 		});
 		if (isGridHasRow == false) {
 			alert("Select Atleast One Item in Details");
 			$('#btnAdd').focus();
 			return false;
 		}
 		return true;
 	}
 	$("#mrnTable").on('blur','#txtMrnQty',function(){
 		var mrnQty= $(this).closest('tr').find('#txtMrnQty').val();
 		var balanceQty = $(this).closest('tr').find("td:eq(10)").text();
 		var poRate = $(this).closest('tr').find("td:eq(7)").text();
 		var gstPct = $(this).closest('tr').find("td:eq(8)").text();
 		var discountPct = $(this).closest('tr').find('#txtDiscPct').val();
 		if (parseFloat(mrnQty) > parseFloat(balanceQty)) {
 			alert("MRN Qty Cannot be More than PO Balance Qty.");
 			$(this).closest('tr').find('#txtMrnQty').val('0');
 			$(this).closest('tr').find('#txtMrnQty').focus();
 			return false;
 		} 	
 		if (discountPct == "") {
 			discountPct = "0";
 		}
 		var mrnAmount = calculateMrnItemAmt(parseFloat(mrnQty),parseFloat(poRate),parseFloat(discountPct),parseFloat(gstPct));
 		$(this).closest('tr').find("td:eq(13)").text(mrnAmount);
 		calacuateNetMrnAmount();
 	});
	$('#mrnTable').on('keypress','#txtMrnQty',function(event) {
	    if (((event.which != 46 || (event.which == 46 && $(this).val() == '')) ||
	            $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
	        event.preventDefault();
	    }
	});   	
	$('#mrnTable').on('keypress','#txtMrnQty',function(event) {
	    if (((event.which != 46 || (event.which == 46 && $(this).val() == '')) ||
	            $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
	        event.preventDefault();
	    }
	});	
	$('#mrnTable').on('keypress','#txtDiscPct',function(event) {
	    if (((event.which != 46 || (event.which == 46 && $(this).val() == '')) ||
	            $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
	        event.preventDefault();
	    }
	});  	
 	function calculateMrnItemAmt(mrnQty,poRate,disPct,gstPct) {
 		var itemAmount = (mrnQty * poRate);
 		if (disPct > 0) {
 			var discountAmt = (itemAmount * disPct)/100;
 			itemAmount = itemAmount - discountAmt;
 		} 
 		if (gstPct > 0) {
 			var gstAmt = (itemAmount * gstPct)/100;
 			itemAmount = itemAmount + gstAmt; 
 		} 		
 		return itemAmount; 
 	}
 	$("#mrnTable").on('keyup','#txtDiscPct',function(){
 		var mrnQty= $(this).closest('tr').find('#txtMrnQty').val();
 		var poRate = $(this).closest('tr').find("td:eq(7)").text();
 		var discountPct = $(this).closest('tr').find('#txtDiscPct').val();
 		var gstPct = $(this).closest('tr').find("td:eq(8)").text();
 		if (parseFloat(discountPct) > 99) {
 			alert("Discount Cannot be 100 Percentage.")
 			$(this).closest('tr').find('#txtDiscPct').val('0');
 			$(this).closest('tr').find('#txtDiscPct').focus();
 			discountPct = 0;
 		}
 		if (discountPct == "") {
 			discountPct = "0";
 		} 		
 		var mrnAmount = calculateMrnItemAmt(parseFloat(mrnQty),parseFloat(poRate),parseFloat(discountPct),parseFloat(gstPct));
 		$(this).closest('tr').find("td:eq(13)").text(mrnAmount.toFixed(2)); 
 		calacuateNetMrnAmount();
 	});
 	function calacuateNetMrnAmount() {
 		 var netMrnAmount = 0;
 		$('#lblTotal').html('');
 		$("#reportDtltdata tr").each(function(){
 	 		netMrnAmount = netMrnAmount + parseFloat($(this).closest('tr').find("td:eq(13)").text());
 	 	});
 	 	$('#lblTotal').html(netMrnAmount);
 	}
    jQuery(document).ready(function($){
    	var viewBtn;
    	var editBtn;
    	var table ;
    	$('#txtMRNNumber').attr('disabled', true);
		if ("${sMode}" == "new") {
			loadPartyData();
			setCurrentDate();
		}    	
		if ("${sMode}" == "edit" || "${sMode}" == "view") {
			$("#txtMrnDate").val("${mrn.getMrnDate()}");
			$('#lstPartyNo').html('');
			$('#lstPoNo').html('');
			$('#lstPartyNo').append('<option value='+"${mrn.getPartyId()}"+'>'+"${mrn.getPartyName()}"+'</option>');
			$('#lstPoNo').append('<option value='+"${mrn.getPoID()}"+'>'+"${mrn.getPoNumber()}"+'</option>');
			$('#txtBillNumber').val("${mrn.getPartyBillNumber()}");
			$("#txtMrnDate").attr('disabled', true);
			$("#lstPartyNo").attr('disabled', true);
			$("#lstPoNo").attr('disabled', true);
			$('#txtMRNNumber').val("${mrn.getMrnNo()}");
		}
		if ("${sMode}" == "view") {
			$('#divSearchItem').hide();
		     $('#btnSave').attr('disabled', true); 
		     $('#btnRefresh').attr('disabled', true);
		     $('#txtBillNumber').attr('disabled', true);
		}
		fillItemInMrnGrid("${mrn.getMrnId()}");
    });
    function fillItemInMrnGrid(mrnId) {
		$.ajax({
			//url: '/EZOfficeInventory/getAllItemForMRNDetails',
			url: 'https://EZOfficeInventory.azurewebsites.net/getAllItemForMRNDetails',
	     	type: 'POST',
			contentType: 'application/json',	
			   data: JSON.stringify(
			   	{
			   		"searchVarData":mrnId
			   		
			   	}),
			   	dataType: 'json',
			   	success: function (data) {
			   		console.log(data);
			   		tabRowLen = 1; 
				        for(var i=0;i<data.length;i++){
				            $('#tbodyLoan').html('');
				            //tabRowLen = tabRowLen + 1;
				            var balanceQty = parseFloat(data[i].poQty) - parseFloat(data[i].mrnQty);
				            delBtn= '<button type="button" class="common-btn btn-sm red-btn" id="delBtn" onclick="onClickDelete(event, ' + data[i].itemId + ')")>Delete</button>';
			    			$("#reportDtltdata").append(
			    	    			'<tr>'+
			    	    			'<td hidden></td>'+
			    	    			'<td hidden>'+data[i].itemId+'</td>'+
			    	    			'<td hidden>'+data[i].uomId+'</td>'+
			    	    			'<td>'+tabRowLen+'</td>'+
			    	    			'<td>'+data[i].itemDesc+'</td>'+
			    	    			'<td>'+data[i].uomDesc+'</td>'+
			    	    			'<td>'+data[i].poQty+'</td>'+
			    	    			'<td>'+data[i].poRate+'</td>'+
			    	    			'<td>'+data[i].gstPct+'</td>'+
			    	    			'<td>'+data[i].mrnQty+'</td>'+
			    	    			'<td>'+data[i].balanceQty.toFixed(2)+'</td>'+
			    	    			'<td><input type="text" class="form-control" id="txtMrnQty" placeholder="Qty" value="'+ data[i].mrnQty +'"></td>'+
			    	    			'<td><input type="text" class="form-control" id="txtDiscPct" placeholder="Discount%" value="'+ data[i].discountPct +'"></td>'+
			    	    			'<td>'+data[i].mrnItemAmount+'</td>'+
			    	    			'<td>'+delBtn+'</td>'+
			    	    		   +'</tr>'
			   	    		); 
			    			tabRowLen++;
			        	}
				        calacuateNetMrnAmount();
				      if ("${sMode}" == "view") {
				    		$("#mrnTable").find("input,button,textarea,select").attr("disabled", "disabled");
				      }
				      
			   	},
			    error: function (error) {
			        console.log(`Error ${error}`);
			    }
		});    	
    }
	function exitToHomePage() {
		//location.href = "/EZOfficeInventory/mrn";
		location.href = "https://EZOfficeInventory.azurewebsites.net/mrn";
	}      
    </script>	    
</body>
</html>