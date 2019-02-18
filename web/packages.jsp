<%@page import="pack.DbConnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Semantic_Approach_for_Travel</title>
<meta name="keywords" content="travel website, free CSS, web templates" />
<meta name="description" content="Travel Site - free website template from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<style>
    body{
        overflow-x: hidden;
    }
</style>
</head>
<body>
<div id="templatemo_container">
	<div id="templatemo_menu">
    	<ul>
            <li><a href="adminpage.jsp">Home</a></li>
            <li><a href="admintour.jsp">Tour Details</a></li>
            <li><a href="userd.jsp">User Details</a></li>
            <li><a href="#" class="current">Add Packages</a></li>
            <li><a href="index.jsp">Logout</a></li>
           
           
        </ul>
    </div>

	<div id="templatemo_banner">
    	
        <div id="site_title">
            <h1>
            	<!--  Travel Site  <span>free css template</span>  -->
               A Semantic Approach for Travel Package Recommendation
                <!--<img src="images/templatemo_logo.png" alt="free css template" /><span>free css template</span>-->
          </h1>
        </div>
        
        
    
    </div> <!-- templatemo_banner -->
    
    <div class="fw_section blue_section">
    	
        <div class="fw_section_content">
    
            <h2>Summer Packages</h2>
            <p>Summers can be the best time to discover beautiful India. Every year, a large number of tourists, visit India to explore its lush paddy fields, snow-covered valleys with clear water streams and its picturesque hill stations. </p>
           
            
	  </div>
            
    </div> <!-- end of blue section -->
    
    <div class="fw_section green_section">
    
    	<div class="fw_section_content">
    
            <h2>Family Suites</h2>
            <p>During your summer vacation in India, you can indulge in a large number of activities. You can relax by the beaches of western coast, can plan a trip to Kashmir- paradise on earth or can embark on a trekking safari in the mountains of Leh or enjoy whitewater rafting in Rishikesh.</p>
            <div class="button_01"><a href="http://www.templatemo.com" target="_parent">Details</a></div>
            
	  </div>
    
    </div> <!-- end of green section -->
    
    <div id="templatemo_content">
    	
        
        
        <center>
          
                    <h3>PACKAGE DETAILS..!</h3><BR/>
                    <form action="add_package.jsp" method="POST">
		<table border="0" style="width: 550px; alignment-adjust: central; text-align: center">
                    <tr>
                        <td><input type="text" required placeholder="Title" name="title"style="background: cadetblue; height: 28px;  width:250px; margin-top: 5px;"/></td>
                    </tr>
                    <tr>
                        <td><input type="number" required placeholder="No of Packages" name="nop"style="background: cadetblue; height: 28px;  width:250px; margin-top: 5px;"/></td>
                    </tr>
                    <tr>
                        <td><input type="text" required placeholder="Starting Price" name="sp"style="background: cadetblue; height: 28px;  width:250px; margin-top: 5px;"/></td>
                    </tr>
                    <tr>
                        <td><input type="text" placeholder="Target URL" name="turi"style="background: cadetblue; height: 28px;  width:250px; margin-top: 5px;"/></td>
                    </tr>
                    <tr>
                        <td><input type="text" required placeholder="Longitude" name="lng"style="background: cadetblue; height: 28px;  width:250px; margin-top: 5px;"/></td>
                    </tr>
                    <tr>
                        <td><input type="text" required placeholder="Lattitude" name="lat"style="background: cadetblue; height: 28px;  width:250px; margin-top: 5px;"/></td>
                    </tr>
                    <tr style="text-align: center;">
                        <td><input type="submit" value="Insert" style="background-color: green; width: 250px; height: 30px; border: 4px; font-weight: bold; margin-top: 5px;"/></td>
                    </tr>
                    <tr style="text-align: center;">
                        <td><input type="reset" value="Reset" style="background-color: red; width: 250px; height: 30px; border: 4px; font-weight: bold; margin-top: 5px;"/></td>
                    </tr>
                </table>
                    </form><BR></BR>

                <div class="cleaner"></div>
        	</div>
            
       
            
            <div class="cleaner"></div>
        </div>
</center>
        <div class="cleaner"></div>
    </div>
    <div id="templatemo_footer"><center><span style="color: #fff;">A Semantic Approach for Travel Package Recommendation</span></center>
    
    </div> <!-- end of footer -->
    
</div> <!-- end of container -->
</body>
</html>