<?php
session_start();
error_reporting(0);
include('includes/config.php');

if(isset($_POST['search']))
{

}

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


<div class="container">
<form name="book" method="post">
<div class="ban-bottom">
				<div class="bnr-right">
				<label class="inputLabel">From</label>
				<input class="text" id="fromloc" type="text" placeholder="location"  name="fromloc" required="">
			</div>
            <div class="ban-bottom">
				<div class="bnr-right">
				<label class="inputLabel">Destination</label>
				<input class="text" id="toloc" type="text" placeholder="location"  name="toloc" required="">
			</div>

            <div class="ban-bottom">
				<div class="bnr-right">
				<label class="inputLabel">From</label>
				<input class="date" id="datepicker" type="text" placeholder="dd-mm-yyyy"  name="fromdate" required="">
			</div>
            <div class="ban-bottom">
				<div class="bnr-right">
				<label class="inputLabel">To</label>
				<input class="date" id="datepicker" type="text" placeholder="dd-mm-yyyy"  name="fromdate" required="">
			</div>
            <ul>

					<li class="spe">
						<label class="inputLabel">Budget</label>
						<input class="special" type="number" name="budget" required="">
					</li>
            <div class="clearfix"></div>
            <li class="spe" align="center">
					<button type="submit" name="search" class="btn-primary btn">Search</button>
						</li>
            </ul>

</form>
</div>


<div class="clearfix"></div>







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