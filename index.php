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




<!--search-->


<div class="container">
<form name="book" action="index.php" method="post">
<div class="ban-bottom">
				<div class="bnr-right">
				<label class="col-sm-2 control-label">Source</label>
				<input class="text" id="fromloc" type="text" placeholder="location"  name="fromloc" required="">
			</div>
            <div class="ban-bottom">
				<div class="bnr-right">
				<label class="col-sm-2 control-label">Destination</label>
				<input class="text" id="toloc" type="text" placeholder="location"  name="toloc" required="">
			</div>
			<div class="clearfix"></div>
            <div class="ban-bottom">
				<div class="bnr-right">
				<label class="col-sm-2 control-label">From</label>
				<input class="date" id="fromdate" type="text" placeholder="dd-mm-yyyy"  name="fromdate" required="">
			</div>
            <div class="ban-bottom">
				<div class="bnr-right">
				<label class="col-sm-2 control-label">To</label>
				<input class="date" id="todate" type="text" placeholder="dd-mm-yyyy"  name="todate" required="">
			</div>
			<div class="clearfix"></div>
            <div class="ban-bottom">

			<div class="bnr-right">
						<label class="inputLabel">Number of people</label>
						<input class="special" type="number" name="numpeople" required="">
			</div>
						
					
			<div class="bnr-right">
			<label class="inputLabel">Budget</label>
			<input class="special" type="number" name="budget" required="">
			</div>
            <div class="clearfix"></div>
			<ul style="list-style: none;">
            <li class="spe" align="center">
					<button type="submit" name="search" class="subbtn">Search</button>
						</li>
						</ul>
            </div>

</form>
</div>


<div class="clearfix"></div>




<!---holiday---->

<div class="container">
	<div class="holiday">
	<h3>Package List</h3>


<?php 
if(isset($_POST['search']))
{
	$fromloc=$_POST['fromloc'];
	$toloc=$_POST['toloc'];
	$fromdate=$_POST['fromdate'];
	$todate=$_POST['todate'];
	$numpeople=$_POST['numpeople'];
	$budget=$_POST['budget'];

$sql = "SELECT * from tbltourpackages where PackageLocation=:toloc";

$query = $dbh->prepare($sql);
$query->bindParam(':toloc',$toloc,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{	?>
			<div class="rom-btm">
				<div class="col-md-3 room-left wow fadeInLeft animated" data-wow-delay=".5s">
					<img src="admin/pacakgeimages/<?php echo htmlentities($result->PackageImage);?>" class="img-responsive" alt="">
				</div>
				<div class="col-md-6 room-midle wow fadeInUp animated" data-wow-delay=".5s">
					<h4>Package Location: <?php echo htmlentities($result->PackageLocation);?></h4>
					<h6>Number of Days : <?php echo htmlentities($result->NumberOfDays);?></h6>
					<p><b>Package Detail :</b> <?php echo htmlentities($result->PackageDetails);?></p>
					<p><b>Number of People :</b> <?php echo htmlentities($result->NumberOfPeoples);?></p>
				</div>
				<div class="col-md-3 room-right wow fadeInRight animated" data-wow-delay=".5s">
					<h5>INR <?php echo htmlentities($result->StayPrice);?></h5>
					<a href="package-details.php?pkgid=<?php echo htmlentities($result->PackageId);?>" class="view">Details</a>
				</div>
				<div class="clearfix"></div>
			</div>

<?php }}}
else{
						
$sql = "SELECT * from tbltourpackages order by rand() limit 4";
$query = $dbh->prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{	?>
			<div class="rom-btm">
				<div class="col-md-3 room-left wow fadeInLeft animated" data-wow-delay=".5s">
					<img src="admin/pacakgeimages/<?php echo htmlentities($result->PackageImage);?>" class="img-responsive" alt="">
				</div>
				<div class="col-md-6 room-midle wow fadeInUp animated" data-wow-delay=".5s">
					<h4>Package Location: <?php echo htmlentities($result->PackageLocation);?></h4>
					<h6>Number of Days : <?php echo htmlentities($result->NumberOfDays);?></h6>
					<p><b>Package Detail :</b> <?php echo htmlentities($result->PackageDetails);?></p>
					<p><b>Number of People :</b> <?php echo htmlentities($result->NumberOfPeoples);?></p>
				</div>
				<div class="col-md-3 room-right wow fadeInRight animated" data-wow-delay=".5s">
					<h5>INR <?php echo htmlentities($result->StayPrice);?></h5>
					<a href="package-details.php?pkgid=<?php echo htmlentities($result->PackageId);?>" class="view">Details</a>
				</div>
				<div class="clearfix"></div>
			</div>

<?php }}} ?>


<div><a href="package-list.php" class="view">View More Packages</a></div>
</div>
			<div class="clearfix"></div>
	</div>




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