<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>:: ABC ::</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
    <!-- Custom Scrollbar-->

    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/responsive.css">

    <link rel="stylesheet" href="css/style.css">
    <!-- Custom stylesheet - for your changes-->
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>

<div class="page login-page">
  <div class="opacity-gray">
                <div class="container">
                  <div class="form-outer text-center d-flex align-items-center">
                 <div class="form-inner login-page">
                   <div class="login-left">
                    <div class="rotated rotate-two">Login to Your Account</div>
                   </div>
                   <div class="login-right">
                      <div class="logo">
                        <h1 style="font-size: 26px !important">ABC</h1>
                      </div>
                      <form method="get" class="text-left form-validate">
                        <div class="form-group-material">
                          <input id="login-username" type="text" name="loginUsername" required data-msg="Please enter your username" placeholder="Username" class="input-material">
                          <label for="login-username"><i class="fa fa-user"></i> </label>
                        </div>
                        <div class="form-group-material">
                          <input id="login-password" type="password" name="loginPassword" required data-msg="Please enter your password" placeholder="Password" class="input-material">
                          <label for="login-password"><i class="fa fa-lock"></i> </label>
                        </div>
                        <div class="form-inline remember-login">
                          <div class="i-checks mr-15 float-left">
                              <input id="flagweekends" type="checkbox" value="" class="form-control-custom">
                              <label for="flagweekends">Remember Me</label>
                          </div>
                        
                      <div class="float-right"><a href="forgot.html" class="forgot-pass">Forgot Password?</a></div>
                      </div>
                        <div class="form-group text-center"><a id="show" onclick="login()" class="btn login-btn">Login</a>
                        </div>
		               <div id="msgId" role="alert">
			          	<h5 id="alertMsg" align="center" style="text-align: center;font: bold;color: blue;"></h5>
			          	</div>
                      </form>
                  
                    </div> 
                    </div>
              
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
 
</body>
<script type="text/javascript">
function login() {
    var username = $("#login-password").val();
    var password = $("#login-password").val();

    var validation = 0;
    if (username == 0 || username == null || username == "") {
        $("#msgId").addClass("alert alert-warning");
        $("#alertMsg").append(" Please enter username. ");
        return false;
    }
    if (password == 0 || password == null || password == "") {
        $("#msgId").addClass("alert alert-warning");
        $("#alertMsg").append(" Please enter password. ");
        return false;
    }
    if (validation == 0) {
        //  alert("login")
        var data = JSON.stringify({
            "loginUserName": username,
            "password": password
        });
        $.ajax({
                //url: '/EZOfficeInventory/login',
                url: 'https://salepurchasecompany.co.in/login',
                method: "POST",
                data: data,
                contentType: 'application/json',
                cache: false,
                processData: false,
                beforeSend: function() {
                    $('#show').prop('disabled', true);
                    $('#show').html('<i class="fas fa-spinner fa-spin"></i> Processing...');
                },
                success: function(data) {
                    if (data.loginUserName != null) {
                    	$("#msgId").addClass("alert alert-warning");
                    	$("#alertMsg").append("Login Success");
                    	//location.href = "/EZOfficeInventory/dashBoard";
                        location.href = "https://salepurchasecompany.co.in/dashBoard";            		
                    }
                },
                error: function(ts) {
                    console.log(error)
                    $("#msgId").addClass("alert alert-warning");
                    $("#alertMsg").append(data.errorMesage);
                }             
            });

    }

};
</script>
</html>