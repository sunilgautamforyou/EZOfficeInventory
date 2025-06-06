<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Statement Of Account(Customer)</title>
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
<h3>CUSTOMER PAYMENT (DETAILS)</h3>
<div class="purchase-section-dtls">
<div class="purchase-section-dtls-left">
<table class="text-section" style="line-height: 23px; padding-left: 10px;">
<%-- <tr>
<td class="textclr">
Tower/Flat No
</td>
<td>:</td>
<td>${rcvdSOA.getTowerNo()}</td>
</tr> --%>
<tr>
<td class="textclr">
Customer Name
</td>
<td>:</td>
<td><h1>${rcvdSOA.getCustomerName()}</h1></td>
</tr>
<tr>
<td class="textclr">
Customer Mobile
</td>
<td>:</td>
<td>${rcvdSOA.getCustomerMobileNo()}</td>
</tr>
</table>
</div>
<div class="purchase-section-dtls-right" style="text-align: left;">
<table class="text-section" style="line-height: 23px; text-align: left; float:right; padding-right: 20px;">
    <tr>
        <td class="textclr1">
        </td>
        <td></td>
        </tr>       
</table>
</div>
</div>

<div class="table-repater table-responsive">
<table class="table table-bordered table-hover" id="tblReport">
<thead class="thead-dark">
<tr>
<th style="width: 40px;">Sr No.</th>
<th>Bill Number</th>
<th>Bill Date</th>
<th>Tower/Flat No</th>
<th>Party Name</th>
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
<div class="total-btm">
    <table class="mr0">
        <tr>
<!--             <td>
                <b style="font-size: 22px;">TOTAL BALANCE:</b>
            </td> -->
            <td>
               <!-- <b><label id="netAmount"></label> </b> -->
               <input type="hidden" id="hdnSoNo" value=""/>
 <input type="hidden" id="hdnToDate" value="${rcvdSOA.getToDate()}"/>
 <input type="hidden" id="hdnFromDate" value="${rcvdSOA.getFromDate()}"/>               
            </td>
        </tr>
       
    </table>
        
    </div>
</div>
<div class="footer-section">
    <h1>
     <label id="toWords"></label>
     <input type="hidden" id="hdnTxtCustomerNM">
    </h1>
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
    $(document).ready(function () { 
    	//alert(${rcvdSOA.getCustomerId()});
    	var salesOrderId = ${rcvdSOA.getSalesOrderId()};
    	var customerId =  ${rcvdSOA.getCustomerId()};
    	var towerId = ${rcvdSOA.getTowerName()};
    	var flatNumber = ${rcvdSOA.getFlatNo()};
    	if (salesOrderId == "-") {
    		salesOrderId = null;
    	}
    	if (customerId == "-") {
    		customerId = null;
    	}
    	if (towerId == "-") {
    		towerId = null;
    	}
    	if (flatNumber == "-") {
    		flatNumber = null;
    	}    	
    	
    	getSOPymntRecvdData(salesOrderId,customerId,towerId,flatNumber,$('#hdnFromDate').val(),$('#hdnToDate').val());
    	//$('#hdnTxtCustomerNM').val(${rcvdSOA.getCustomerName()});
    });
    function getSOPymntRecvdData(soId,customerId,towerNumber,flatNumber,fromDate,toDate) {
       	var tabRowLen = 1; 
       	var totalBill = 0;
       	var runningBalance = 0;
      	var billableValue = 0;
      	var paidAmount = 0;       
       	if (soId == "0") {
       		soId = null;
       	}
       	if (customerId == "0") {
       		customerId = null;
       	}
       	if (towerNumber == "0") {
       		towerNumber = null;
       	}       	
       	if (flatNumber == "") {
       		flatNumber = null;
       	}
       	
       	$('#btnPrint').hide();
       	$('#pymntGridBody').html('');
       	$.ajax({
       		//url: '/EZOfficeInventory/getSOPymntRecvdData',
       		url: 'https://salepurchasecompany.co.in/getSOPymntRecvdData',
            	type: 'POST',
       		contentType: 'application/json',	
       		   data: JSON.stringify(
       		   	{
       		   		"salesOrderId":soId,
       		   		"customerId":customerId,
       		   		"towerNo":towerNumber,
       		   		"flatNo":flatNumber,
       		   		"fromDate":fromDate,
      		   		 "toDate":toDate
    	   		   	}),
       		   	dataType: 'json',
       		   	success: function (data) {
       		   		console.log(data);
       		   		if (data.length > 0) {
       		   			$('#pymntGridBody').show();
       		   			for(var i=0;i<data.length;i++){
        		        if (data[i].totalBillAmount > 0) {
      		        		totalBill = runningBalance + data[i].totalBillAmount;
        		        }
          		        	runningBalance = totalBill - data[i].recvdBillAmount;
       		   				$('#pymntGridBody').append(
    		                        '<tr>'+
    		                        '<td>'+tabRowLen+'</td>'+
    			                     '<td>'+data[i].salesOrderNumber+'</td>'+ 
    			                     '<td>'+data[i].salesDate+'</td>'+ 
    			                      '<td>'+data[i].towerNo+'/'+ data[i].flatNo +'</td>'+
    			                      '<td>'+data[i].customerName+'</td>'+
    			                      '<td>'+formatNumber(data[i].totalBillAmount)+'</td>'+
    			                      '<td>'+formatNumber(data[i].recvdBillAmount)+'</td>'+
    			                      '<td>'+formatNumber(runningBalance)+'</td>'+
    			                      '</tr>'); 
          		        		tabRowLen++;
          		        		totalBill = runningBalance;
         		        		billableValue = billableValue + data[i].totalBillAmount;
         		        		paidAmount =   paidAmount + data[i].recvdBillAmount;          		        		
       		        	}  
		   			$('#pymntGridBody').append(
	   					'<td colspan=5><b style="font-size: 22px;">TOTAL BALANCE:</b></td>'+				
	   					'<td style="color: #333; background-color: #ccc;align-items: center;"><label id="netBillAmt">'+formatNumber(billableValue)+'</label></td>'+
	   					'<td style="color: #333; background-color: #ccc;align-items: center;"><label id="netPaidAmt">'+formatNumber(paidAmount)+'</label></td>'+
	   					'<td style="color: #333; background-color: #ccc;align-items: center;"><label id="netalAmt">'+formatNumber(runningBalance)+'</label></td>'+
	   					'</tr>'
       		   			)
/*     	  		   		$('#netBillAmt').html(formatNumber(billableValue));	
    	  		   		$('#netPaidAmt').html(formatNumber(paidAmount));
    	  		   		$('#netalAmt').html(formatNumber(runningBalance)); */
    	  		   		if (runningBalance > 0) {
    	  		   			$('#toWords').html("Total Amount in Words: " + inWords(Math.ceil(runningBalance)).toUpperCase());	
    	  		   		}
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
  	function roundToTwo(num) {
  	    return +(Math.round(num + "e+2")  + "e-2");
  	}	
  		
  	var a = ['','one ','two ','three ','four ', 'five ','six ','seven ','eight ','nine ','ten ','eleven ','twelve ','thirteen ','fourteen ','fifteen ','sixteen ','seventeen ','eighteen ','nineteen '];
  	var b = ['', '', 'twenty','thirty','forty','fifty', 'sixty','seventy','eighty','ninety'];

  	function inWords (num) {
  	    if ((num = num.toString()).length > 9) return 'overflow';
  	    n = ('000000000' + num).substr(-9).match(/^(\d{2})(\d{2})(\d{2})(\d{1})(\d{2})$/);
  	    if (!n) return; var str = '';
  	    str += (n[1] != 0) ? (a[Number(n[1])] || b[n[1][0]] + ' ' + a[n[1][1]]) + 'crore ' : '';
  	    str += (n[2] != 0) ? (a[Number(n[2])] || b[n[2][0]] + ' ' + a[n[2][1]]) + 'lakh ' : '';
  	    str += (n[3] != 0) ? (a[Number(n[3])] || b[n[3][0]] + ' ' + a[n[3][1]]) + 'thousand ' : '';
  	    str += (n[4] != 0) ? (a[Number(n[4])] || b[n[4][0]] + ' ' + a[n[4][1]]) + 'hundred ' : '';
  	    str += (n[5] != 0) ? ((str != '') ? 'and ' : '') + (a[Number(n[5])] || b[n[5][0]] + ' ' + a[n[5][1]]) + 'only ' : '';
  	    return str;
  	}	
  	function getPDF(){

  	/* 	var HTML_Width = $(".canvas_div_pdf").width();
  		var HTML_Height = $(".canvas_div_pdf").height();
  		var top_left_margin = 15;
  		var PDF_Width = HTML_Width+(top_left_margin*2);
  		var PDF_Height = (PDF_Width*1.5)+(top_left_margin*2);
  		var canvas_image_width = HTML_Width;
  		var canvas_image_height = HTML_Height;
  		
  		var totalPDFPages = Math.ceil(HTML_Height/PDF_Height)-1;
  		

  		html2canvas($(".canvas_div_pdf")[0],{allowTaint:true}).then(function(canvas) {
  			canvas.getContext('2d');
  			
  			console.log(canvas.height+"  "+canvas.width);
  			
  			
  			var imgData = canvas.toDataURL("image/jpeg", 1.0);
  			var pdf = new jsPDF('p', 'pt',  [PDF_Width, PDF_Height]);
  		    pdf.addImage(imgData, 'JPG', top_left_margin, top_left_margin,canvas_image_width,canvas_image_height);
  			
  			
  			for (var i = 1; i <= totalPDFPages; i++) { 
  				pdf.addPage(PDF_Width, PDF_Height);
  				pdf.addImage(imgData, 'JPG', top_left_margin, -(PDF_Height*i)+(top_left_margin*4),canvas_image_width,canvas_image_height);
  			}
  			//window.open(pdf.output('bloburl'))
  		    pdf.save("Customers_Payment_Statement_"+replaceCharData($('#hdnTxtCustomerNM').val())+".pdf");
  			//window.close();
  	    }); */
  	    
  		window.print();
  	};  	
  	function replaceCharData (inputValue) {
  		return inputValue.replace("/","-");
  	}  	
    </script>
</body>
</html>