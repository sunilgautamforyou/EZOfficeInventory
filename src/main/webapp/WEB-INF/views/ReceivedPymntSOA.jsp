<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>CustomerSOA-Summary</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Google fonts - Roboto -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.3/jspdf.min.js"></script>
<script src="https://html2canvas.hertzen.com/dist/html2canvas.js"></script>
<style type="text/css">
body{
font-family: "Roboto", sans-serif;
font-size: 16px;
color: #676767;
padding: 0px;
margin: 10px;
}
.purchase-section{
border: 2px solid #ccc;
width:100%;
min-height: 800px;
margin: 0px auto;
padding-bottom: 20px;
}
.purchase-section h1{
font-size: 22px;
text-align: center;
}
.purchase-section h3{
font-size: 16px;
margin-top: 30px;
text-align: center;
margin-bottom: 30px;
}
.purchase-section-dtls{
width:100%;;
padding:0px;
font-size: 14px;
overflow: auto;
}
.purchase-section-dtls-left{
width: 60%;
float: left;
}
.purchase-section-dtls-right{
width:40%;
float: right;
}
.textclr{
color:#000;
}
.textclr1{
color:#000;
text-align: right;
}
.text-remarks{
width: 94%;
min-height: 80px;
border: 1px solid #ccc;
margin: 20px auto;
padding: 10px;
padding-top: 0px;

}
.table .thead-dark tr th {
background: #f5f5f5;
position: sticky;
top: 0;
white-space: nowrap;
z-index: 1;
color: #404040;
height: 40px;
}
.table-responsive .table td, .table th {
padding: 4px;
text-align: center;
}
.table-repater.table-responsive table {
width: 96%;
margin: 0px auto;
font-family: "Roboto", sans-serif;
font-size: 14px;
border-spacing: 0px;
}
.table-bordered td, .table-bordered th {
border: 1px solid #dee2e6;
}
.table-repater h4 {
margin: 0px;
padding: 0px;
}
.table-repater .table .thead-dark tr th:nth-child(2), .table-repater .table .thead-dark tr td:nth-child(2){
min-width: 250px;
}
.table-repater .table .thead-dark tr th:nth-child(3), .table-repater .table .thead-dark tr td:nth-child(3){
min-width: 100px;
}
.main-total-btm{
    width: 96%;
    margin: 0px auto;
    font-family: "Roboto", sans-serif;
    font-size: 14px;
    border-spacing: 0px;
    height: 130px;
    position: relative;
}

.total-btm-left {
    width: 30%;
    float: left;
    position: absolute;
    bottom: 0px;
}
.total-btm {
    width:100%;
    height: 35px;
    float: right;
    line-height: 30px;
    text-align: center;
    padding-right: 0px;
    margin-right: 0px;
}
.total-btm table tr td:first-child{
    text-align: right;
    width: 60%;
    padding-right: 10px;
}
.total-btm table tr td:nth-child(2) {
    text-align: right;
    width: 40%;
    background-color: #e3e3e37a;
    border-bottom: 1px solid #01010136;
    padding-right: 10px;
    border-radius: 0px 0px 5px 5px;
}
.total-btm tr td {
    font-size: 15px;
}
.footer-section h5 {
    text-align: center;
    font-size: 15px;
    font-weight: normal;
    background-color: #eeeeee;
    width: 96%;
    margin: 0px auto;
    margin-top: 20px;
    height: 36px;
    line-height: 36px;
}
.mr0{
    margin-right:0px !important ;
}
</style>
</head>
<body>
<!-- Header Section -->
<div class="canvas_div_pdf">
<div class="purchase-section">
<h1>
Chaudhary Buildwell
</h1>
<h3>CUSTOMER PAYMENT (SUMMARY)</h3>
<div class="purchase-section-dtls">
<div class="purchase-section-dtls-left">
<table class="text-section" style="line-height: 23px; padding-left: 10px;">
<tr>
<td class="textclr">
Tower
</td>
<td>:</td>
<td><h1>${rcvdSOA.getTowerNo()}</h1></td>
</tr>
<tr>
<td class="textclr">
FlatNo
</td>
<td>:</td>
<td><h1>${rcvdSOA.getPoId()}</h1></td>
</tr>
</table>
</div>
<div class="purchase-section-dtls-right" style="text-align: left;">
<table class="text-section" style="line-height: 23px; text-align: left; float:right; padding-right: 20px;">
    <tr>
  <td class="textclr1">
  Date From
  </td>
  <td>:</td>
  <td><h1>${rcvdSOA.getFromDate()}</h1></td>
  </tr>
    <tr>
  <td class="textclr1">
  Date To:
  </td>
  <td>:</td>
  <td><h1>${rcvdSOA.getToDate()}</h1></td>
  </tr>  
</table>
</div>
</div>
<div class="table-repater table-responsive">
<table class="table table-bordered table-hover" id="tblReport">
<thead class="thead-dark">
<tr>
<th style="width: 40px;">Sr No.</th>
<th>CustomerName</th>
<th>TowerNo</th>
<th>Bill Amount</th>
<th>Received Amount</th>
<th>Balance Amount</th>
</tr>
</thead>
<tbody id="pymntGridBody">

</tbody>
</table>
<div class="main-total-btm">
<div class="total-btm-left">
</div>
<div class="main-total-btm">
<div class="total-btm-left">
</div>
<div class="total-btm">
    <table class="mr0">
<!--         <tr>
            <td>
                <b style="font-size: 22px;">TOTAL BALANCE:</b>
            </td>
            <td style="color: #333; background-color: #ccc;align-items: center;">
               <b><label id="netAmount"></label> </b>
               <input type="hidden" id="hdnSoNo" value=""/>
            </td>
        </tr> -->
       
    </table>
        
    </div>
</div>
</div>
 <input type="hidden" id="hdnFromDate" value="${rcvdSOA.getFromDate()}"/>
 <input type="hidden" id="hdnToDate" value="${rcvdSOA.getToDate()}"/>
 <input type="hidden" id="hdnCutomerId" value="${rcvdSOA.getCustomerId()}"/>
</div>
</div>
</div>
   <script src="js/jquery.min.js"></script>
   <script src="js/popper.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
   <script src="js/jquery.dataTables.min.js"></script>
   <script src="js/dataTables.bootstrap4.min.js"></script>
   <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
   <script type="text/javascript">
   $(document).ready(function () {
	   getPaymentStatement($('#hdnCutomerId').val(),
			   ${rcvdSOA.getTowerId()},
			   ${rcvdSOA.getFlatNo()},
			   $('#hdnFromDate').val(),$('#hdnToDate').val())
   });
   
   
   function getPaymentStatement(customerId,towerId,flatNo,fromDate,toDate) {
	   var tabRowLen = 1; 
	   var totalBillAmount = 0;
	   var totalRecvdAmount = 0;
	   var totalBalanceAmt = 0;
	   	if (customerId == "0" || customerId == "") {
	   		customerId = null;
	   	}
	   	if (towerId == "0") {
	   		towerId = null;
	   	}
	   	if (flatNo == "") {
	   		flatNo = null;
	   	}
	   	$('#pymntGridBody').html('');
	   	$.ajax({
	   		//url: '/EZOfficeInventory/getCustomerSOAStmtData',
	   		url: 'https://salepurchasecompany.co.in/getCustomerSOAStmtData',
       	type: 'POST',
	   		contentType: 'application/json',	
	   		   data: JSON.stringify(
	   		   	{
	   		   		"customerId":customerId,
	   		   		"towerName":towerId,
	   		   		"flatNo":flatNo,
	   		   		"fromDate":fromDate,
	   		   		 "toDate":toDate
		   		   	}),
	   		   	dataType: 'json',
	   		   	success: function (data) {
	   		   		console.log(data);
	   		   		if (data.length > 0) {
	   		   			for(var i=0;i<data.length;i++){
  		   				$('#pymntGridBody').append(
		                        '<tr>'+
		                        '<td>'+tabRowLen+'</td>'+
		                        '<td>'+data[i].customerName+'</td>'+
			                      '<td>'+data[i].towerDescription+'/'+ data[i].flatNo +'</td>'+
			                      '<td>'+formatNumber(data[i].totalBillAmount)+'</td>'+
			                      '<td>'+formatNumber(data[i].recvdBillAmount)+'</td>'+
			                      '<td>'+formatNumber(data[i].advanceBillAmount)+'</td>'+
			                      '</tr>'); 
  		   					tabRowLen++;
  		   				totalBillAmount = totalBillAmount + data[i].totalBillAmount;
  		   				totalRecvdAmount = totalRecvdAmount + data[i].recvdBillAmount;
  		   				totalBalanceAmt = totalBalanceAmt + data[i].advanceBillAmount;
	   		        	}   
			   			$('#pymntGridBody').append(
			   					'<td colspan=3><b style="font-size: 22px;">TOTAL BALANCE:</b></td>'+				
			   					'<td style="color: #333; background-color: #ccc;align-items: center;"><label id="netBillAmt">'+formatNumber(totalBillAmount)+'</label></td>'+
			   					'<td style="color: #333; background-color: #ccc;align-items: center;"><label id="netPaidAmt">'+formatNumber(totalRecvdAmount)+'</label></td>'+
			   					'<td style="color: #333; background-color: #ccc;align-items: center;"><label id="netalAmt">'+formatNumber(totalBalanceAmt)+'</label></td>'+
			   					'</tr>'
	     		   		)	   		   			
	   		   			getPDF();
	   		   		} else {
	   		   			alert("No Payment Data Found");
	   		   		}

	   		   	},
	   		    error: function (error) {
	   		        console.log(`Error ${error}`);
	   		    }
	   	});    	
  }        	   
 	function formatNumber(n) {
  	  return n.toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,");
  }  	   
  function getPDF(){
	  window.print();
  }
   </script>
</body>
</html>