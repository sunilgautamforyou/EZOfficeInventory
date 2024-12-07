<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
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
				        <input type="text" id="txtCustomerId" class="form-control" placeholder="Enter Customer Name">
				    </div>
				    <label class="col-sm-4 col-md-1 col-form-label pl15">Work:</label>
			        <div class="col-sm-6 col-md-3 pl0 pr-0">
			        	<input type="text" id="txtProff" class="form-control" placeholder="Enter Profession">
			        </div>
				</div>
<div class="form-group row">
    <label class="col-sm-4 col-md-1 col-form-label">Guardian:</label>
    <div class="col-sm-1 col-md-1 pr-0">
        <select class="custom-select" id="lsGender">
            <option selected="selected" value="0">Mr.</option>
            <option value="1">Ms.</option>
            <option value="2">Mrs.</option>
        </select>                
    </div>
    <div class="col-sm-6 col-md-3 pl-0">
        <input type="text" id="txtGuardian" class="form-control" placeholder="Enter Guardian/Spouse Name">
    </div>
    <label class="col-sm-4 col-md-1 col-form-label pl-2">Identity:</label>
    <div class="col-sm-1 col-md-1 pr-0">
        <select class="custom-select" id="lsIdType">
            <option selected="selected" value="0">AdharCard</option>
            <option value="1">Pan</option>
            <option value="2">DL</option>
            <option value="3">Other</option>
        </select>            
    </div>
    <div class="col-sm-6 col-md-3 pl-0 pr-0">
        <input type="text" id="txtIdNo" class="form-control" placeholder="Enter IDNo">
    </div>                   
</div>

				<div class="form-group row">
					<label class="col-sm-4 col-md-1 col-form-label">Current Address:</label>
					<div class="col-sm-6 col-md-3 pr-0">
						<textarea rows="2" id="txtCurrentAdd" class="form-control" placeholder="Enter Current Address"></textarea>
					</div>
				</div>	
				<div class="form-group row">
					<label class="col-sm-4 col-md-1 col-form-label">Permanent Address:</label>
					<div class="col-sm-6 col-md-3 pr-0">
						<textarea rows="2" id="txtPermanentAdd" class="form-control" placeholder="Enter Permanent Address"></textarea>
					</div>
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
  </body>
</html>