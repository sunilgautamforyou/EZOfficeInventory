<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Purchase Order</title>
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
                            <li><a href="https://salepurchasecompany.co.in/ItemMaster">Item Master</a></li>
                            <li><a href="https://salepurchasecompany.co.in/partyMaster">Party Master</a></li>
                       </ul>
                    </li>
                    <li class="active"><a href="#purchase" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-bar-chart"></i>Transaction</a>
                        <ul id="purchase" class="collapse list-unstyled show">
                            <li class="active"><a href="https://salepurchasecompany.co.in/purchase">Purchase Order</a></li>
                            <li><a href="https://salepurchasecompany.co.in/salesOrder">Sales Order</a></li>
                            <li><a href="https://salepurchasecompany.co.in/makePayment">Make Payment</a></li>
                            <li><a href="https://salepurchasecompany.co.in/receicePymnt">Received Payment</a></li>
                            <li><a href="https://salepurchasecompany.co.in/mrn">Material Receipt</a></li>
                            <li><a href="https://salepurchasecompany.co.in/rfq">Quotation</a></li>
                        </ul>
                    </li> 
                   <li class="active"><a href="#reports" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-book"></i>Reports</a>
                  	<ul id="reports" class="collapse list-unstyled show">
                  	<li><a href="https://salepurchasecompany.co.in/stockReport">Stock Report</a></li>
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
                    <li class="breadcrumb-item active">Purchase Order</li>
                </ul>
            </div>
        </div>
        <section>
            <div class="container-fluid">
                    <div class="card">
                        <div class="card-body">
                            <div class="container">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-md-1 col-form-label">P.O. No.</label>
                                    <div class="col-sm-6 col-md-3 pl0">
                                        <input type="text" id="txtPoNumber" class="form-control" placeholder="PO Number">
                                    </div>
                                    <label class="col-sm-4 col-md-1 col-form-label pl15">P.O. Date</label>
                                    <div class="col-sm-6 col-md-3 pl0 cal-position">
                                        <input type="text" id="txtPoDate" class="form-control input-group date" placeholder="Purchase Order Date">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                  
                                  </div>
                                  <div class="form-group row">
                                    <label class="col-sm-4 col-md-1 col-form-label">Supplier</label>
                                    <div class="col-sm-6 col-md-3 pl0">
                                      <select class="custom-select" id="lstSupplier">
<!--                                         <option selected>Choose...</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option> -->
                                      </select>   
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
                                    <table class="table table-bordered table-hover" id="potable">
                                      <thead id="reportMainHead" class="thead-dark">
                                         <tr>
                                          <th scope="col" hidden="true">ItemId</th>
                                          <th scope="col" hidden="true">UomID</th>
                                          <th scope="col">Sr No.</th>
                                          <th scope="col">Item Detailed Description</th>
                                          <th scope="col">UOM</th>
                                          <th scope="col">GST%</th>
                                          <th scope="col">Quantity</th>
                                          <th  scope="col">Rate</th>
                                          <th  scope="col">Amount</th>
                                          <th  scope="col">Action</th>
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
                                            <td class="border-left"><b>Total Amount</b></td>
                                            <td class="border-left"> 
                                                <span><b><label id="lblTotal"></label></b></span>
                                                <i class="fa fa-rupee-sign"></i>
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
                                    <Button ID="btnSave" onclick="savePoData()" class="common-btn">Save</Button>
                                    <Button ID="btnRefresh" class="common-btn">Refresh</Button>
                                    <Button ID="btnPrint" onclick="vwReport()" class="common-btn gray-btn">Print</Button>
                                    <Button ID="btnClose" onclick="exitToHomePage()" class="common-btn gray-btn">Exit</Button>

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
    var tabRowLen = 0;   
    var delBtn;
    var poId = 0;
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
            var currentRow=$(this).closest("tr"); 
            var itemId=currentRow.find("td:eq(0)").text();
            var uomId=currentRow.find("td:eq(1)").text();
            var itemName=currentRow.find("td:eq(3)").text();
            var gstNo=currentRow.find("td:eq(5)").text();
            var uomDesc=currentRow.find("td:eq(4)").text(); 
            var col3=currentRow.find("td:eq(6)").text(); 
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
  				alert("Item Already Added in this Purchase Order");
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
            		'<td>'+ uomDesc +'</td>'+
            		'<td>'+ gstNo +'</td>'+
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
    			  $("#lblTotal").html(txtTotalAmount);
    	}
  
    	$('#potable').on('keypress','#txtQty',function(event) {
    	    if (((event.which != 46 || (event.which == 46 && $(this).val() == '')) ||
    	            $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
    	        event.preventDefault();
    	    }
    	});   	
    	$('#potable').on('keypress','#txtRate',function(event) {
    	    if (((event.which != 46 || (event.which == 46 && $(this).val() == '')) ||
    	            $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
    	        event.preventDefault();
    	    }
    	});    	
     	function calculatePOItemAmt(poQty,poRate,gstPct) {
     		var itemAmount = (poQty * poRate);
     		if (gstPct > 0) {
     			var gstAmount = (itemAmount * gstPct)/100;
     			itemAmount = itemAmount + gstAmount;
     		}
     		return itemAmount; 
     	}        
      	$("#potable").on('keyup','#txtQty',function(){
			var qty= $(this).closest('tr').find('#txtQty').val();
			var rate= $(this).closest('tr').find('#txtRate').val();
			var gstPct = $(this).closest('tr').find("td:eq(5)").text();
    		if (rate == 0) {
    			rate = 1;
    		}
    		var poItemAmount = calculatePOItemAmt(parseFloat(qty),parseFloat(rate),parseFloat(gstPct));
    		$(this).closest('tr').find('#txtAmt').val(poItemAmount);
    		
    		calculateNetAmount();
    	});
      	$("#potable").on('keyup','#txtRate',function(){
			var qty= $(this).closest('tr').find('#txtQty').val();
			var rate= $(this).closest('tr').find('#txtRate').val();
			var gstPct = $(this).closest('tr').find("td:eq(5)").text();
    		if (rate == 0) {
    			rate = 1;
    		}
    		var poItemAmount = calculatePOItemAmt(parseFloat(qty),parseFloat(rate),parseFloat(gstPct));
    		$(this).closest('tr').find('#txtAmt').val(poItemAmount);
    		calculateNetAmount();
    	});      	
		function fillPartyData() {
			$.ajax({
				//url: '/EZOfficeInventory/get-all-HomePG-Party-data',
				url: 'https://salepurchasecompany.co.in/get-all-HomePG-Party-data',
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
				        if ("${sMode}" == "new") {
					        $('#lstSupplier').html("");	
					        $('#lstSupplier').append('<option value=0>Choose...</option>');				        	
				        }
  				        for(var i=0;i<data.length;i++){
							$('#lstSupplier').append('<option value='+data[i].partyId+'>'+data[i].partyName+'</option>');							
				        }
				   	},
				    error: function (error) {
				        console.log(`Error ${error}`);
				    }
			});
		}
		
		function validate() {
			var isVldFail = true;
			var poDate = $('#txtPoDate').val();
			var supplier = $('#lstSupplier').val();
			var poDtlGrid = $("#reportDtltdata tr").length;
			if (poDate == "") {
				alert('PO Date Cannot be left Blank');
				$('#txtPoDate').focus();
				isVldFail = false;
				return false;
			}
			if (supplier == "0" || supplier == "Choose...") {
				alert('Supplier Cannot be left Blank');
				$('#lstSupplier').focus();
				isVldFail = false;
				return false;
			}
			if (poDtlGrid == "0") {
				alert('Atleast Select One Item In PO');
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
					} else if (i == 6) {
					  if ($(this).closest('tr').find('#txtQty').val() == "") {
						alert("Qty At Item:[" + itemDesc + "] With UOM :[" + uomDesc + "]\nCannot be left blank")
						$(this).closest('tr').find('#txtQty').focus();
						isVldFail = false;
						return false;
					  }
					} else if (i == 7) {
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
		function savePoData() {
			if (validate() == true) {
 				var keys=[], arrayObj=[];
				  keys.push("itemId");
				  keys.push("uomId");
				  keys.push("poQty");
				  keys.push("poRate");
				  keys.push("poAmount");
				  $("#reportDtltdata tr").each(function(){
					    var obj={}, i=0;
					    $(this).children("td").each(function(){
					      if (i == 0) {
					    	  obj["itemId"]=$(this).html();  
					      } else if (i == 1) {
					    	  obj["uomId"]=$(this).html();
					      } else if (i == 6) {
					    	  obj["poQty"]=$(this).closest('tr').find('#txtQty').val();
					      }  else if (i == 7) {
					    	  obj["poRate"]=$(this).closest('tr').find('#txtRate').val();
					      } else if (i == 8) {
					    	  obj["poAmount"]=$(this).closest('tr').find('#txtAmt').val();
					      } else if (i == 5) {
					    	  obj["gstPct"]=$(this).html();
					      }
					      i++;
					    })
					    obj["sMode"] ="${sMode}";
					    obj["supplierId"] =$('#lstSupplier').val();
					    obj["poDate"] =$('#txtPoDate').val();
					    obj["remarks"] =$('#txtRemarks').val().replace(/(\r\n|\n|\r)/gm, "");
					    obj["createdById"] =1;
					    if ("${sMode}" == "edit") {
					    	obj["poNo"] =$("#txtPoNumber").val();
					    	obj["ipoId"] ="${po.getIpoId()}";
					    }
				    arrayObj.push(obj);
				  });	
				  //$('body').append(JSON.stringify({data: arrayObj})); 
				  console.log(arrayObj);
				  var xhr = new XMLHttpRequest();
				  //xhr.open("POST", "/EZOfficeInventory/Save-PO-Data", true);
				  xhr.open("POST", "https://salepurchasecompany.co.in/Save-PO-Data", true);
				  xhr.setRequestHeader("Content-Type", "application/json");
				  xhr.onreadystatechange = function () {
					  if (xhr.readyState === 4 && xhr.status === 200) {
						  var responseData = JSON.parse(xhr.responseText);
						  console.log(responseData);
						  if (responseData.errorFlag == false) {
	 				           $("#msgId").addClass("alert alert-success");
	 				    	   $("#alertMsg").append(responseData.strMessage.substring(0,responseData.strMessage.indexOf(":"))); 
	 				    	   $("#txtPoNumber").val(responseData.strMessage.substring(responseData.strMessage.indexOf(":")+1,responseData.strMessage.length));
	 				    	   $("#txtPoDate").attr('disabled', true);
	 				    	   $("#lstSupplier").attr('disabled', true);
	 				    	   $("#txtRemarks").attr('disabled', true);
	 				    	   $("#divSearchItem").hide();
	 				    	   $("#potable").find("input,button,textarea,select").attr("disabled", "disabled");
	 				    	   $('#btnSave').attr('disabled', true); 
	 				    	   $('#btnPrint').show();
	 				    	   poId = responseData.recordNumber;
	 				    	   alert(responseData.strMessage);	
						  } else {
	  				           $("#msgId").addClass("alert alert-success");
	 				    	   $("#alertMsg").append(responseData.strMessage); 	 							
	 						}
					  }
				  };
				  xhr.send(JSON.stringify(arrayObj)); 
			}
		}		
		
		jQuery(document).ready(function($){
			$('#txtPoNumber').attr('disabled', true);
			$('#btnPrint').hide();
			if ("${sMode}" == "new") {
				fillPartyData();
				setCurrentDate();
			}
			if ("${sMode}" == "edit" || "${sMode}" == "view") {
				$("#txtPoNumber").val("${po.getPoNo()}")
				$("#txtPoDate").val("${po.getPoDate()}");
				$('#lstTowerNo').html('');
				$('#btnPrint').show();
				$('#lstSupplier').append('<option value='+"${po.getSupplierId()}"+'>'+"${po.getSupplierName()}"+'</option>');
 				if ("${sMode}" == "edit") {
					fillPartyData();
				} 
 				poId = "${po.getIpoId()}";
				$("#txtRemarks").val("${po.getRemarks()}")
				fillPoDtlDataGrid("${po.getIpoId()}");
				if ("${sMode}" == "view") {
					 $("#divSearchItem").hide();
					 $("#txtPoDate").attr('disabled', true); 
					 $('#lstTowerNo').attr('disabled', true); 
					 $('#lstSupplier').attr('disabled', true); 
					 $("#txtRemarks").attr('disabled', true); 
				     $('#btnSave').attr('disabled', true); 
				     $('#btnRefresh').attr('disabled', true); 
				}
			} 
		});
	    function setCurrentDate() {
	    	var today = new Date();
	    	var dd = String(today.getDate()).padStart(2, '0');
	    	//var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
	    	var month = today.toLocaleString('default', { month: 'short' });

	    	var yyyy = today.getFullYear().toString().substr(-2);

	    	today = dd + '-' + month + '-' + yyyy;
	    		
	    	$("#txtPoDate").val(today);
	    }		
		function fillPoDtlDataGrid(poId) {
			$.ajax({
				//url: '/EZOfficeInventory/Fill-PO-DTL-GRID-DATA',
				url: 'https://salepurchasecompany.co.in/Fill-PO-DTL-GRID-DATA',
		     	type: 'POST',
				contentType: 'application/json',	
				   data: JSON.stringify(
				   	{
				   		"searchVarData":poId
				   		
				   	}),
				   	dataType: 'json',
				   	success: function (data) {
				   		console.log(data);
  				        for(var i=0;i<data.length;i++){
  				            $('#tbodyLoan').html('');
  				            tabRowLen = tabRowLen + 1;
  				            delBtn= '<button type="button" class="common-btn btn-sm red-btn" id="delBtn" onclick="onClickDelete(event, ' + data[i].itemId + ')")>Delete</button>';
  				            $("#reportDtltdata").append(
			            		'<tr>'+
			            		'<td hidden>'+ data[i].itemId +'</td>'+
			            		'<td hidden>'+ data[i].uomId +'</td>'+
			            		'<td>'+ tabRowLen +'</td>'+
			            		'<td>'+ data[i].itemDesc +'</td>'+
			            		'<td>'+ data[i].uomDesc +'</td>'+
			            		'<td>'+ data[i].gstPct +'</td>'+
			            		'<td><input type="text" class="form-control" id="txtQty" placeholder="Qty" value="'+ data[i].poQty +'"></td>'+
			            		'<td><input type="text" class="form-control" id="txtRate" placeholder="Rate" value="'+ data[i].poRate +'"></td>'+
			            		'<td><input type="text" class="form-control" id="txtAmt" disabled="disabled" placeholder="Amount" value="'+ data[i].poAmount +'"></td>'+
			            		'<td>'+delBtn+'</td>'+
			            		+'</tr>');
				        }
  				      if ("${sMode}" == "view") {
  				    		$("#potable").find("input,button,textarea,select").attr("disabled", "disabled");
  				      }
  				      calculateNetAmount();
				   	},
				    error: function (error) {
				        console.log(`Error ${error}`);
				    }
			});
		}
		function exitToHomePage() {
			//location.href = "/EZOfficeInventory/purchase";
			location.href = "https://salepurchasecompany.co.in/purchase";
		}  	
		function vwReport() {
			srchData = {
					"poId" : poId
				};
				//window.location.href = "/EZOfficeInventory/PrintPO?"
				 //window.location.href = "https://salepurchasecompany.co.in/OpenPurchaseOrder?"
					//	+ $.param(srchData);
				//var poLink = "/EZOfficeInventory/PrintPO?"+ $.param(srchData);
				var poLink = "https://salepurchasecompany.co.in/PrintPO?"+ $.param(srchData);
				popitup(poLink);
		}
		function popitup(url) {
			newwindow=window.open(url,'name','height=600,width=900');
			if (window.focus) {newwindow.focus()}
			return false;
			}		
        </script>
</body>
</html>