<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Print_ItemWiseStockReport</title>
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
<div class="canvas_div_pdf" id="canvas_div_pdf">
<div class="purchase-section">
<h1>Chaudhary Buildwell</h1>
<h3>Stock Report ItemWise</h3>
<div class="purchase-section-dtls">
<div class="purchase-section-dtls-left">
<table class="text-section" style="line-height: 23px; padding-left: 10px;">
<tr>
<td class="textclr">From Date</td>
<td>:</td>
<td><h1>${stkItem.getFromDate()}</h1></td>
</tr>
<tr>
<td class="textclr">
To Date
</td>
<td>:</td>
<td><h1>${stkItem.getToDate()}</h1></td>
</tr>
</table>
</div>
<div class="purchase-section-dtls-right" style="text-align: left;">
<table class="text-section" style="line-height: 23px; text-align: left; float:right; padding-right: 20px;">

</table>
</div>
</div>
<div class="table-repater table-responsive">
<table class="table table-bordered table-hover">
<thead class="thead-dark">
<tr>
<th style="width: 40px;">Sr No.</th>
<th>Item Description</th>
<th>Category</th>
<th>Uom</th>
<th>PO Qty</th>
 <th>PO Amount</th>		                                          
 <th>Mrn Qty</th>
 <th>Mrn Amount</th>
 <th>SO Qty</th>
<th>SO Amount</th>	
<th  scope="col">P&L Amount</th>
<th  scope="col">Bal Qty</th>
<th  scope="col">Last Purchase Rate</th>
<th  scope="col">Approx Stock Amt</th>
</tr>
</thead>
<tbody id="tbodyLoan">

</tbody>
</table>
<div class="main-total-btm">
<div class="total-btm-left">
	<input type="hidden" id="hdnTxtFromDate" value="${stkItem.getFromDate()}">
	<input type="hidden" id="hdnTxtToDate" value="${stkItem.getToDate()}">
</div>
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
<script type="text/javascript">
jQuery(document).ready(function($){
	getStkReportData();
});
function getStkReportData() {
	 var tabRowLen = 1;
	 var poAmount = 0;
	 var mrnAmount = 0;
	 var soAmount = 0;
	 var balAmount = 0;
	 var approxStkBalAmt = 0;
	 var data = JSON.stringify({
		    "fromDate":$('#hdnTxtFromDate').val(),
		    "toDate":$('#hdnTxtToDate').val()
		});	   
	   $.ajax({
              //url:"/EZOfficeInventory/getStockItemWiseReport",
              url:"https://salepurchasecompany.co.in/getStockItemWiseReport",
              method:"POST",
              data: data,
              contentType: 'application/json',
              cache: false,
              processData: false,
              beforeSend:function(){
              },
              success:function(data)
              {
             	if (data.length > 0) {
             		for(var i=0;i<data.length;i++){
             			//console.log("Record:"+data[i].itemName)
             			$('#tbodyLoan').append(
             				 '<tr><td>'+ tabRowLen +'</td>'+ 
            				'<td>'+ data[i].itemName +'</td>'+
            				'<td>'+ data[i].categeory +'</td>'+
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
             			poAmount = poAmount + parseFloat(data[i].poAmt);
             			mrnAmount = mrnAmount + parseFloat(data[i].mrnAmt);
             			soAmount = soAmount + parseFloat(data[i].soAmt);
             			balAmount = balAmount + parseFloat(data[i].balAmt);
             			approxStkBalAmt = approxStkBalAmt + parseFloat(data[i].approxBalStkAmt);
             			tabRowLen++;
             		}
             		$('#tbodyLoan').append(
             		  '<tr><td colspan=4><b style="font-size: 22px;">TOTAL BALANCE:</b></td><td></td>'+
             		 '<td style="color: #333; background-color: #ccc;align-items: center;"><label id="netPoAmt">'+formatNumber(poAmount)+'</label></td><td></td>'+
             		'<td style="color: #333; background-color: #ccc;align-items: center;"><label id="netMrnAmt">'+formatNumber(mrnAmount)+'</label></td><td></td>'+
             		'<td style="color: #333; background-color: #ccc;align-items: center;"><label id="netSoAmt">'+formatNumber(soAmount)+'</label></td>'+
             		'<td style="color: #333; background-color: #ccc;align-items: center;"><label id="netBalAmt">'+formatNumber(balAmount)+'</label></td><td></td><td></td>'+
             		'<td style="color: #333; background-color: #ccc;align-items: center;"><label id="netAproxStkAmt">'+formatNumber(approxStkBalAmt)+'</label></td>'+
             		'</tr>'
             		);
             		getPDF();
             	}
             }
              ,error: function(ts)
              {
             	 $("#msgId").addClass("alert alert-danger");
             	 alert("error:" + ts.responseText);
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