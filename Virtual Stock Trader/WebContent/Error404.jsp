<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Make Money - About</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
     <link rel="stylesheet" href="css/galleriffic-2.css" type="text/css" />
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
        </div>	
            
        <div id="tooplate_content">
       	  
			 <div class="col_fw">
            <h1>Error Page : 404</h1>
            <img src="images/tooplate_image_02.jpg" alt="Image 02" class="image_fl" />
            <p><em><a href="index.jsp">Click here</a></em> to go back to the home page</p>
			</div>
			<br></br>
			<br></br>
			<br></br>
			<br></br>
			<br></br>
			<br></br>
	</div>
	</div>
	
</div> <!-- end of wrapper -->
<jsp:include page="tickr.jsp" />    
</div> <!-- end of wrapper -->
<jsp:include page="Footer.jsp" />    
        
</body>
</html>