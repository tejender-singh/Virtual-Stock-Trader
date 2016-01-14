<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Make Money - Homepage</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2051 Spot Light
http://www.tooplate.com/view/2051-spot-light
-->
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />

<!--////// CHOOSE ONE OF THE 3 PIROBOX STYLES  \\\\\\\-->
<link href="css_pirobox/white/style.css" media="screen" title="shadow" rel="stylesheet" type="text/css" />
<!--<link href="css_pirobox/white/style.css" media="screen" title="white" rel="stylesheet" type="text/css" />
<link href="css_pirobox/black/style.css" media="screen" title="black" rel="stylesheet" type="text/css" />-->
<!--////// END  \\\\\\\-->
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
                <li><a href="userhome.jsp" class="current"><span></span>Home</a></li>
                <li><a href="trad.jsp"><span></span>Trade</a></li>
                <li><a href="viewport.jsp"><span></span>View Portfolio</a></li>
                <li><a href="urdetails.jsp"><span></span>Personal Details</a></li>
                <li><a href="sendfeed.jsp"><span></span>Send Feedback</a></li>
                <li><a href="userlogout"><span></span>Logout</a></li> </ul>    	
        </div> <!-- end of tooplate_menu -->
        
        <div id="site_title"><h1>Make Money</h1></div>
 
    </div> <!-- end of header -->
    
    <div id="tooplate_main">
    	
    	<h2><strong>Buying and selling</strong></h2>
            <p><em>
<br></br>First, let's describe what short selling means when you purchase shares of stock. In purchasing stocks, you buy a piece of ownership in the company. The buying and selling of stocks can occur with a stock broker or directly from the company. Brokers are most commonly used. They serve as an intermediary between the investor and the seller and often charge a fee for their services.


<br></br>When using a broker, you will need to set up an account. The account that's set up is either a cash account or a margin account. A cash account requires that you pay for your stock when you make the purchase, but with a margin account the broker lends you a portion of the funds at the time of purchase and the security acts as collateral.


<br></br>When an investor goes long on an investment, it means that he or she has bought a stock believing its price will rise in the future. Conversely, when an investor goes short, he or she is anticipating a decrease in share price.




 </em></p>   
            
            <div class="cleaner h30"></div>
          	      <div class="cleaner"></div>
               
            </div>
            <div class="cleaner"></div>
            <div class="pagging">
            	<ul>	<li><a href="userhome1.jsp">previous</a></li>
                    <li><a href="userhome.jsp">1</a></li>
                    <li><a href="userhome1.jsp">2</a></li>
                    <li><a href="userhome2.jsp">3</a></li>
                    <li><a href="userhome3.jsp">4</a></li>
                    <li><a href="userhome3.jsp">next</a></li>
				</ul>
                <div class="cleaner"></div>
            </div>
        
        <div class="cleaner"></div>
        <br></br>
        <br></br>
        
    </div> <!-- end of main -->
    
<jsp:include page="tickr.jsp" />    
</div> <!-- end of wrapper -->
<jsp:include page="Footer.jsp" />    
  
        
</body>
</html>