<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Make Money - Contact Us</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2051 Spot Light
http://www.tooplate.com/view/2051-spot-light
-->
<%

String a11="false",a22 ="false";
a11=(String) session.getAttribute("admin");
a22=(String)session.getAttribute("useralive");
if(a11!=null||a22!=null){
if(a11.equalsIgnoreCase("true"))
	{
	response.sendRedirect("adminhome.jsp");
	}
else if(a22.equalsIgnoreCase("true"))
{
response.sendRedirect("userhome.jsp");
}

}
	%>


<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
 <link rel="stylesheet" href="css/galleriffic-2.css" type="text/css" />
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
                 <li><a href="index.jsp"><span></span>Home</a></li>
                <li><a href="about.jsp"><span></span>About Us</a></li>
                <li><a href="signup.jsp"><span></span>Signup</a></li>
                <li><a href="#overlay"><span></span>Login</a></li>
                <li><a href="contact.jsp" class="current"><span></span>Contact</a></li>
            </ul>    	
        </div> <!-- end of tooplate_menu -->
        
        
                    <div id="overlay" >
             <%String a=request.getParameter("tag"); %>           
            <div id="popup" style=" padding-left: 40px">
                <a href=""><img class="close_button" src="images/close.png" height=20 width=20/></a>
                <form class="login" name="frm1" action="signin" method="get">
                    <div align="center">
                    <table border="0" width="350">
                        <tr>
                            <td height="50" align="left" width="80" style=" color: #000000; font-size: 15px">Username</td>
                            <td align="left"><input type="text" name="email" style=" height: 28px; border:solid 1px #000000" size="40" tabindex="1"></td>
                        </tr>
                        <tr>
                            <td height="50" align="left" style=" color: #000000; font-size: 15px">Password</td>
                            <td align="left"><input type="password" name="password" style=" height: 28px; border:solid 1px #000000" size="40" tabindex="2"></td>
                        </tr>
                        <tr>
                            <td height="50"></td>
                            <td align="left">
                                <input type="submit" value="Login" tabindex="4" style="width: 80px; height: 28px; border:solid 1px #333333; background-color: #333333; color: white; font-size: 14px">
                            &nbsp;<a href="#overlay1" style=" text-decoration: none; color: #000000">Forgot your password ?</a>
                            </td>
                        </tr>
                    </table>
                    </div>
                </form>
            </div>
        </div>
        
        
        
        
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
       	  
			<h2>Contact Information</h2>
            <div class="cleaner h20"></div>
        	
            <div>
                <div class="col_w400 float_l">	
               <div id="contact_form">
            
                    <h4>Quick Contact Form</h4>
                    

                            <label for="author">Name: Make Money Pvt. Ltd.</label>
                            <div class="cleaner h10"></div>
                            
                            <label for="author">Contact No: 8860614996 (Tejender Singh)</label>
                            <div class="cleaner h10"></div>
                            
                                                        
                            <label for="author">Contact No: 9650652950 (Lakshay Swani)</label>
                            <div class="cleaner h10"></div>
                                                                               
                            <label for="author">Email Id: tejmani6@gmail.com</label>
                            <div class="cleaner h10"></div>
                            
                            
                            <label for="author">Email Id: lakshayswani@gmail.com</label>
                            <div class="cleaner h10"></div>
                                                    
           
                </div>  
                </div>            
                <div class="col_w200 float_r">
                    <h4>Our Location</h4>
                    <div id="map">
                        <a class="pirobox" href="images/map_big.jpg" title="Our Location"><img src="images/map_big.jpg" alt="Map" /></a>
                        <div class="cleaner h40"></div>
                        <h4>Mailing Address</h4>
                        <h6><strong>Make Money Pvt. Ltd.</strong></h6>
                           New Delhi,India <br />
                            <br />
                            <strong>Email:</strong> <a href="mailto:tejmani6@gmail.com">tejmani6@gmail.com</a></div>                
                            <strong>Email:</strong> <a href="mailto:lakshayswani@gmail.com">lakshayswani@gmail.com</a></div>                
                            
                	</div>
			</div>
                   
        </div> <!-- end of content -->
        
        <div class="cleaner h20"></div>
    </div> <!-- end of main -->
    <br></br>
</div> <!-- end of wrapper -->
<jsp:include page="tickr.jsp" />    
</div> <!-- end of wrapper -->
<jsp:include page="Footer.jsp" />    
  
        
</body>
</html>