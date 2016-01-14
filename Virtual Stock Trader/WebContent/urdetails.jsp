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
           
            
                <li><a href="userhome.jsp"><span></span>Home</a></li>
                <li><a href="trad.jsp"><span></span>Trade</a></li>
                <li><a href="viewport.jsp"><span></span>View Portfolio</a></li>
                <li><a href="urdetails.jsp"  class="current"><span></span>Personal Details</a></li>
                <li><a href="sendfeed.jsp"><span></span>Send Feedback</a></li>
                <li><a href="userlogout"><span></span>Logout</a></li> </ul>    	
      
             </div> <!-- end of tooplate_menu -->
        
   <div id="site_title"><h1>Make Money</h1></div>
      
    </div> <!-- end of header -->
    
    <div id="tooplate_main">
    	
       	<div id="tooplate_sidebar">
      	<div class="sidebar_box">
                <h2>Offers and Important Links</h2>
                <div class="news_box">
                    <a href="#">SignUp Bonanza</a>
                    <p>Sign Up now and get an exclusive offer of INR 10000 in your account !</p>
                </div>
                <div class="news_box">
                    <a href="#">Triple Saving Offer</a>
                    <p>For a mere Rupee, get 100x the Credits. Add a minimum of INR 100 and get INR 10000 in your account. </p>
                </div>
                <div class="news_box">
                    <a href="http://www.nseindia.com/invest/content/ETF_brochure.pdf">Learn about ETF</a>
                    <p>A brief study about the ETF(Exchange Traded Funds). Learn all that you can !! </p>
                </div>
                 <div class="news_box">
                    <a href="#">About The Developers</a>
                    <p>This Website is a © copyright of India's Leading Java Developers Mr. Tejender Singh & Mr. Lakshay Swani.</p>
                </div>
			</div>                </div> <!-- end of sidebar -->
     
        <div id="tooplate_content">
       	  
			<h2>Edit Personal Details</h2>
            <div class="cleaner h20"></div>
       <%Connection con = ConnectionProvider.getCon();
       Statement st= con.createStatement();
       String q="select * from customer where cid="+session.getAttribute("cid");
       ResultSet rs=st.executeQuery(q);
       if(rs.next())
       {
       %> 	
            <div>
                <div class="col_w400 float_l">	
               <div id="contact_form">
            
                    <h4></h4>
                    
                    <form method="post" name="contact" action="updateuser"> 

                            <label for="name">Name:</label> <input type="text" id="name" name="name" class="required input_field" value="<%=rs.getString(2) %>"/>
                            <div class="cleaner h10"></div>

                      <!--       <label for="username">Username:</label> <input type="text" id="username" name="username" class="required input_field" value="<%=rs.getString(3) %>"/>
                            <div class="cleaner h10"></div>
                            -->                                                                                    
                                                                             
                            <label for="sex">Sex(M/F):</label> <input type="text" class="validate-subject required input_field" name="sex" id="sex" value="<%=rs.getString(5) %>"/>				               
                            <div class="cleaner h10"></div>
                                
                            <label for="phone">Phone:</label> <input type="text" id="phone" name="phone" class="required input_field" value="<%=rs.getString(7) %>"/>
                            <div class="cleaner h10"></div>
                                                        
                                                          
                                                        
                                                        
                                                        
                         <label for="address">Address:</label> <textarea id="address" name="address" rows="0" cols="0" class="required " ><%=rs.getString(6) %></textarea>
                            <div class="cleaner h10"></div>				                                            
                			
                			            <label for="email">Email :</label> <input type="text" id="email" name="email" class="required input_field" value="<%=rs.getString(9) %>"/>
                            <div class="cleaner h10"></div>
                			            
                                                    
                            <input type="submit" value="Send" id="submit" name="submit" class="submit_btn float_l" />
                            <input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_r" />                           
 					</form>
          <%} %> 
                </div>  
                </div>            
                <div class="col_w200 float_r">
                    <h4>Our Location</h4>
                    <div id="map">
                        <a class="pirobox" href="images/map_big.jpg" title="Our Location"><img src="images/map_thumb.jpg" alt="Map" /></a>
                        <div class="cleaner h40"></div>
                        <h4>Mailing Address</h4>
                        <h6><strong>Make Money Pvt. Ltd.</strong></h6>
                           INDIA <br />
                            <br />
                            <strong>Phone:</strong> 09998887776<br />
                            <strong>Email:</strong> <a href="mailto:tejmani6@gmail.com">developers@makemoney.com</a></div>                
                	</div>
			</div>
                   
        </div> <!-- end of content -->
        
        <div class="cleaner h20"></div>
    </div> <!-- end of main -->
  </div>  
<jsp:include page="tickr.jsp" />    
</div> <!-- end of wrapper -->
<jsp:include page="Footer.jsp" />    
        
</body>
</html>