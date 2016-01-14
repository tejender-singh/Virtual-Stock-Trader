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
    	
    	<h2><strong>Short Selling</strong></h2>
            <p><em>
            
<br></br>            Short selling is the selling of a stock that the seller doesn't own. More specifically, a short sale is the sale of a security that isn't owned by the seller, but that is promised to be delivered. That may sound confusing, but it's actually a simple concept. (To learn more, read Benefit From Borrowed Securities.)



<br></br>Still with us? Here's the skinny: when you short sell a stock, your broker will lend it to you. The stock will come from the brokerage's own inventory, from another one of the firm's customers, or from another brokerage firm. The shares are sold and the proceeds are credited to your account. Sooner or later, you must "close" the short by buying back the same number of shares (called covering) and returning them to your broker. If the price drops, you can buy back the stock at the lower price and make a profit on the difference. If the price of the stock rises, you have to buy it back at the higher price, and you lose money.


<br></br>Most of the time, you can hold a short for as long as you want, although interest is charged on margin accounts, so keeping a short sale open for a long time will cost more However, you can be forced to cover if the lender wants the stock you borrowed back. Brokerages can't sell what they don't have, so yours will either have to come up with new shares to borrow, or you'll have to cover. This is known as being called away. It doesn't happen often, but is possible if many investors are short selling a particular security.


<br></br>Because you don't own the stock you're short selling (you borrowed and then sold it), you must pay the lender of the stock any dividends or rights declared during the course of the loan. If the stock splits during the course of your short, you'll owe twice the number of shares at half the price.


             </em></p>   
            
            <div class="cleaner h30"></div>
          	      <div class="cleaner"></div>
               
            </div>
            <div class="cleaner"></div>
            <div class="pagging">
            	<ul>	<li><a href="userhome2.jsp">previous</a></li>
                    <li><a href="userhome.jsp">1</a></li>
                    <li><a href="userhome1.jsp">2</a></li>
                    <li><a href="userhome2.jsp">3</a></li>
                    <li><a href="userhome3.jsp">4</a></li>
                    <li><a href="#">next</a></li>
				</ul>
                <div class="cleaner"></div>
            </div>
        
        <div class="cleaner"></div>
    </div> <!-- end of main -->
    
<jsp:include page="tickr.jsp" />    
</div> <!-- end of wrapper -->
<jsp:include page="Footer.jsp" />    
        
</body>
</html>