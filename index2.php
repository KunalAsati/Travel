<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>
<!DOCTYPE HTML>
<html>
<head>
<title>TPR  | Travel Package Recommendation</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href="css/font-awesome.css" rel="stylesheet">
<!-- Custom Theme files -->
<script src="js/jquery-1.12.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
</head>
<body>
<?php include('includes/header.php');?>
<div class="banner">
	<div class="container">
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;"> Integrated approach for Travel Package Recommendation</h1>
	</div>
</div>




<!--from to-->

	



<form name="book" method="post" >
<div class="selectroom">
	<div class="container">
<div class="tab-content">
					<div class="tab-pane active" id="horizontal-form">
						<form class="form-horizontal" name="package" method="post" enctype="multipart/form-data">
							<div class="form-group">
								<label for="focusedinput" class="col-sm-2 control-label">From</label>
								<div class="col-sm-8">
								   <select name="menu1" onChange="MM_jumpMenu('parent',this,0)">
			  <option value="" selected="selected" class="form-control">Select location</option>
			  <option value="manage-pages.php?type=terms">terms and condition</option>
			  <option value="manage-pages.php?type=privacy">privacy and policy</option>
			  <option value="manage-pages.php?type=aboutus">aboutus</option> 
			  <option value="manage-pages.php?type=contact">Contact us</option>
			</select>
								</div>
							</div>
<br>
<div class="tab-content">
					<div class="tab-pane active" id="horizontal-form">
						<form class="form-horizontal" name="package" method="post" enctype="multipart/form-data">
							<div class="form-group">
								<label for="focusedinput" class="col-sm-2 control-label">To</label>
								<div class="col-sm-8">
								   <select name="menu1" onChange="MM_jumpMenu('parent',this,0)">
			  <option value="" selected="selected" class="form-control">Select location</option>
			  <option value="manage-pages.php?type=terms">terms and condition</option>
			  <option value="manage-pages.php?type=privacy">privacy and policy</option>
			  <option value="manage-pages.php?type=aboutus">aboutus</option> 
			  <option value="manage-pages.php?type=contact">Contact us</option>
			</select>
								</div>
							</div>

			<div class="ban-bottom">
			<div class="bnr-right">
			<label class="inputLabel">Departure</label>
			<input class="date" id="datepicker" type="text" placeholder="dd-mm-yyyy"  name="fromdate" required="">
		</div></div>
		<div class="ban-bottom">
			<div class="bnr-right">
			<label class="inputLabel">Return</label>
			<input class="date" id="datepicker" type="text" placeholder="dd-mm-yyyy"  name="fromdate" required="">
		</div></div>

		<div class="ban-bottom">
		<div class="bnr-right">
		<label class="inputLabel">budget</label>
		<input type="number">
		</div>
		</div>

		<button type="submit" name="search" class="btn-primary btn">Search</button>

        </div>
</div>

</form>



      	

<?php include('includes/footer.php');?>
<!-- signup -->
<?php include('includes/signup.php');?>			
<!-- //signu -->
<!-- signin -->
<?php include('includes/signin.php');?>			
<!-- //signin -->
<!-- write us -->
<?php include('includes/write-us.php');?>			
<!-- //write us -->
</body>
</html>