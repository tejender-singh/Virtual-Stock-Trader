<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="bean.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Make Money - Details</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2051 Spot Light
http://www.tooplate.com/view/2051-spot-light
-->
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
<%

String a11="false",a22 ="false";
a11=(String) session.getAttribute("admin");
a22=(String)session.getAttribute("useralive");
if(a11!=null||a22!=null){
if(a11.equalsIgnoreCase("false"))
	{
	response.sendRedirect("index.jsp");
	}
else if(a22.equalsIgnoreCase("true"))
{
response.sendRedirect("userhome.jsp");
}

}
	%>

<!--////// CHOOSE ONE OF THE 3 PIROBOX STYLES  \\\\\\\-->
<link href="css_pirobox/white/style.css" media="screen" title="shadow" rel="stylesheet" type="text/css" />
<!--<link href="css_pirobox/white/style.css" media="screen" title="white" rel="stylesheet" type="text/css" />
<link href="css_pirobox/black/style.css" media="screen" title="black" rel="stylesheet" type="text/css" />-->
<!--////// END  \\\\\\\-->

<!--////// INCLUDE THE JS AND PIROBOX OPTION IN YOUR HEADER  \\\\\\\-->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/piroBox.1_2.js"></script>
<script type="text/javascript">
$(document).ready(function() {
$().piroBox({
        my_speed: 600, //animation speed
        bg_alpha: 0.5, //background opacity
        radius: 4, //caption rounded corner
        scrollImage : false, // true == image follows the page, false == image remains in the same open position
        pirobox_next : 'piro_next', // Nav buttons -> piro_next == inside piroBox , piro_next_out == outside piroBox
        pirobox_prev : 'piro_prev',// Nav buttons -> piro_prev == inside piroBox , piro_prev_out == outside piroBox
        close_all : '.piro_close',// add class .piro_overlay(with comma)if you want overlay click close piroBox
        slideShow : 'slideshow', // just delete slideshow between '' if you don't want it.
        slideSpeed : 4 //slideshow duration in seconds(3 to 6 Recommended)
});
});
</script>
<!--////// END  \\\\\\\-->
    
</head>

<body id="subpage">
<div id="tooplate_wrapper">
    <div id="tooplate_header_sp">
        <div id="tooplate_menu">
            <ul>
                <li><a href="adminhome.jsp"><span></span>Home</a></li>
                <li><a href="addstock.jsp"><span></span>Add Stocks</a></li>
                <li><a href="viewstock.jsp"><span></span>View Stocks</a></li>
                <li><a href="udetail.jsp" class="current"><span></span>User Details</a></li>
                <li><a href="fdetail.jsp"><span></span>View Feedbacks</a></li>
                <li><a href="adminlogout"><span></span>Logout</a></li> </ul>    	
        </div> <!-- end of tooplate_menu -->
        
   <div id="site_title"><h1>Make Money</h1></div>
      
    </div> <!-- end of header -->
    
    <div id="tooplate_main">
    	
    	    
            <div class="cleaner h30"></div>
          	
          	<%
          	Connection con=ConnectionProvider.getCon();
          	Statement s=con.createStatement();
          	String s1="select * from customer";
          ResultSet rs2=s.executeQuery(s1);
          
	%>          	
          	<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Details</h3>
          	</div>
          	<table class="table-fill1">
          	<thead>
          	<tr>
          	<th class="text-left">Customer&nbsp;ID&nbsp;&nbsp;&nbsp;</th>
          	<th class="text-left">Customer&nbsp;Name&nbsp;&nbsp;&nbsp;</th>
          	<th class="text-left">Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
          	<th class="text-left">Sex&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
          	<th class="text-left">Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
          	<th class="text-left">Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
          	<th class="text-left">DOB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
          	<th class="text-left">Email Id</th>
          	
          	</tr>
          	</thead>
          	<tbody class="table-hover1">

          	<%
          	while(rs2.next())
          	{

          	%>
          	<tr>
          	<td class="text-right"><%=rs2.getInt(1)%></td>
          	          	<td class="text-left"><%=rs2.getString(2)%></td>
          	          	          	<td class="text-left"><%=rs2.getString(3)%></td>
          	          	          	          	<td class="text-left"><%=rs2.getString(5)%></td>
          	          	          	<td class="text-left"><%=rs2.getString(6)%></td>
          	          	          	<td class="text-left"><%=rs2.getString(7)%></td>
          	          	          	<td class="text-left"><%=rs2.getDate(8)%></td>
          	          	          	<td class="text-left"><%=rs2.getString(9)%></td>          	          	          	          	

          	</tr>

          	   	
          	<%
          	}
          	%>    	
          	    	
          	    	</table>
          	    	
          	  <br>
          	  <br>
          	  <br>
          	  <br>
          	  <br>
          	  <br>
          	  <br>
          	  <br>  	
          	  <br>
          	  <br>  	
          	    	</div> <!-- end of main -->

          	
          	
          	
          	
          	
          	
          	
          	
          	
          
          	
          	
          	
          	
          	
          	
  <br></br>
          	
          	
          	
        <div class="cleaner"></div>
    </div> <!-- end of main -->
    
</div> <!-- end of wrapper -->
<jsp:include page="tickr.jsp" />    
</div> <!-- end of wrapper -->
<jsp:include page="Footer.jsp" />    
        
</body>
</html>