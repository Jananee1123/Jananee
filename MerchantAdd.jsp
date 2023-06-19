<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Merchant Add </title>
<style>
.floating-box {
	display: inline-block;
	}
	.bfsbutton {
	background: -webkit-linear-gradient(top, crimson 0%, crimson 100%);
	background: linear-gradient(to bottom, crimson 0%, crimson 100%);
	padding: 8px 55px;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	color: white;
	font-size: 16px;
	font-family: Georgia, serif;
	text-decoration: none;
	vertical-align: middle;
}

.bfsbutton:hover {
	border-top-color: #7ea207;
	background: #dc143c;
	color: #ccc;
}

.bfsbutton:active {
	border-top-color: #ffffff;
	background: #ffffff;
}
</style>
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/adminlte.min.css">
<!-- Select2 -->
<script src="plugins/select2/js/select2.full.min.js"></script>
<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="plugins/select2/css/select2.min.css">
  <link rel="stylesheet" href="plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
  <!-- Bootstrap4 Dual listbox -->
  <link rel="stylesheet" href="plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
  <!-- BS Stepper -->
  <link rel="stylesheet" href="plugins/bs-stepper/css/bs-stepper.min.css">
  <!-- dropzonejs -->
  <link rel="stylesheet" href="plugins/dropzone/min/dropzone.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
			</ul>
		</nav>
		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="index3.html" class="brand-link"> <img
				src="dist/img/FSSLogo.png" alt="AdminLTE Logo"
				class="brand-image img-circle elevation-3" style="opacity: .8">
				<span class="brand-text font-weight-light">FSS Merchant
					Portal</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">

				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<!--           <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image"> -->
					</div>
					<div class="info">
						<!--<a href="#" class="d-block">Alexander Pierce</a> -->
					</div>
				</div>
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
						<li class="nav-item"><a href="home1.jsp" class="nav-link">
								<i class="nav-icon fas fa-home"></i>
								<p>Home</p>
						</a></li>
						<li class="nav-item"><a href="Merchant.jsp" class="nav-link">
								<i class="nav-icon fas fa-solid fa-store"></i>
								<p>Merchant</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link"> <i
								class="nav-icon fas fa-sign-out-alt"></i>
								<p>Logout</p>
						</a></li>
					</ul>
				</nav>
				<!-- /.side bar-menu -->
			</div>
			<!-- /.side bar -->
		</aside>
		<!-- Wrapper -->
		<div class="content-wrapper">
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12">
							<h2><font color="#DC143C">Merchant Add</font></h2>
						</div>
					</div>
					<!-- ./row -->
					<div class="row">
						<div class="col-12 col-sm-12">
							<div class="card card-primary card-tabs">
								<div class="card-header p-0 pt-0">
									<ul class="nav nav-tabs" id="custom-tabs-one-tab"
										role="tablist" style="background-color: #DC143C;">
										<li class="nav-item">
										<a class="nav-link active"
											id="custom-tabs-one-referal-tab" data-toggle="pill"
											href="#" role="tab"
											aria-controls="custom-tabs-one-referal" aria-selected="true" onclick="showTab(event, 'custom-tabs-one-referal')">Referal
												Details</a></li>
										<li class="nav-item"><a class="nav-link"
											id="custom-tabs-one-price-tab" data-toggle="pill"
											href="#" role="tab"
											aria-controls="custom-tabs-one-price" aria-selected="false" onclick="showTab(event, 'custom-tabs-one-price')">Pricing
												Details</a></li>
										<li class="nav-item"><a class="nav-link"
											id="custom-tabs-one-merchant-tab" data-toggle="pill"
											href="#" role="tab"
											aria-controls="custom-tabs-one-merchant" onclick="showTab(event, 'custom-tabs-one-merchant')"
											aria-selected="false">Merchant Details</a></li>
									</ul>
								</div>
								<div class="card-body">
									<div class="tab-content" id="custom-tabs-one-tabContent">
										<div class="tab-pane fade show active"
											id="custom-tabs-one-referal" role="tabpanel"
											aria-labelledby="custom-tabs-one-referal-tab">
											<section class="content">
												<div class="container-fluid">

													<div class="card card-default">

														<!-- form start -->
														<s:form theme="css_xhtml" action="submit">
															<div class="card-body">
																<div class="form-group">
																	<div class="row">
																		<!-- Col1 -->
																		<div class="col-md-3">
																			<div class="form-group">
																				<label for="src" class="mb-3 mr-sm-2">Source<font
																					color="red">*</font></label>
																			</div>
																			<div class="form-group">
																				<label for="phnNo" class="mb-2 mr-sm-2 ">Phone
																					No<font color="red">*</font>
																				</label>
																			</div>
																			<div class="form-group">
																				<label for="accNo" class="mb-2 mr-sm-2 ">Account
																					Number<font color="red">*</font>
																				</label>
																			</div>
																			<div class="form-group">
																				<label for="bizName" class="mb-2 mr-sm-2 ">Doing
																					Business as Name<font color="red">*</font>
																				</label>
																			</div>
																			<div class="form-group">
																				<label for="storeName" class="mb-2 mr-sm-2 ">Default
																					Store Trading Name <font color="red">*</font>
																				</label>
																			</div>

																			<div class="form-group">
																				<label for="merAgr" class="mb-2 mr-sm-2 ">Merchant
																					Aggregator <font color="red">*</font>
																				</label>
																			</div>
																		</div>
																		<!-- Col1 Ends -->
																		<!-- Col2 -->
																		<div class="col-md-3">
																			<div class="form-group">
																				<select class="form-control" name="src" id="city"
																					style="width: 95%; height: 95%">
																					<option>Alabama</option>
																					<option>Alaska</option>
																					<option>California</option>
																					<option>Delaware</option>
																					<option>Tennessee</option>
																					<option>Texas</option>
																					<option>Washington</option>
																				</select>
																			</div>
																			<div class="form-group">
																				<input type="text" class="mb-2 mr-sm-2" name="phnNo"
																					id="phnNo" value="<s:property value='phnNo'/>" />
																			</div>
																			<div class="form-group">
																				<input type="text" class="mb-2 mr-sm-2" name="accNo"
																					id="accNo" value="<s:property value='accNo'/>" />
																			</div>
																			<div class="form-group">
																				<input type="text" class="mb-2 mr-sm-2"
																					name="bizName" id="bizName"
																					value="<s:property value='bizName'/>" />
																			</div>
																			<div class="form-group">
																				<input type="text" class="mb-2 mr-sm-2"
																					name="storeName" id="storeName"
																					value="<s:property value='storeName'/>" />
																			</div>
																			<div class="form-group">
																				<input type="text" class="mb-2 mr-sm-2"
																					name="merAgr" id="merAgr"
																					value="<s:property value='merAgr'/>" />
																			</div>
																		</div>
																		<!-- Col2 Ends -->
																		<!-- Col3 -->
																		<div class="col-md-3">
																			<div class="form-group">
																				<label for="salesEx" class="mb-3 mr-sm-2">Sales
																					Executive<font color="red">*</font>
																				</label>
																			</div>
																			<div class="form-group">
																				<label for="mail" class="mb-2 mr-sm-2 ">Email
																					Id<font color="red">*</font>
																				</label>
																			</div>
																			<div class="form-group">
																				<label for="legalName" class="mb-2 mr-sm-2 ">Legal
																					Name<font color="red">*</font>
																				</label>
																			</div>
																			<div class="form-group">
																				<label for="owner" class="mb-2 mr-sm-2 ">Owner
																					Name</label>
																			</div>
																			<div class="form-group">
																				<label for="legalName" class="mb-2 mr-sm-2 ">Business
																					Website <font color="red">*</font>
																				</label>
																			</div>
																		</div>
																		<!-- Col3 Ends -->
																		<!-- Col4 -->
																		<div class="col-md-3">
																			<div class="form-group">
																				<input type="text" class="mb-2 mr-sm-2"
																					name="salesEx" id="salesEx"
																					value="<s:property value='salesEx'/>" />
																			</div>
																			<div class="form-group">
																				<input type="text" class="mb-2 mr-sm-2" name="mail"
																					id="mail" value="<s:property value='mail'/>" />
																			</div>
																			<div class="form-group">
																				<input type="text" class="mb-2 mr-sm-2"
																					name="legalName" id="legalName"
																					value="<s:property value='legalName'/>" />
																			</div>
																			<div class="form-group">
																				<input type="text" class="mb-2 mr-sm-2" name="owner"
																					id="owner" value="<s:property value='owner'/>" />
																			</div>
																			<div class="form-group">
																				<input type="text" class="mb-2 mr-sm-2"
																					name="legalName" id="legalName"
																					value="<s:property value='legalName'/>" />
																			</div>
																		</div>
																		<!-- Col4 Ends -->

																	</div>
																</div>
															</div>
														</s:form>
													</div>
												</div>
											</section>


										</div>
										<div class="tab-pane fade" id="custom-tabs-one-price"
											role="tabpanel" aria-labelledby="custom-tabs-one-price-tab">
											<section class="content">
												<div class="container-fluid">

													<div class="card card-default">

														<!-- form start -->
														<s:form theme="css_xhtml" action="submit">
															<div class="card-body">
																<div class="form-group">
																	<div class="row">
																		<!-- Col1 -->
																		<div class="col-md-3">
																			<div class="form-group">
																				<label for="singlestr" class="mb-3 mr-sm-2">Single
																					Store<font color="red">*</font>
																				</label>
																			</div>
																			<div class="form-group">
																				<label for="mer_typ" class="mb-2 mr-sm-2 ">Merchant
																					Type<font color="red">*</font>
																				</label>
																			</div>
																			<div class="form-group">
																				<label for="permitted_currency"
																					class="mb-2 mr-sm-2 ">Permitted Acquiring
																					Currencies<font color="red">*</font>
																				</label>
																			</div>
																		</div>
																		<!-- Col1 Ends -->
																		<!-- Col2 -->
																		<div class="col-md-3">
																			<div class="form-group">
																				<fieldset class="form-group">
																					<div class="row">
																						<div class="col-sm-10">
																							<div class="form-check">
																								<div
																									class="custom-control custom-radio custom-control-inline">
																									<input type="radio" id="singlestr1"
																										name="singlestr1"
																										class="custom-control-input mb-2 mr-sm-2 "
																										" value="<s:property value='singlestr1'/>">
																									<label class="custom-control-label"
																										for="singlestr1">Yes</label>
																								</div>
																								<div
																									class="custom-control custom-radio custom-control-inline"
																									value="<s:property value='singlestr1'/>">
																									<input type="radio" id="singlestr2"
																										name="singlestr1"
																										class="custom-control-input mb-2 mr-sm-2">
																									<label class="custom-control-label"
																										for="singlestr2">No</label>
																								</div>
																							</div>
																						</div>
																					</div>
																				</fieldset>
																			</div>
																			<div class="form-group">
																				<div class="custom-control custom-checkbox"
																					class="mb-2 mr-sm-2">
																					<input type="checkbox" class="custom-control-input"
																						class="mb-2 mr-sm-2" id="mer_typ"
																						value="<s:property value='mer_typ'/>"> <label
																						class="custom-control-label" for="mer_typ"
																						class="mb-2 mr-sm-2">ECOMMERCE</label>
																				</div>
																			</div>
																			<div class="form-group">
																				<select class="form-select" multiple="multiple"
																					aria-label="multiple select example"
																					name="permitted_currency" style="width: 100%;">
																					<option selected></option>
																					<option value="AED">AED</option>
																					<option value="ANG">ANG</option>
																					<option value="AUD">AUD</option>
																				</select>
																			</div>
																		</div>
																		<!-- Col2 Ends -->
																		<!-- Col3 -->
																		<div class="col-md-3">
																			<div class="form-group">
																				<label for="totalstore" class="mb-3 mr-sm-2">Total
																					Number of Stores<font color="red">*</font>
																				</label>
																			</div>
																		</div>
																		<!-- Col3 Ends -->
																		<div class="col-md-3">
																			<div class="form-group">
																				<input type="text" class="mb-2 mr-sm-2"
																					name="salesexecutive" id="salesexecutive"
																					value="<s:property value='salesexecutive'/>" />
																			</div>
																		</div>

																	</div>

																</div>
															</div>
														</s:form>
													</div>
												</div>
											</section>
										</div>
										<div class="tab-pane fade" id="custom-tabs-one-merchant"
											role="tabpanel"
											aria-labelledby="custom-tabs-one-merchant-tab">
											<section class="content">
												<div class="container-fluid">

													<div class="card card-default">

														<!-- form start -->
														<s:form theme="css_xhtml" action="submit">
															<div class="card-body">
																<div class="form-group">
																	<div class="row">
																		<!-- Col1 -->
																		<div class="col-md-3">
																			<div class="form-group">
																				<label for="add1" class="mb-3 mr-sm-2">Address
																					Line 1<font color="red">*</font>
																				</label>
																			</div>
																			<div class="form-group">
																				<label for="add3" class="mb-3 mr-sm-2 ">Address
																					Line 3</label>
																			</div>
																			<div class="form-group">
																				<label for="country" class="mb-3 mr-sm-2 ">Country<font
																					color="red">*</font></label>
																			</div>
																			<div class="form-group">
																				<label for="city" class="mb-2 mr-sm-2 ">City/Suburb<font
																					color="red">*</font></label>
																			</div>
																		</div>
																		<!-- Col1 Ends -->
																		<!-- Col2 -->
																		<div class="col-md-3">
																			<div class="form-group">
																				<input type="text" class="mb-2 mr-sm-2" name="add1"
																					id="add1" value="<s:property value='add1'/>" />
																			</div>
																			<div class="form-group">
																				<input type="text" class="mb-2 mr-sm-2" name="add3"
																					id="add3" value="<s:property value='add3'/>" />
																			</div>
																			<div class="form-group">
																				<select class="form-control"
																					style="width: 95%; height: 95%" name="country"
																					id="country">
																					<option selected="selected">Alabama</option>
																					<option>Alaska</option>
																					<option disabled="disabled">California
																						(disabled)</option>
																					<option>Delaware</option>
																					<option>Tennessee</option>
																					<option>Texas</option>
																					<option>Washington</option>
																				</select>
																			</div>
																			<div class="form-group">
																				<select class="form-control" name="city" id="city"
																					style="width: 95%; height: 95%">
																					<option>Alabama</option>
																					<option>Alaska</option>
																					<option>California</option>
																					<option>Delaware</option>
																					<option>Tennessee</option>
																					<option>Texas</option>
																					<option>Washington</option>
																				</select>
																			</div>
																		</div>
																		<!-- Col2 Ends -->
																		<!-- Col3 -->
																		<div class="col-md-3">
																			<div class="form-group">
																				<label for="add2" class="mb-3 mr-sm-2">Address
																					Line 2<font color="red">*</font>
																				</label>
																			</div>
																			<div class="form-group">
																				<label for="add4" class="mb-3 mr-sm-2 ">Address
																					Line 4</label>
																			</div>
																			<div class="form-group">
																				<label for="state" class="mb-3 mr-sm-2 ">State<font
																					color="red">*</font></label>
																			</div>
																			<div class="form-group">
																				<label for="postCode" class="mb-2 mr-sm-2 ">Postal
																					Code<font color="red">*</font>
																				</label>
																			</div>
																		</div>
																		<!-- Col 3 Ends -->
																		<!-- Col2 -->
																		<div class="col-md-3">
																			<div class="form-group">
																				<input type="text" class="mb-2 mr-sm-2" name="add2"
																					id="add2" value="<s:property value='add2'/>" />
																			</div>
																			<div class="form-group">
																				<input type="text" class="mb-2 mr-sm-2" name="add4"
																					id="add3" value="<s:property value='add4'/>" />
																			</div>
																			<div class="form-group">
																				<select class="form-control"
																					style="width: 95%; height: 95%" name="state"
																					id="state">
																					<option selected="selected">Alabama</option>
																					<option>Alaska</option>
																					<option disabled="disabled">California
																						(disabled)</option>
																					<option>Delaware</option>
																					<option>Tennessee</option>
																					<option>Texas</option>
																					<option>Washington</option>
																				</select>
																			</div>
																			<div class="form-group">
																				<input type="text" class="mb-2 mr-sm-2"
																					name="postCode" id="postCode"
																					value="<s:property value='postCode'/>" />
																			</div>
																		</div>
																		<!-- Col4 Ends -->
																	</div>
																</div>
															</div>
														</s:form>
													</div>
												</div>
											</section>
										</div>

										<s:submit method="execute"  align="center"
											cssClass="bfsbutton" value="Submit" />
										<br>
									</div>
								</div>

							</div>
							<!-- /.card -->
						</div>
					</div>
				</div>
			</section>
		</div>


		<!-- /.row -->

	</div>
<script>
        function showTab(event, tabId) {
            event.preventDefault();
            
            // Hide all tab contents
            var tabContents = document.getElementsByClassName("tab-content");
            for (var i = 0; i < tabContents.length; i++) {
                tabContents[i].style.display = "none";
            }
            
            // Show the selected tab content
            var tab = document.getElementById(tabId);
            if (tab) {
                tab.style.display = "block";
            }
        }
    </script>
	<!-- jQuery -->
	<script src="plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>
