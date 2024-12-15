<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Customer Master</title>
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
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    
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
.pl-2 {
    padding-left: 0.5rem; /* Adjust as needed */
}      
 </style>
    <style>
        /* Style for the profile image container (square shape) */
        .profile-image-container {
            width: 150px; /* Fixed width */
            height: 150px; /* Fixed height */
            border: 2px solid #ddd; /* Border for the profile image container */
            display: flex;
            justify-content: center;
            align-items: center;
        }
        /* Style for the image inside the container */
        .profile-image-container img {
            width: 100%;
            height: 100%;
            object-fit: cover; /* Ensures the image covers the area properly */
        }
        .saved-image-container {
            width: 450px; /* Fixed width */
            height: 350px; /* Fixed height */
            border: 2px solid #ddd; /* Border for the profile image container */
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .saved-image-container img {
            width: 100%;
            height: 100%;
            object-fit: cover; /* Ensures the image covers the area properly */
        }
        /* Style for the file input button */
        .file-input-wrapper {
            margin-top: 10px;
            text-align: center;
        }

        .file-input {
            display: none; /* Hide the default file input */
        }

        .upload-btn {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .upload-btn:hover {
            background-color: #45a049;
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
            <h2 class="h5">
              <a href="/loanApp/dashBoard">ABC</a>
            </h2>
          </div>
          <!-- Small Brand information, appears on minimized sidebar-->
          <div class="sidenav-header-logo">
            <a href="/loanApp/dashBoard" class="brand-small text-center">
              <strong>A</strong>
              <strong>B</strong>
            </a>
          </div>
        </div>
        <!-- Sidebar Navigation Menus-->
        <div class="main-menu">
          <ul id="side-main-menu" class="side-menu list-unstyled">
            <li class="active">
              <a href="#dashboard" aria-expanded="false" data-toggle="collapse">
                <i class="icon-interface-windows"></i>Master </a>
              <ul id="dashboard" class="collapse list-unstyled show">
                <li>
                  <a href="/loanApp/dashBoard">Customer Master</a>
                </li>
              </ul>
            </li>
            <li class="active">
              <a href="#purchase" aria-expanded="false" data-toggle="collapse">
                <i class="fa fa-bar-chart"></i>Transaction </a>
              <ul id="purchase" class="collapse list-unstyled show">
                <li class="active">
                  <a href="/loanApp/">Create Job Card</a>
                </li>
                <li>
                  <a href="/loanApp/receivedPymnt">Received Payment</a>
                </li>
              </ul>
            </li>
            <li class="active">
              <a href="#reports" aria-expanded="false" data-toggle="collapse">
                <i class="fa fa-book"></i>Reports </a>
              <ul id="reports" class="collapse list-unstyled show">
                <li>
                  <a href="/loanApp/pymntRcvdRpt">Statement Of Accounts</a>
                </li>
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
              <div class="navbar-header">
                <a id="toggle-btn" href="#" class="menu-btn">
                  <i class="icon-bars"></i>
                </a>
                <a href="index.html" class="navbar-brand"></a>
              </div>
              <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center top-menu">
                <!-- Notifications dropdown-->
                <li class="login-user">
                  <a href="#">Welcome <span>ABC</span>
                  </a>
                </li>
                <!-- Log out-->
                <li class="nav-item">
                  <a href="/loanApp" class="nav-link logout">
                    <span class="d-none d-sm-inline-block">Logout</span>
                    <i class="fa fa-sign-out"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </nav>
      </header>
      <!-- Breadcrumb-->
      <div class="breadcrumb-holder">
        <div class="container-fluid">
          <ul class="breadcrumb">
            <li class="breadcrumb-item active">Customer Master</li>
          </ul>
        </div>
      </div>
      <section>
        <div class="container-fluid">
          <div class="card">
            <div class="card-body">
              <div class="container">
				<div class="form-group row">
					<label class="col-sm-4 col-md-1 col-form-label">Name:</label>
				    <div class="col-sm-1 col-md-1 pr-0">
				        <select class="custom-select" id="lsGender">
				            <option selected="selected" value="0">Mr.</option>
				            <option value="1">Ms.</option>
				            <option value="2">Mrs.</option>
				        </select>                	
				    </div>
				    <div class="col-sm-6 col-md-3 pl-0">
				        <input type="text" id="txtCustName" class="form-control" placeholder="Enter Customer Name">
				    </div>		
				    <label class="col-sm-4 col-md-1 col-form-label p15">Father:</label>
				    <div class="col-sm-1 col-md-1 pr-0">
				        <select class="custom-select" id="lsGurGender">
				            <option selected="selected" value="0">Mr.</option>
				            <option value="1">Ms.</option>
				            <option value="2">Mrs.</option>
				        </select>                
				    </div>		
				    <div class="col-sm-6 col-md-3 pl-0">
				        <input type="text" id="txtGuardian" class="form-control" placeholder="Enter Guardian/Spouse Name">
				    </div>				    		    		    					
				</div>
				<div class="form-group row">
					<label class="col-sm-4 col-md-1 col-form-label">Mobile:</label>
					<div class="col-sm-6 col-md-4">
						<input type="text" id="txtMobileNo" class="form-control" placeholder="Enter Mobile No">
					</div>
					<label class="col-sm-4 col-md-1 col-form-label p15">Profession:</label>
					<div class="col-sm-6 col-md-4">
						<input type="text" id="txtProff" class="form-control" placeholder="Work/Profession">
					</div>					
				</div>
				<div class="form-group row">
					<label class="col-sm-4 col-md-1 col-form-label">Current Address:</label>
					<div class="col-sm-6 col-md-4">
						<textarea rows="2" id="txtCurrentAdd" class="form-control" placeholder="Enter Current Address"></textarea>
					</div>
				<label class="col-sm-4 col-md-1 col-form-label p15">Permanent Address:</label>
				<div class="col-sm-6 col-md-4">
					<textarea rows="2" id="txtPermanentAdd" class="form-control" placeholder="Enter Permanent Address"></textarea>
				</div>
			</div>
			<div id="msgId">
				<h5 id="alertMsg"></h5>
			</div>
			<div class="col-sm-6 text-center btn-spaceing">
				<div class=" w3-bar">
					<Button ID="btnSave" class="common-btn" onclick="saveCustomerMasterData()">Save</Button>
					<Button ID="btnRefresh" class="common-btn" onclick="refreshPage()">Refresh</Button>
					<Button ID="btnShowDocs" class="common-btn" onclick="docsButtonClick()">Upload Documents</Button>
					<Button ID="btnCloseAdd" onclick="exitToHomePage()" class="common-btn gray-btn">Exit</Button>

				</div>
			</div>
		</div>
    <div class="container" id="docsDiv">
        <div class="form-group row">
        <table id="groupTable" class="table table-bordered table-hover"  style="width: 100%">
        	<tr>
        		<td style="width: 75%">
        			<div id="billDtl" class="table-responsive style-12" style="width: !important;%">
            <table id="tableAttachment" class="table table-bordered table-hover" style="width: 100%">
                <thead id="attchHead" class="thead-dark">
                    <tr>
                        <th scope="col" style="width: 25%">Document Type</th>
                        <th scope="col" style="width: 15%">FileUploader</th>
                        <th scope="col" style="width: 10%">Action</th>
                        <th scope="col" style="width: 5%">Submit</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div class="col-sm-12 col-md-12 pl0">
                                <select class="custom-select" id="lsIdType">
                                    <option selected="selected" value="0">AdharCard-Font</option>
                                    <option value="1">AdharCard-Back</option>
                                    <option value="2">Pan</option>
                                    <option value="3">DL</option>
                                    <option value="4">Other</option>
                                </select>
                            </div>
                        </td>
                        <td>
                            <div class="file-input-wrapper">
                                <label for="fileInput" class="upload-btn">Upload Image</label>
                                <input type="file" id="fileInput" class="file-input" accept="image/*">
                            </div>
                        </td>
                        <td>
                            <div class="profile-image-container">
                                <img id="profileImagePreview" src="https://via.placeholder.com/150" alt="Profile Image" width="100%">
                            </div>
                        </td>
                        <td>
                            <input type="button" id="btnImgUpload" class="upload-btn" value="Submit" onclick="saveAttachmentData();">
                        </td>
                    </tr>
                </tbody>
            </table>        			
        			</div>
        		</td>
        		<td style="width: 25%; vertical-align: top;">
        		<div class="table-responsive style-12" style="width: !important;%">
        			<table class="table table-bordered table-hover" id="tblDocs" style="width: 100%">
					<thead id="docsHead" class="thead-dark">
						<tr>
							<th scope="col">Srl</th>
							<th scope="col">Document Type</th>
							<th scope="col" hidden="true">Name</th>
							<th scope="col">Action</th>
							<th scope="col" hidden="true">Id</th>
							<th scope="col" hidden="true">FilePath</th>
						</tr>
					</thead>
					<tbody id="docsBody">
<!-- 					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr> -->
					</tbody>        				
        			</table>
        			
        		</div>
        		</td>
        	</tr>
        </table>
        </div>
    </div>
    <!--Modal Popup Area-->
	<div class="modal" tabindex="-1" role="dialog" id="userDataModel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">View Document</h5>
				</div>	
				<div class="modal-body">
                     <div class="saved-image-container">
                         <img id="savedImagePreview" class="saved-image-container img" src="" alt="Profile Image" width="100%">
                     </div>
    			</div>
				<div class="modal-footer">
					<button type="button" class="common-secondary" data-dismiss="modal">Close</button>
				</div>											
			</div>
		</div>
	</div>    
    <input type="hidden" id="hdnCustomerId">
          </div>
          </div>
        </div>
      </section>
      <footer class="main-footer">
        <p>Copyright © 2024-2025, Designed & Developed by ABC</p>
      </footer>
    </div>
<%-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>   
    <script src="https://salepurchasecompany.co.in/js/jquery.min.js"></script>
    <script src="https://salepurchasecompany.co.in/js/popper.min.js"></script>
    <script src="https://salepurchasecompany.co.in/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- Main File-->
    <script src="https://salepurchasecompany.co.in/js/custom.js"></script>   --%>        
    <!-- JavaScript files-->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.dataTables.min.js"></script> 
    <script src="js/dataTables.bootstrap4.min.js"></script>
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- Main File-->
    <script src="js/custom.js"></script>    
    <script>
		var data = "";
        // JavaScript to handle the image upload and preview
        const fileInput = document.getElementById('fileInput');
        const profileImagePreview = document.getElementById('profileImagePreview');

        fileInput.addEventListener('change', function(event) {
            const file = event.target.files[0];

            if (file) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    profileImagePreview.src = e.target.result;
                };
                reader.readAsDataURL(file);
            }
        });
        
        jQuery(document).ready(function($){
        	$('#docsDiv').attr('hidden', true);	
        	$('#btnShowDocs').attr('hidden', true);	
        	fillCustomerDataOnPG("1");
        	loadDocsData("1");
        });
        
        function fillCustomerDataOnPG(customerId) {
			var param = JSON.stringify({
    			    "customerId":customerId
    			});
			   $.ajax({
	               //url:"/EZOfficeInventory/getStockItemWiseReport",
	               url:"/OfficeNet/customerMst/fillCustomerData",
	               method:"POST",
	               data: param,
	               contentType: 'application/json',
	               cache: false,
	               processData: false,
	               beforeSend:function(){
	            	   //$('#btnShow').html(spinner);
	               },
	               success:function(data)
	               {
	              	if (data.cust_Name != "") {
	         			$('#txtCustName').val(data.cust_Name);
	        			//$('#lsGender').val();
	        			$('#txtGuardian').val(data.cust_Father);
	        			//$('#lsGurGender').val();
	        			$('#txtMobileNo').val(data.cust_Mobile);
	        			$('#txtProff').val(data.cust_Job);
	        			$('#txtCurrentAdd').val(data.cust_CAdd);
	        			$('#txtPermanentAdd').val(data.cust_PAdd);
	        			$('#hdnCustomerId').val(data.cust_Id);
	              	}
	              }
	               ,error: function(ts)
	               {
	              	 $("#msgId").addClass("alert alert-danger");
	              	 alert("error:" + ts.responseText);
	               }
		 });	           	

        }
        
        function saveAttachmentData() {
        	validateCustomerData("dataFill");
        	var name = document.getElementById("fileInput").files[0].name;
        	var form_data = new FormData();
        	var ext = name.split('.').pop().toLowerCase();
        	if(jQuery.inArray(ext, ['gif','png','jpg','jpeg']) == -1) {
        		alert("Invalid Image File");
        	} else {
        		var oFReader = new FileReader();
        		oFReader.readAsDataURL(document.getElementById("fileInput").files[0]);
        		var f = document.getElementById("fileInput").files[0];
        		var fsize = f.size||f.fileSize;
        		if(fsize > 3000000) {
        			alert("Image File Size is very big");
        		} else {
        			 form_data.append("adsImages", document.getElementById('fileInput').files[0]);
          			 form_data.append('customer',new Blob([(data)], {
     	                    type: "application/json"
       	                }));         	                
        			 var boundary = Math.random().toString().substr(2);

         			 $.ajax({
                         url:"/OfficeNet/customerMst/saveDocs",
                         method:"POST",
                         enctype: 'multipart/form-data',
                         data: form_data,
                         contentType: false,
                         cache: false,
                         processData: false,
                         beforeSend:function(){
                             $('#uploaded_image').html("<label class='text-success'>Image Uploading...</label>");
                         },
                         success:function(data)
                         {
                        	 var rowCount = $('#tblDocs tr').length;
                        	 $('#docsBody').append('<tr>'+
                        	 '<td>'+ rowCount +'</td>'+
                        	 '<td>'+ $("#lsIdType option:selected").text() +'</td>'+
                        	 '<td hidden="true">'+ data.strFileName +'</td>'+
                        	 '<td><input type="button" id="btnVwImg" class="upload-btn" value="View"></td>'+
                        	 '<td hidden="true">'+ data.recordNumber +'</td>'+
                        	 '<td hidden="true">'+ data.filePath +'</td>'+
                        	 '</tr>');   
	                          $("#msgId").addClass("alert alert-success");
	                          $('#alertMsg').html(data.strMessage);
	                          $("#profileImagePreview").attr("src","https://via.placeholder.com/150");
                        	 alert(data.strMessage);
                         }
                         ,error: function(ts)
                         {
                             alert("error:" + ts.responseText);
                         }
        			 }); 
        		}
        			
        	}
        		
        }
        
        $("#tblDocs").on('click','#btnVwImg',function(){
        	var attachId = $(this).closest('tr').find("td:eq(0)").text();
			 viewImage(attachId);
        	
        });
        
        function loadDocsData(customerId) {
			var rowCount = 1;	
	       	 var attachDocsData = JSON.stringify({
		 			"customerId":customerId,
		 			 "fileAttachmentId":""
					});			
			   $.ajax({
	               url:"/OfficeNet/customerMst/showCustomerDocs",
	               method:"POST",
	               data: attachDocsData,
	               contentType: 'application/json',
	               cache: false,
	               processData: false,
	               beforeSend:function(){
	            	   //$('#btnShow').html(spinner);
	               },
	               success:function(data)
	               {
	            	   if (data.length > 0) {
		            	   showHideDocsDiv("show");
		            	   for(var i=0;i<data.length;i++){
	                      	 $('#docsBody').append('<tr>'+
	                        	 '<td>'+ rowCount +'</td>'+
	                        	 '<td>'+ data[i].docType +'</td>'+
	                        	 '<td hidden="true">'+ data[i].docFileName +'</td>'+
	                        	 '<td><input type="button" id="btnVwImg" class="upload-btn" value="View"></td>'+
	                        	 '<td hidden="true">'+ data[i].attachMentId +'</td>'+
	                        	 '<td hidden="true">'+ data[i].docFilePath +'</td>'+
	                        	 '</tr>');  
	                      	rowCount++;
		            	   }	            		   
	            	   }
   	               }
	               ,error: function(ts)
	               {
	              	 $("#msgId").addClass("alert alert-danger");
	              	 alert("error:" + ts.responseText);
	               }
			 });	           	
        }
        
        function viewImage(data) {
        	$('#userDataModel').modal('show');
	       	 var attachDocsData = JSON.stringify({
	 			"customerId":$('#hdnCustomerId').val(),
	 			 "fileAttachmentId":data
				});        	
/*         	$(".popup_image").on('click', function() {
       		    w2popup.open({
       		      title: 'Image',
       		      body: '<div class="w2ui-centered"><img src="' + $(this).attr('src') + '"></img></div>'
       		    });
       		  }); */  

       		  
			   $.ajax({
	               url:"/OfficeNet/customerMst/showCustomerDocs",
	               method:"POST",
	               data: attachDocsData,
	               contentType: 'application/json',
	               cache: false,
	               processData: false,
	               beforeSend:function(){
	            	   //$('#btnShow').html(spinner);
	               },
	               success:function(data)
	               {
	            	   $("#savedImagePreview").attr("src","data:image/gif;base64," + data[0].encodedString);
	              }
	               ,error: function(ts)
	               {
	              	 $("#msgId").addClass("alert alert-danger");
	              	 alert("error:" + ts.responseText);
	               }
			 });	           	
        }
        
        
        
        function validateCustomerData(type) {
			var cust_name = $('#txtCustName').val();
			var cust_Title = $('#lsGender').val();
			var cust_Father = $('#txtGuardian').val();
			var father_Title = $('#lsGurGender').val();
			var cust_Mobile = $('#txtMobileNo').val();
			var cust_Job = $('#txtProff').val();
			var cust_CAdd = $('#txtCurrentAdd').val();
			var cust_PAdd = $('#txtPermanentAdd').val();
			var cust_id = $('#hdnCustomerId').val();
			var docType = $("#lsIdType option:selected").text();
			
			if (type == "validate") {
				if (cust_name == "") {
					alert("Cutomer Name Should not left blank");
					$('#txtCustName').focus();
					return false;
				}
				if (cust_Father == "") {
					alert("Father Name Should not left blank");
					$('#txtGuardian').focus();
					return false;
				}	
				if (cust_Mobile == "") {
					alert("MobileNo Should not left blank");
					$('#txtMobileNo').focus();
					return false;
				}				
				if (cust_CAdd == "" && cust_PAdd=="") {
					alert("Current/Permanent Address  Should not left blank");
					$('#txtCurrentAdd').focus();
					return false;
				}
			}
			if (cust_id == "") {
				cust_id = 0;
			}
			 data = JSON.stringify({
       			    "cust_Name":cust_name,
       			    "cust_Title":cust_Title,
       			    "cust_Father":cust_Father,
       			    "father_Title":father_Title,
       			    "cust_Mobile":cust_Mobile,
       			    "cust_Job":cust_Job,
       			    "cust_CAdd":cust_CAdd,
       			    "cust_PAdd":cust_PAdd,
       			    "cust_Id":cust_id,
       			    "docType":docType
       			});
			
			return true;
			
			
        }
        function saveCustomerMasterData() {
        	if (validateCustomerData("validate")==true) {
        		if (confirm('Are you sure you want to save?')) {
       			 $.ajax({
                     url:"/OfficeNet/customerMst/saveCustomerMstObj",
                     method:"POST",
                     data: data,
                     contentType: 'application/json',
                     cache: false,
                     processData: false,
                     beforeSend:function(){
                         $('#uploaded_image').html("<label class='text-success'>Image Uploading...</label>");
                     },
                     success:function(data)
                     {
                    	 $("#msgId").addClass("alert alert-success");
                    	 $('#alertMsg').html(data.strMessage);
                    	 $('#btnShowDocs').attr('hidden', false);
                    	 $('#btnSave').attr('hidden', true);
                    	 $('#hdnCustomerId').val(data.recordNumber);
                    	 disableControl();
                    	 validateCustomerData("dataFill");
                     }
                     ,error: function(ts)
                     {
                    	 $("#msgId").addClass("alert alert-danger");
                    	 alert("error:" + ts.responseText);
                     }
    			 });

        		}
        	}
        }
        function showHideDocsDiv(option) {
        	if (option == "show") {
        		$('#docsDiv').attr('hidden', false);
        		$('#btnShowDocs').attr('hidden', false);
        		$('#btnShowDocs').text('Hide Documents');
        	}else {
        		$('#docsDiv').attr('hidden', true);
        		$('#btnShowDocs').text('Upload Documents');        		
        	}
        }
        function docsButtonClick() {
        	var showDocsText = $('#btnShowDocs').text();
        	removeClassMsg();
        	if (showDocsText == "Upload Documents") {
        		showHideDocsDiv("show");
        	}else{
        		showHideDocsDiv("hide");
        	}
        }     
        function disableControl() {
			$('#txtCustName').attr('disabled', true);
			$('#lsGender').attr('disabled', true);
			$('#txtGuardian').attr('disabled', true);
			$('#lsGurGender').attr('disabled', true);
			$('#txtMobileNo').attr('disabled', true);
			$('#txtProff').attr('disabled', true);
			$('#txtCurrentAdd').attr('disabled', true);
			$('#txtPermanentAdd').attr('disabled', true);
        }
        function removeClassMsg() {
        	$("#msgId").removeClass("alert alert-success");
        	$('#alertMsg').html('');
        }
    </script>    
    </body>
</html>