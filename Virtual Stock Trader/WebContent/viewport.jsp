<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="bean.ConnectionProvider"%>
<%@page import="bean.URLHtml"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Make Money - Portfolio</title>
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
if(a11.equalsIgnoreCase("true"))
	{
	response.sendRedirect("adminhome.jsp");
	}
else if(a22.equalsIgnoreCase("false"))
{
response.sendRedirect("index.jsp");
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
            <li><a href="userhome.jsp" ><span></span>Home</a></li>
                <li><a href="trad.jsp"><span></span>Trade</a></li>
                <li><a href="viewport.jsp" class="current"><span></span>View Portfolio</a></li>
                <li><a href="urdetails.jsp"><span></span>Personal Details</a></li>
                <li><a href="sendfeed.jsp"><span></span>Send Feedback</a></li>
                <li><a href="userlogout"><span></span>Logout</a></li> </ul>    	
     
            </div> <!-- end of tooplate_menu -->
        
     <div id="site_title"><h1>Make Money</h1></div>
    
    </div> <!-- end of header -->
    
    
    	
    	
    	<div class="table-title1">
    	
  <%
int cid= (Integer)session.getAttribute("cid");  
  Connection con = ConnectionProvider.getCon();
		Statement s1=con.createStatement();
		ResultSet rs2=s1.executeQuery("Select * from holdings where cid="+cid);
	
%>
 
<h3>Data Table</h3>
</div>
<table class="table-fill1">
<thead>
<tr>
<th class="text-left">Stock Name</th>
<th class="text-left">No. Of Shares</th>
<th class="text-left">Hold Price</th>
<th class="text-left">Hold Value</th>
<th class="text-left">Market Price</th>
<th class="text-left">Market Value</th>
<th class="text-left">Profit/Loss</th>
<th class="text-left">Profit %/ Loss %</th>

</tr>
</thead>
<tbody class="table-hover1">

<%
double hv=0,mv=0;
while(rs2.next())
{

%>
<tr>
<td class="text-left"><%=rs2.getString(2)%></td>
<td class="text-left"><%=rs2.getInt(3)%></td>
<td class="text-left"><%=String.format("%.2f",rs2.getDouble(4))%></td>
<% double holdval=(rs2.getDouble(3)*rs2.getDouble(4)); %>
<%hv=hv+holdval; %>
<td class="text-left"><%=String.format("%.2f",holdval)%></td>
<td class="text-left"><%=URLHtml.current(rs2.getString(2))%></td>
<% double marketval=(Double.parseDouble(URLHtml.current(rs2.getString(2)))*rs2.getDouble(3)); %>
<%mv=mv+marketval; %>
<td class="text-left"><%=String.format("%.2f",marketval)%></td>
<td class="text-left"><%=String.format("%.2f",(marketval-holdval))%></td>
<td class="text-left"><%=String.format("%.2f",((marketval-holdval)*100/holdval))%></td>

</tr>

   	
<%
}
%>    	<tr><td class="text-left"><strong><%="Total"%></strong></td>
<td class="text-left"><strong><%="  -"%></strong></td>
<td class="text-left"><strong><%="  -"%></strong></td>
<td class="text-left"><strong><%=String.format("%.2f",hv)%></strong></td>
<td class="text-left"><strong><%=""%></strong></td>
<td class="text-left"><strong><%=String.format("%.2f",mv)%></strong></td>
<td class="text-left"><strong><%=String.format("%.2f",(mv-hv))%></strong></td>
<td class="text-left"><strong><%=String.format("%.2f",((mv-hv)*100/hv))%></strong></td>
</tr>



    	
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
  <br>  	<br></br>
  <br>
    	</div> <!-- end of main -->
    
<jsp:include page="tickr.jsp" />    
</div> <!-- end of wrapper -->
<jsp:include page="Footer.jsp" />    
       
</body>
</html>