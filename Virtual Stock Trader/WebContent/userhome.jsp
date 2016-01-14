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
    	
    	<h2><Strong>Stock Basics</Strong>:<br></br> How to trade? </h2>
    	
    	<img src="images\\ab.jpg" width="300" height="250" align="right"></img>
            <p><em>Most stocks are traded on exchanges, which are places where buyers and sellers meet and decide on a price. Some exchanges are physical locations where transactions are carried out on a trading floor. You've probably seen pictures of a trading floor, in which traders are wildly throwing their arms up, waving, yelling, and signaling to each other. The other type of exchange is virtual, composed of a network of computers where trades are made electronically. 


The purpose of a stock market is to facilitate the exchange of securities between buyers and sellers, reducing the risks of investing. Just imagine how difficult it would be to sell shares if you had to call around the neighborhood trying to find a buyer. Really, a stock market is nothing more than a super-sophisticated farmers' market linking buyers and sellers. 

Before we go on, we should distinguish between the primary market and the secondary market. The primary market is where securities are created (by means of an IPO) while, in the secondary market, investors trade previously-issued securities without the involvement of the issuing-companies. The secondary market is what people are referring to when they talk about the stock market. It is important to understand that the trading of a company's stock does not directly involve that company. 
</em></p>   



<h2>How stock prices change?</h2>
<p><em>Stock prices change every day as a result of market forces. By this we mean that share prices change because of supply and demand. If more people want to buy a stock (demand) than sell it (supply), then the price moves up. Conversely, if more people wanted to sell a stock than buy it, there would be greater supply than demand, and the price would fall. 


Understanding supply and demand is easy. What is difficult to comprehend is what makes people like a particular stock and dislike another stock. This comes down to figuring out what news is positive for a company and what news is negative. There are many answers to this problem and just about any investor you ask has their own ideas and strategies. 
<br>The important things to grasp about this subject are the following: 

<br>1. At the most fundamental level, supply and demand in the market determines stock price. 
<br>2. Price times the number of shares outstanding (market capitalization) is the value of a company. Comparing just the share price of two companies is meaningless. 
<br>3. Theoretically, earnings are what affect investors' valuation of a company, but there are other indicators that investors use to predict stock price. Remember, it is investors' sentiments, attitudes and expectations that ultimately affect stock prices. 
<br>4. There are many theories that try to explain the way stock prices move the way they do. Unfortunately, there is no one theory that can explain everything.

</em></p>

            
            <div class="cleaner h30"></div>
          	      <div class="cleaner"></div>
               
            </div>
            <div class="cleaner"></div>
            <div class="pagging">
            	<ul>
                		<li><a href="#">previous</a></li>
                    <li><a href="userhome.jsp">1</a></li>
                    <li><a href="userhome1.jsp">2</a></li>
                    <li><a href="userhome2.jsp">3</a></li>
                    <li><a href="userhome3.jsp">4</a></li>
                    <li><a href="userhome1.jsp">next</a></li>
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