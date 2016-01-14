<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Make Money - SignUp</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2051 Spot Light
http://www.tooplate.com/view/2051-spot-light
--><%

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
                <li><a href="signup.jsp" class="current"><span></span>Signup</a></li>
                <li><a href="index.jsp#overlay"><span></span>Login</a></li>
                <li><a href="contact.jsp" ><span></span>Contact</a></li>
        </div> <!-- end of tooplate_menu -->
        
      <div id="site_title"><h1>Make Money</h1></div>
   
    </div> <!-- end of header -->
    
    <div id="tooplate_main">
    	
    	<div id="tooplate_sidebar">
        	<div class="sidebar_box">
            </div>
            
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
<%

String name =request.getParameter("name");
String username=request.getParameter("username");
String pass =request.getParameter("pass");
String email =request.getParameter("email");
String sex =request.getParameter("sex");
System.out.println("in signup2.jsp"+sex);
String phone =request.getParameter("phone");
String dd=request.getParameter("dd");
String mm =request.getParameter("mm");
String yy =request.getParameter("yy");
String address=request.getParameter("address");
//username= email.substring(0, email.indexOf("@"));


%>       	  
			<h2>Sign Up</h2>
            <div class="cleaner h20"></div>
        	
            <div>
                <div class="col_w400 float_l">	
               <div id="contact_form">
            
                    <h4>Enter your Details here :-></h4>
                    
                    <form method="post" name="contact" action="signup"> 
<%String issue=(String)request.getAttribute("issue");
%>


                            <label for="name">Name:</label> <input type="text" id="name" name="name" class="required input_field" value="<%=name%>"/>
                            <div class="cleaner h10"></div>

      <%if(issue.equalsIgnoreCase("username")){ %>                     
                           
                              <label for="username">Username: (Username you enetered already exists)</label> <input type="text" id="username" name="username" class="required input_field" />
                            <div class="cleaner h10"></div>
                           
                    <%}else{ %>       
                           
                           
                           
                              <label for="username">Username:</label> <input type="text" id="username" name="username" class="required input_field" />
                            <div class="cleaner h10"></div>
                        <%} %>                                
                            <label for="pass">Password:</label> <input type="password" id="pass" name="pass" class="required input_field" />
                            <div class="cleaner h10"></div>
                                                        
                      <%if(issue.equalsIgnoreCase("email")){ %>                                  
                            <label for="email">Email:(<%=email %> is already registered)</label> <input type="text" class="validate-email required input_field" name="email" id="email" />
                            <div class="cleaner h10"></div>
                        <%}else {%>                        
                        
                        <label for="email">Email:</label> <input type="text" class="validate-email required input_field" name="email" id="email" value="<%=email %>"/>
                            <div class="cleaner h10"></div>
                            <%} %>
                        
                            <label for="sex">Sex(M/F):</label> <input type="text" class="validate-subject required input_field" name="sex" id="sex" value="<%=sex%>" />				               
                            <div class="cleaner h10"></div>
                                
                            <label for="phone">Phone:</label> <input type="text" id="phone" name="phone" class="required input_field" value=<%=phone %> />
                            <div class="cleaner h10"></div>
                            
                            <label for="dob1">Date of Birth:</label>
                            <div class="cleaner h10"></div>
                                            
                                         
          <select name="mm" class="required input_field">
	<option> - Month - </option>
	<%="<option value="+mm+" selected='true'>"+mm+"</option>" %>
	<option value="Jan">January</option>
	<option value="Feb">Febuary</option>
	<option value="Mar">March</option>
	<option value="Apr">April</option>
	<option value="May">May</option>
	<option value="Jun">June</option>
	<option value="Jul">July</option>
	<option value="Aug">August</option>
	<option value="Sep">September</option>
	<option value="Oct">October</option>
	<option value="Nov">November</option>
	<option value="Dec">December</option>
</select>

<select name="dd" class="required input_field">
	<%="<option value="+dd+" selected=true'>"+dd+"</option>"%>
	<option> - Day - </option>
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8">8</option>
	<option value="9">9</option>
	<option value="10">10</option>
	<option value="11">11</option>
	<option value="12">12</option>
	<option value="13">13</option>
	<option value="14">14</option>
	<option value="15">15</option>
	<option value="16">16</option>
	<option value="17">17</option>
	<option value="18">18</option>
	<option value="19">19</option>
	<option value="20">20</option>
	<option value="21">21</option>
	<option value="22">22</option>
	<option value="23">23</option>
	<option value="24">24</option>
	<option value="25">25</option>
	<option value="26">26</option>
	<option value="27">27</option>
	<option value="28">28</option>
	<option value="29">29</option>
	<option value="30">30</option>
	<option value="31">31</option>
</select>

<select name="yy" class="required input_field">
	<%="<option value="+yy+" selected=true>"+yy+"</option>"	 %>
	<option> - Year - </option>
	<option value="1995">1995</option>
	<option value="1994">1994</option>
	<option value="1993">1993</option>
	<option value="1992">1992</option>
	<option value="1991">1991</option>
	<option value="1990">1990</option>
	<option value="1989">1989</option>
	<option value="1988">1988</option>
	<option value="1987">1987</option>
	<option value="1986">1986</option>
	<option value="1985">1985</option>
	<option value="1984">1984</option>
	<option value="1983">1983</option>
	<option value="1982">1982</option>
	<option value="1981">1981</option>
	<option value="1980">1980</option>
	<option value="1979">1979</option>
	<option value="1978">1978</option>
	<option value="1977">1977</option>
	<option value="1976">1976</option>
	<option value="1975">1975</option>
	<option value="1974">1974</option>
	<option value="1973">1973</option>
	<option value="1972">1972</option>
	<option value="1971">1971</option>
	<option value="1970">1970</option>
	<option value="1969">1969</option>
	<option value="1968">1968</option>
	<option value="1967">1967</option>
	<option value="1966">1966</option>
	<option value="1965">1965</option>
	<option value="1964">1964</option>
	<option value="1963">1963</option>
	<option value="1962">1962</option>
	<option value="1961">1961</option>
	<option value="1960">1960</option>
	<option value="1959">1959</option>
	<option value="1958">1958</option>
	<option value="1957">1957</option>
	<option value="1956">1956</option>
	<option value="1955">1955</option>
	<option value="1954">1954</option>
	<option value="1953">1953</option>
	<option value="1952">1952</option>
	<option value="1951">1951</option>
	<option value="1950">1950</option>
	<option value="1949">1949</option>
	<option value="1948">1948</option>
	<option value="1947">1947</option>
	
</select>
                             
                                                        
                                                        
                         <label for="address">Address:</label> <textarea id="address" name="address" rows="0" cols="0" class="required" ><%=address %></textarea>
                            <div class="cleaner h10"></div>				                                            
                            
                                                    
                            <input type="submit" value="Send" id="submit" name="submit" class="submit_btn float_l" />
                            <input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_r" />                           
 					</form>
           
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