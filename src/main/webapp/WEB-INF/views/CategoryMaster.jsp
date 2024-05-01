<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Category Master</title>
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
    
 <%-- <script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js" ></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js" ></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js" ></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js" ></script>
 <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js" ></script>  --%>   
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
                        	<li class="active"><a href="https://EZOfficeInventory.azurewebsites.net/category">Category Master</a></li>
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
                            <li><a href="https://EZOfficeInventory.azurewebsites.net/rfq">Quotation</a></li>
                        </ul>
                    </li>
					<li class="active"><a href="#reports" aria-expanded="false"
						data-toggle="collapse"> <i class="fa fa-book"></i>Reports
					</a>
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
					<li class="breadcrumb-item active">Category Master</li>
				</ul>
			</div>
		</div>
		<section>
            <div class="container-fluid">
                    <div class="card">
                        <div class="card-body">
                            <div class="container-form">
							<div class="container-form">
								<div class="form-group row">
									<label class="col-sm-4 col-md-2 col-form-label">Category Name:</label>
									<div class="col-sm-6 col-md-8 pl0">
										<select class="custom-select" id="lstItemCat">
											<option selected value="0">Choose Category...</option>
										</select> 
										<a href="#" onclick="openAddNewCategBox();">Add New Category</a>
									</div>
								</div>
							</div>
							<div class="container-form">
								<div class="form-group row">
									<label class="col-sm-4 col-md-2 col-form-label">Sub Category:</label>
									<div class="col-sm-6 col-md-8 pl0">
										<input type="text" id="txtSubCategNM" class="form-control" placeholder="Sub Category">
									</div>
								</div>
							</div>
							<div class="col-sm-6 text-center btn-spaceing">
                                        <div class=" w3-bar">
                                            <Button ID="btnSave" class="common-btn" onclick="saveSubCategoryMaster()()" >Save</Button>
                                            <Button ID="btnrefresh" class="common-btn" onclick="refreshSubCategory()" >Refresh</Button>
                                            <Button ID="btnExit" class="common-btn gray-btn" onclick="exitToHomePage()">Exit</Button>
                                        </div>
                                </div>
				               <div id="msgId">
					          	<h5 id="alertMsg"></h5>
					          	</div>                                
                            </div>
							<div class="col-md-12 commen-space">
								<div class="table-responsive style-8">
									<table id="example" class="table table-bordered table-hover no-footer" style="width:100%">
										 <thead id="mainHead" class="thead-dark">
										 	<tr>
				                              <th scope="col" hidden="true">CategoryId</th>
				                              <th scope="col" hidden="true">SubCategoryId</th>
				                              <th scope="col">Sr No.</th>
				                              <th scope="col">Category Code</th>
				                              <th scope="col">Category Name</th>
				                              <th scope="col">SubCategory Code</th>
				                              <th scope="col">SubCategory Name</th>
										 	</tr>
										 </thead>
									     <tbody id="tdata"></tbody>		
									</table>							
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
	<div class="modal" tabindex="-1" role="dialog" id="userDataModel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Add New Category Master</h5>
					<button type="button" class="common-close" data-dismiss="modal" onclick="refreshPageData" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>	
				<div class="modal-body">
					<div id="optionData">
		<section>
            <div class="container-fluid">
				<div class="form-group row">
					<label class="col-sm-4 col-md-3 col-form-label">Category ID</label>
					<div class="col-sm-6 col-md-8 pl0">
						<input type="text" class="form-control" id="txtCategId" placeholder="Generating...">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-4 col-md-3 col-form-label">Category Name</label>
					<div class="col-sm-6 col-md-8 pl0">
						<input type="text" class="form-control" id="txtCategNM" placeholder="Enter Category Here">
					</div>
				</div>
				<div id="msgIdCateg">
					<h5 id="alertMsgCateg"></h5>
				</div>
				<div class="col-sm-6 text-center btn-spaceing">
						<div class=" w3-bar">
							<Button ID="btnSaveCateg" class="common-btn" onclick="saveCategoryData()">Save</Button>
							<Button ID="btnrefreshCateg" class="common-btn" onclick="refreshPageData();">Refresh</Button>
						</div>
				</div>
			</div>
       </section>						
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="common-secondary" onclick="refreshPageData();" data-dismiss="modal">Close</button>
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
    <script type="text/javascript">
	    $(document).ready(function () {
	    	fillCategoryMaster();
	    	fillDataGrid();
	    });    
    	function openAddNewCategBox() {
    		$("#txtCategId").attr('disabled', true);
    		refreshControl();
    		$('#userDataModel').modal('show');
    	}
    	function saveCategoryData() {
    		var categoryName = $('#txtCategNM').val();
    		if (categoryName == "") {
    			alert("CategoryName Cannot Left Blank")
    			$('#txtCategNM').focus();
    			return false;
    		}
    		if (confirm('Are you sure you want to save?')) {
    			var data= {
	 				  "sMode":"${sMode}",
					  "categoryDesc":categoryName
	 			} 
    			console.log(data)
    			var xhr = new XMLHttpRequest();
    			//xhr.open("POST", "/EZOfficeInventory/save-category-master", true);
 				xhr.open("POST", "https://EZOfficeInventory.azurewebsites.net/save-category-master", true);
 				xhr.setRequestHeader("Content-Type", "application/json");
 				xhr.onreadystatechange = function () {
 					if (xhr.readyState === 4 && xhr.status === 200) {
 						var responseData = JSON.parse(xhr.responseText);
 						console.log(responseData);
 						if (responseData.errorFlag == false) {
 						   $('#txtCategId').val("Record Number:" + responseData.recordNumber);
 						   $('#txtCategNM').attr('disabled', true);
 				           $("#msgIdCateg").addClass("alert alert-success");
 				           $("#btnSaveCateg").attr('disabled', true);
 				    	   $("#alertMsgCateg").append(responseData.strMessage); 
 				    	   alert(responseData.strMessage);
 						} else {
  				           $("#msgIdCateg").addClass("alert alert-warning");
 				    	   $("#alertMsgCateg").append(responseData.strMessage); 	 							
 						}
 					}
 				};
 				xhr.send(JSON.stringify(data));    			
    		}
    	}
    	function refreshControl() {
    		$('#txtCategId').val("");
    		$('#txtCategId').attr("placeholder", "Generating...");
    		$('#txtCategNM').val("");
    		$('#txtCategNM').attr("placeholder", "Enter Category Here"); 
    		$("#msgIdCateg").removeClass("alert alert-success");
    		$("#msgIdCateg").removeClass("alert alert-warning");
	    	$("#alertMsgCateg").html(""); 	 	    		
	    	$('#txtCategNM').attr('disabled', false);
    		$("#btnSaveCateg").attr('disabled', false);
    	}
        function fillCategoryMaster() {
        	$.ajax({
        		//url: '/EZOfficeInventory/getAllCategoryMaster',
        		url: 'https://EZOfficeInventory.azurewebsites.net/getAllCategoryMaster',
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
        function saveSubCategoryMaster() {
    		var subCategName = $('#txtSubCategNM').val();
    		var categoryId = $('#lstItemCat').val();
		   $("#alertMsg").html(""); 	 
		   $("#msgId").removeClass("alert alert-warning");
		   $("#msgId").removeClass("alert alert-success");    		
    		if (categoryId == "0") {
    			alert("Select Valid Category First!!");
    			$('#lstItemCat').focus();
    			return false;
    		}
    		if (subCategName == "") {
    			alert("SubCategory Name Cannot Left Blank")
    			$('#txtSubCategNM').focus();
    			return false;
    		}
    		if (confirm('Are you sure you want to save?')) {
    			var data= {
	 				  "sMode":"${sMode}",
					  "subCategoryDesc":subCategName,
					  "categoryId":categoryId,
					  "createdBy":1
	 			} 
    			console.log(data)
    			var xhr = new XMLHttpRequest();
    			//xhr.open("POST", "/EZOfficeInventory/save-subCateg-master", true);
 				xhr.open("POST", "https://EZOfficeInventory.azurewebsites.net/save-subCateg-master", true);
 				xhr.setRequestHeader("Content-Type", "application/json");
 				xhr.onreadystatechange = function () {
 					if (xhr.readyState === 4 && xhr.status === 200) {
 						var responseData = JSON.parse(xhr.responseText);
 						console.log(responseData);
 						if (responseData.errorFlag == false) {
 						   //$('#txtCategId').val("Record Number:" + responseData.recordNumber);
 						   $('#txtSubCategNM').attr('disabled', true);
 						   $('#lstItemCat').attr('disabled', true);
 				           $("#msgId").addClass("alert alert-success");
 				           $("#btnSave").attr('disabled', true);
 				    	   $("#alertMsg").append(responseData.strMessage); 
 				    	   alert(responseData.strMessage);
 				    	  refreshPageData();
 						} else {
  				           $("#msgId").addClass("alert alert-warning");
 				    	   $("#alertMsg").append(responseData.strMessage); 
 				    	  alert(responseData.strMessage);
 						}
 					}
 				};
 				xhr.send(JSON.stringify(data));    			
    		}        	
        }
        function refreshSubCategory() {
			   $('#txtSubCategNM').attr('disabled', false);
			   $('#lstItemCat').attr('disabled', false);  
			   $('#txtSubCategNM').val("");
			   $('#lstItemCat').val("0");	
			   $("#btnSave").attr('disabled', false);
			   $("#alertMsg").html(""); 	 
			   $("#msgId").removeClass("alert alert-warning");
			   $("#msgId").removeClass("alert alert-success");
			   fillDataGrid();
        }
        function fillDataGrid() {
        	$('#example').DataTable().clear().destroy();
        	$.ajax({
       			 //url: '/EZOfficeInventory/getAllItemSubCatMasterDetail',
       			 url: 'https://EZOfficeInventory.azurewebsites.net/getAllItemSubCatMasterDetail',
       			 type: 'Post',
       			 contentType: 'application/json',
   			   	 data: JSON.stringify(
   				 {
   				    "searchVarData":""
   				 }),    
   				 success: function (data) {
   					 console.log(data);
   					 if(data.length!=0) {
   						 var srlDataCount = 0;
   						 $('#tdata').html('');
   						 for(var i=0;i<data.length;i++){
   							 srlDataCount++;
   							 $('#tdata').append(
   							   '<tr>'+
   							   '<td hidden>'+data[i].categoryId+'</td>'+
   							   '<td hidden>'+data[i].subCategoryId+'</td>'+
   							   '<td >'+srlDataCount+'</td>'+
   							   '<td >'+data[i].categoryCode+'</td>'+
   							   '<td >'+data[i].categoryDesc+'</td>'+
   							   '<td >'+data[i].subCategoryCode+'</td>'+
   							   '<td >'+data[i].subCategoryDesc+'</td>'+
   							   '</tr>'
   							 );	 
   						 }
   						createNewDataTable();
   					 } else {
   						 alert("No Data found for input criteria")
   						 $('#tdata').html('');
   					 }
   				 },
   				    error: function (error) {
   				        console.log(error);
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
    	function refreshPageData() {
    		//location.href = "/EZOfficeInventory/category";
    		location.href = "https://EZOfficeInventory.azurewebsites.net/category";
    	}    	
    </script>	
</body>
</html>