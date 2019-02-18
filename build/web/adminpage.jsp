<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.DbConnector"%>
<%@page import="java.lang.String"%>
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
<script type="text/javascript" >
	var categoryName = "Holidays";
	var appProp = {
            isSsoOn:'true',			
			 pageID:'home',
};

</script>
<style>
    body{
        overflow-x: hidden;
    }
</style>
<script>
    function check(){
      
        var b = document.ff.str.value;
        var c = document.ff.en.value;
        var d = document.ff.intr.value;
        var e = document.ff.dot.value;
        var f = document.ff.dy.value;
        var g = document.ff.nop.value;
        
   
         if(b==0){
            alert('Please Enter Starting Place..!');
           document.getElementById("str").focus();            
            return false;
      
        } if(c==0){
            alert('Please Enter Ending Place..!');
            document.getElementById("en").focus();            
            return false;
            
        } if(d==0){
            alert('Please Enter the Interest Place..!');
            document.getElementById("intr").focus();            
            return false;
            
        } if(e==0){
            alert('Please Enter Date of Travel..!');
            document.getElementById("dot").focus();            
            return false;
            
        } if(f==0){
            alert('Please Enter Your Total Days..!');
            document.getElementById("dy").focus();            
            return false;
            
        } if(g==0){
            alert('Please Enter NO of Person..!');
            document.getElementById("nop").focus();            
            return false;
            
        } 
        
    }    
</script>
        <link href="combined_css.min.css" rel="stylesheet" />
        <script type="text/javascript" src="combined_lib.min.js"></script>
</head>
<body>
<div id="templatemo_container">
	<div id="templatemo_menu">
    	<ul>
            <li><a href="adminpage.jsp" class="current">Home</a></li>
            <li><a href="admintour.jsp">Tour Details</a></li>
            <li><a href="userd.jsp">User Details</a></li>
            <li><a href="packages.jsp">Add Packages</a></li>
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
	</div>
    </div> <!-- end of green section -->
    
    <div id="templatemo_content">
        <div id="side_column">
            <div class="section_w280">
                <br/>                         
                <ul>
            <li><a href="adminpage.jsp" class="current">Home</a></li>
            <li><a href="admintour.jsp">Tour Details</a></li>
            <li><a href="userd.jsp">User Details</a></li>
            <li><a href="packages.jsp">Add Packages</a></li>
            <li><a href="index.jsp">Logout</a></li>
           
        </ul>
                </h4>
       
           </div>
           
     
               
            </div>
        
        </div>
        
        <div id="main_column">
        
            	<h3>Welcome Admin!</h3>
        	<div class="section_w560"> 
                   	<div class="ytColm7 colmPosn pullUpRight"> <script>
                            <%
                                Class.forName("com.mysql.jdbc.Driver");	
                                Connection conn = DbConnector.getConnection();
                                Statement st1 = conn.createStatement();
                                ResultSet rs1 = st1.executeQuery("select * from  places");
                            %>
                                
var map_json = [{
        
        <%
            while(rs1.next()){
        %>
            "<%=rs1.getString("title")%>": {"numofpackages": <%=rs1.getInt("nop")%>,"startingprice": <%=rs1.getFloat("sp")%>,"title": "<%=rs1.getString("title")%>","targetUrl": "<%=rs1.getString("turi")%>","longitude":"<%=rs1.getString("lng")%>","latitude":"<%=rs1.getString("lat")%>","imageUrl": "<%=rs1.getString("imguri")%>"}, 
                    <%
            }
                    %>
        }];
</script>
<!-- start "Holidays"  Weekend getaways -->
<section class="ytRow blockBox" id="weekend_getaways_holidays">
	<div class="sprite dragIcon"></div>
	<div class="blockHead">
		<h2 class="heading moduleTitleR latoBold tw170">Personalized Travel Package Recommendation</h2>
		<span class="subHeading">
			<span class="txtGrey mb10 block">Find great weekend holiday packages for popular destinations</span>
		</span>
		<div class="flL clearfix tw102">
			<label for="" class="flL txtGrey mr10 mt10">Select The  Travel Package:</label>
			<select class="selectInner" data-weekend_getaways="" style="width:150px"></select>					
		</div>	
	</div>
	<div class="padZero innerCont">
		<div class="flL mt20">
			<div id="gmap_cont" class="GmapDiv">
				<div class="PopUpLayerCont" id="map_container">
					<div class="map_canvas" id="map_canvas"></div>
				</div>
			</div>
		</div>
	</div>
</section>			
</div>	
	<script type="text/javascript" src="combined_js.min.js?version=2014154914"></script> 
<script>
	var script = document.createElement("script");
	script.type = "text/javascript";
	script.src = "http://maps.google.com/maps/api/js?sensor=false&key=AIzaSyBlqZVJVWy8xwpDhb8lwdq8ppSjBJoXDjg&callback=gmap_initializing";
	document.body.appendChild(script);
</script>           
                <div class="cleaner"></div>
        	</div>
            
       
            
            <div class="cleaner"></div>
        </div>
        
        <div class="cleaner"></div>
    </div>
    <div id="templatemo_footer"><center><span style="color: #fff;">A Semantic Approach for Travel Package Recommendation</span></center>

        
    
         
        
        
    
    </div> <!-- end of footer -->
    
</div> <!-- end of container -->
</body>
</html>