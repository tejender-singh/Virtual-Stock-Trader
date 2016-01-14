<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Make Money - About</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<%

String a1="false",a2 ="false";
a1=(String) session.getAttribute("admin");
a2=(String)session.getAttribute("useralive");
if(a1!=null||a2!=null){
if(a1.equalsIgnoreCase("true"))
	{
	response.sendRedirect("adminhome.jsp");
	}
else if(a2.equalsIgnoreCase("true"))
{
response.sendRedirect("userhome.jsp");
}

}
	%>
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
     <link rel="stylesheet" href="css/galleriffic-2.css" type="text/css" />
</head>
<body id="subpage">
<div id="tooplate_wrapper">
    <div id="tooplate_header_sp">
        <div id="tooplate_menu">
            <ul>
                <li><a href="index.jsp"><span></span>Home</a></li>
                <li><a href="about.jsp" class="current"><span></span>About Us</a></li>
                <li><a href="signup.jsp"><span></span>Signup</a></li>
                <li><a href="#overlay"><span></span>Login</a></li>
                <li><a href="contact.jsp"><span></span>Contact</a></li>
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
       	  
			 <div class="col_fw">
            <h1>About Us</h1>
            <img src="images/tooplate_image_02.jpg" alt="Image 02" class="image_fl" />
            <p><em>Prominent Developers : Mr. Lakshay Swani & Mr. Tejender Singh. </em></p>
            <p>This website has been a hard work achieved in years after proper analysis of the Real Online Trading Market and duly Buying and selling the real stocks so as to get the knowledge of the workings and proceedings during the transactions.This has cost us a lot of money, therefore feel free to give us back your feedback and if possible, DONATE US some MONEY.</p>
              <a class="more" href="contact.jsp">DONATE</a>
			</div>
			
            <div class="col_fw_last">                 
				
                <div class="col_w300 float_l">
                	<h2>Our Services</h2>
                    <p><em>This website allows you the prominent features of a Real Trading Market such as Buying/Selling of shares, viewing your Portfolio etc... </em></p>
                    <ul class="tooplate_list">
                    	<li>Buying</li>
                        <li>Selling</li>
                        <li>Portfolio</li>
                        <li>Balance</li>
                    </ul>
                    <a class="more" href="index.jsp#overlay">START</a>
                </div>
                
                
                <div class="cleaner"></div>
			</div>
                      
        </div> <!-- end of content -->
        
        <div class="cleaner"></div>
    </div> <!-- end of main -->
    
</div> <!-- end of wrapper -->
<jsp:include page="tickr.jsp" />    
</div> <!-- end of wrapper -->
<jsp:include page="Footer.jsp" />    
        
</body>
</html>