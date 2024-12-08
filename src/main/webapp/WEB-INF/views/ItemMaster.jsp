<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Item Master Entry Page</title>
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
                            <li><a href="https://salepurchasecompany.co.in/uomMaster">UOM Master</a></li>
                            <li class="active"><a href="https://salepurchasecompany.co.in/ItemMaster">Item Master</a></li>
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
                    <li class="breadcrumb-item active">Item Master</li>
                </ul>
            </div>
        </div>
        <section>
            <div class="container-fluid">
                    <div class="card">
                        <div class="card-body">
                            <div class="container-form">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">Item ID</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <input type="text" class="form-control" id="txtItemId" placeholder="Generating Item ID...">
                                    </div>
                                  </div>
                                <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">Category</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <select class="custom-select" id="lstItemCat">
                                        	<option selected="selected">click on search plus button</option>
                                          </select> 
                                    </div>
                                  </div>  
                                <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">Sub Category</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <select class="custom-select" id="lstItemSubCat">
                                          </select> 
                                    </div>
                                  </div>                                                                   
                                  <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">Item Name</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <input type="text" class="form-control" id="txtItemShortName" placeholder="Item Short Name">
                                    </div>
                                  </div>
                                
                                  <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">Item Description</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <textarea type="text" class="form-control" id="txtItemDesc" placeholder="Item Description" rows="2"></textarea>
                                    </div>
                                  </div>
                                  <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">GST%</label>
                                    <div class="col-sm-3 col-md-3 pl0">
                                        <input type="text" class="form-control" id="txtGSTPCT" style="background-color: lightyellow;" placeholder="Enter GST%"> 
                                    </div>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<label class="col-sm-3 col-md-1 col-form-label">Rate:</label>	
									 <div class="col-sm-3 col-md-3 pl5">
										<input type="text" id="txtItemRate" class="form-control" style="background-color: lightyellow;"  placeholder="Item Rate">
									 </div>                                                                    
                                  </div>  
                                  <div class="form-group row">
                                    <label class="col-sm-4 col-md-2 col-form-label">UOM</label>
                                    <div class="col-sm-6 col-md-8 pl0">
                                        <select class="custom-select" id="lstUOM">
                                        	<option selected="selected">click on search plus button</option>
                                          </select> 
                                    </div>
                                      <div class="col-sm-2 col-md-2 pl2" id="dvSrchUom">
                                      		 <i class="fa fa-search" onclick="openSearchBox()" aria-hidden="false"></i>
                                      </div>                                    
                                  </div>
				               <div id="msgId">
					          	<h5 id="alertMsg"></h5>
					          	</div>                                  
                                    <div class="col-sm-6 text-center btn-spaceing">
                                        <div class=" w3-bar">
                                            <Button ID="btnSave" class="common-btn" onclick="saveItemMaster()">Save</Button>
                                            <Button ID="btnRefresh" class="common-btn" onclick="refreshPage()">Refresh</Button>
                                            <Button ID="btnCloseAdd" onclick="exitToHomePage()" class="common-btn gray-btn">Exit</Button>
    
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
	<div class="modal" tabindex="-1" role="dialog" id="userDataModel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Search UOM Data</h5>
					<button type="button" class="common-close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row" id="searhBox">
						<div class="col-sm-4">
							<b>Search Text :</b>
						</div>
						<div class="col-sm-4">
							<input class="form-control" id="searchData" type="text"
								placeholder="Enter Details......">
						</div>
						<div class="col-sm-2">
							<button type="button" class="common-btn gray-btn"
								data-target="#userDataModel" onclick="searchUomData()">Search</button>
						</div>
					</div>
					<div id="optionData">
						<table class="table" id="userTable">
							<thead id='tHead'>
								<tr>
									<th hidden>id</th>
									<th>UOM Short Name</th>
									<th>Description</th>
									<th>Select One</th>
								</tr>
							</thead>
							<tbody id='tbodyLoan'>

							</tbody>
						</table>
					</div>
				</div>
               <div id="msgIdModal">
	          	<h5 id="alertMsgModal"></h5>
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
    <!-- Main File-->
    <script src="js/custom.js"></script>
</body>
<script type="text/javascript">
/* 	jQuery(document).ready(function($){
		
	});
 */	
	function openSearchBox() {
		 $('#userDataModel').modal('show');
	}
	
 	function searchUomData() {
		var searchDataVal=$('#searchData').val();
 		if(searchDataVal==null || searchDataVal =="" ) {
			$("#alertMsg").append("Please enter details then click on search button. ");
		} else {
			   $.ajax({
				   //url: '/EZOfficeInventory/get-uom-search-list',
				   url: 'https://salepurchasecompany.co.in/get-uom-search-list',
				    type: 'Post',
				    contentType: 'application/json',
				   data: JSON.stringify(
				    {
				    "searchVarData":searchDataVal
				    }),
				    success: function (data) {
				        console.log(data);
				        if(data.length!=0)
				        	{
				        	$('#optionData').show();
				        	for(var i=0;i<data.length;i++){
				        	 $('#tbodyLoan').append(
				                        '<tr>'+
				                        '<td hidden>'+data[i].uomId+'</td>'+
				                        '<td>'+data[i].uomShortName+'</td>'+
				                      '<td>'+data[i].uomDescription+'</td>'+
				                      '<td><label class="radio-inline"> <input type="radio" class="radioUser" name="selectUser" value='+data[i].uomId+'>Select </label></td></tr>');
				        	}
				                     
				        	}
				        else{
				        	$("#msgIdModal").addClass("alert alert-danger");
				  		    $("#alertMsgModal").append("No details are available on given details. ");
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
        var col1=currentRow.find("td:eq(0)").text(); 
        var col2=currentRow.find("td:eq(1)").text(); 
        $('#lstUOM').html("");
        $('#lstUOM').append('<option value='+col1+'>'+col2+'</option>');
        $('#userDataModel').modal('hide');
    });
    
    function validate() {
		var itemShortName = $('#txtItemShortName').val();
		var itemDesc = $('#txtItemDesc').val(); 
		var uomId = $('#lstUOM').val();
		var itemCategory = $('#lstItemCat').val();
		var subItemCategory = $('#lstItemSubCat').val();
	
		if (itemCategory == "" || itemCategory == "Choose Item Category..") {
			alert("Item Category Cannot left blank");
			 $('#lstItemCat').focus();
			return false;			
		}
		if (subItemCategory == "0" || subItemCategory == "Choose Item Sub Category..") {
			alert("Sub Category Cannot left blank");
			 $('#lstItemSubCat').focus();
			return false;			
		}		
		if (itemShortName == "") {
			alert("Item Short Name Cannot left blank");
			 $('#txtItemShortName').focus();
			return false;			
		}
		if (itemDesc == "") {
			alert("Item Description Cannot left blank");
			 $('#txtItemDesc').focus();
			return false;			
		}	
		if (uomId == "" || uomId == "click on search plus button") {
			alert("UOM Cannot left blank");
			 $('#lstUOM').focus();
			return false;			
		}
		return true;
    }
    
    
    function saveItemMaster() {
    	if (validate()==true) {
    		if (confirm('Are you sure you want to save?')) {
    			var itemShortName = $('#txtItemShortName').val();
    			var itemDesc = $('#txtItemDesc').val(); 
    			var uomId = $('#lstUOM').val();
    			var gstPct = null;
    			if ($('#txtGSTPCT').val() != "") {
    				gstPct = $('#txtGSTPCT').val();	
    			}
    			var itemId;
    			if ("${sMode}" == "edit") {
    				itemId = "${itemData.getItemId()}";
 				} else {
 					itemId = 0;
 				}    			
    			var data= {
    			    "itemShortNm":itemShortName,
    			    "itemDescription":itemDesc,
    			    "uomId":uomId,
    			    "activeFlag":true,
    			    "createdBy":1,
    			    "gstNo":gstPct,
    			    "sMode":"${sMode}",
    			    "categoryId":$('#lstItemCat').val(),
    			    "itemId":itemId,
    			    "subCategoryId":$('#lstItemSubCat').val(),
    			     "itemRate": $('#txtItemRate').val()
    			}
    			console.log(data);
 				var xhr = new XMLHttpRequest();
 				//xhr.open("POST", "/EZOfficeInventory/Create-New-ItemMaster", true);
 				xhr.open("POST", "https://salepurchasecompany.co.in/Create-New-ItemMaster", true);
 				xhr.setRequestHeader("Content-Type", "application/json");
 				xhr.onreadystatechange = function () {
 					if (xhr.readyState === 4 && xhr.status === 200) {
 						var responseData = JSON.parse(xhr.responseText);
 						console.log(responseData);
 						if (responseData.errorFlag == false) {
 						   $('#txtItemId').val("Record Number:" + responseData.recordNumber);
 						   $('#txtItemShortName').attr('disabled', true);
 				    	   $('#txtItemDesc').attr('disabled', true);
 				    	   $('#lstUOM').attr('disabled', true);
 				    	   $('#lstItemCat').attr('disabled', true);
 				    	   $('#btnSave').attr('disabled', true); 
 				    	   $("#txtGSTPCT").attr('disabled', true);
 				    	   $("#itemRate").attr('disabled', true);
 				           $("#msgId").addClass("alert alert-success");
 				    	   $("#alertMsg").append(responseData.strMessage); 
 				    	   $('#lstItemSubCat').attr('disabled', true);
 				    	   alert(responseData.strMessage);
 						} else {
  				           $("#msgId").addClass("alert alert-success");
 				    	   $("#alertMsg").append(responseData.strMessage); 	 							
 						}
 					}
 				};
 				xhr.send(JSON.stringify(data));    			
    		}
    	}
    }
    $(document).ready(function () {
    	$('#txtItemId').attr('disabled', true);
    	if ("${sMode}" == "edit" || "${sMode}" == "view") {
    		$("#txtItemId").val("Record Number:" + "${itemData.getItemId()}");
    		$("#txtItemShortName").val("${itemData.getItemShortNm()}");
    		$("#txtItemDesc").val("${itemData.getItemDescription()}");
    		$("#txtGSTPCT").val("${itemData.getGstNo()}");
    		$("#txtItemRate").val("${itemData.getItemRate()}");
            $('#lstUOM').html("");
            $('#lstItemCat').html("");
            $('#lstUOM').append('<option value='+"${itemData.getUomId()}"+'>'+"${itemData.getUomName()}"+'</option>');
            $('#lstItemCat').append('<option value='+"${itemData.getCategoryId()}"+'>'+"${itemData.getCategoryCode()}"+'<->'+"${itemData.getCategoryDesc()}"+'</option>');
            $('#lstItemSubCat').append('<option value='+"${itemData.getSubCategoryId()}"+'>'+"${itemData.getSubcategoryCode()}"+'<->'+"${itemData.getSubCategoryName()}"+'</option>');
            $('#txtItemShortName').attr('disabled', true);
            $('#lstUOM').attr('disabled', true);
            $('#btnRefresh').hide(); 	
            if ("${sMode}" == "view") {
            	$('#txtItemDesc').attr('disabled', true);
            	$('#btnSave').hide(); 
				$('#dvSrchUom').hide();
				$("#txtGSTPCT").attr('disabled', true);
				$('#lstItemCat').attr('disabled', true);
				$('#lstItemSubCat').attr('disabled', true);
    		}
    	}
    	if ("${sMode}" == "edit" || "${sMode}" == "new") {
    		fillCategoryMaster();
    	}    	
    });
	function exitToHomePage() {
		//location.href = "/EZOfficeInventory/ItemMaster";
		location.href = "https://salepurchasecompany.co.in/ItemMaster";
	}    
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
        		   		$('#lstItemCat').html('');
        		   		$('#lstItemCat').append('<option value=0>Choose Item Category..</option>');
    		   		} else if ("${sMode}" == "edit") {
    		   			$('#lstItemCat').find('[value="+"${itemData.getCategoryId()}"+"]').remove();	
    		   		}
    		        for(var i=0;i<data.length;i++){
    		        	$('#lstItemCat').append('<option value='+data[i].categoryId+'>'+data[i].categoryCode+'<->'+data[i].categoryDesc+'</option>');
    		        }
    		   	},
    		    error: function (error) {
    		        console.log(`Error ${error}`);
    		    }
    	});	
    }	
    $('#lstItemCat').on('change', function() {
    	fillSubCategoryMaster($('#lstItemCat').val());
    });
    function fillSubCategoryMaster(categId) {
    	$.ajax({
    		//url: '/EZOfficeInventory/getSubCategoryItem',
    		url: 'https://salepurchasecompany.co.in/getSubCategoryItem',
         	type: 'POST',
    		contentType: 'application/json',	
    		   data: JSON.stringify(
    		   	{
    		   		"categId":categId
    		   	}),
    		   	dataType: 'json',
    		   	success: function (data) {
    		   		console.log(data);
    		   		if ("${sMode}" == "new") {
        		   		$('#lstItemSubCat').html('');
        		   		$('#lstItemSubCat').append('<option value=0>Choose Item Sub Category..</option>');
    		   		} else if ("${sMode}" == "edit") {
    		   			$('#lstItemSubCat').find('[value="+"${itemData.getSubCategoryId()}"+"]').remove();	
    		   		}
    		        for(var i=0;i<data.length;i++){
    		        	$('#lstItemSubCat').append('<option value='+data[i].subCategoryId+'>'+data[i].subCategoryCode+'<->'+data[i].subCategoryDesc+'</option>');
    		        }
    		   	},
    		    error: function (error) {
    		        console.log(`Error ${error}`);
    		    }
    	});	
    }    
	$('#txtGSTPCT').keypress(function(event) {
	    if (((event.which != 46 || (event.which == 46 && $(this).val() == '')) ||
	            $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
	        event.preventDefault();
	    }
	}); 
    
	$('#txtItemRate').keypress(function(event) {
	    if (((event.which != 46 || (event.which == 46 && $(this).val() == '')) ||
	            $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
	        event.preventDefault();
	    }
	}); 	
	
    $('#searchData').on("input", function() {
    	$("#msgIdModal").removeClass("alert alert-danger");
    	$("#alertMsgModal").html('');
    });  
   	
   	function percentageValidate(x) {
    	    var parts = x.split(".");
    	    if (typeof parts[1] == "string" && (parts[1].length == 0 || parts[1].length > 2))
    	        return false;
    	    var n = parseFloat(x);
    	    if (isNaN(n))
    	        return false;
    	    if (n < 0 || n > 100)
    	        return false;

    	    return true;
     	} 
   	function refreshPage() {
   		location.href = "https://salepurchasecompany.co.in/AddNewItemMaster";
   	}
   	
</script>
</html>