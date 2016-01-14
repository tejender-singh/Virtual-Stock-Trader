<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="bean.ConnectionProvider"%>
<%@page import="bean.MySessionListener"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Make Money</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

        


<!--
Template 2051 Spot Light
http://www.tooplate.com/view/2051-spot-light
-->
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
else
{
	 session.setAttribute("admin","false");
	    session.setAttribute("useralive","false");
	 
	   
}
	%>
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" href="css/galleriffic-2.css" type="text/css" />
    
	<script type="text/javascript" src="js/jquery-1.3.2.js"></script>
    <script type="text/javascript" src="js/jquery.galleriffic.js"></script>
    
    <script type="text/javascript" src="js/jquery.opacityrollover.js"></script>
    <!-- We only want the thunbnails to display when javascript is disabled -->
    <script type="text/javascript">
    document.write('<style>.noscript { display: none; }</style>');
    </script>
    
</head>

<body id="home">
<div id="tooplate_wrapper">
    <div id="tooplate_header">
        <div id="tooplate_menu">
            <ul>
                <li><a href="index.jsp" class="current"><span></span>Home</a></li>
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
    
        
        <div id="site_title"><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Make Money</h1></div>
        
        <div id="tooplate_slider">
    	
        	<!-- Start Advanced Gallery Html Containers -->
				<div id="gallery" class="content">
					<div class="slideshow-container">
						<div id="loading" class="loader"></div>
						<div id="slideshow" class="slideshow"></div>
					</div>
				</div>
				<div id="thumbs" class="navigation">
					<ul class="thumbs noscript">
						<li>
							<a class="thumb" name="leaf" href="images/slider/01_l.jpg" title="Title 01">
								<img src="images/slider/01_t.jpg" alt="Title 01" />
							</a>
						</li>

						<li>
							<a class="thumb" name="leaf" href="images/slider/02_l.jpg" title="Title 02">
								<img src="images/slider/02_t.jpg" alt="Title 02" />
							</a>
						</li>
                        
                        <li>
							<a class="thumb" name="leaf" href="images/slider/03_l.jpg" title="Title 03">
								<img src="images/slider/03_t.jpg" alt="Title 03" />
							</a>
						</li>
                        
<!--                         <li> -->
<!-- 							<a class="thumb" name="leaf" href="images/slider/04_l.jpg" title="Title 04"> -->
<!-- 								<img src="images/slider/04_t.jpg" alt="Title 04" /> -->
<!-- 							</a> -->
<!-- 						</li> -->
                        
                    <li>
							<a class="thumb" name="leaf" href="images/slider/01i_l.jpg" title="Title 01">
								<img src="images/slider/01i_t.jpg" alt="Title 01" />
							</a>
						</li>
					
                    
                    
                    
                    
                        <li>
							<a class="thumb" name="leaf" href="images/slider/05_l.jpg" title="Title 05">
								<img src="images/slider/05_t.jpg" alt="Title 05" />
							</a>
						</li>
					
					
					
					</ul>
				</div>
	    </div>
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
            <h1>WELCOME TO MAKE MONEY</h1>
                <img src="images/tooplate_image_01.jpg" alt="Image 01" class="image_fl" />
                <p><em>A website which guides you to and enlightens you to bring yourself to the reality of Online Marketing by the virtue of VIRTUAL TRADING.</em></p>
				<p>This website offers you the features of a Real Online Trading Market and allows you to Buy and Sell shares without the fear of loosing any money ! This website is purely for educational purposes and the website is not responsible for any payments regarding to the Wins or Losses .</p>
				<a href="about.jsp">More</a>
			</div>
            
            <div class="col_fw_last">
            	<h2>Our Services</h2>
                <p><em>This website allows you the prominent features of a Real Trading Market such as Buying/Selling of shares, viewing your Portfolio etc...</em></p>
                <div class="cleaner h20"></div>
                <div class="col_w300 float_l fp_service_box">
                    <h4>Buying</h4>
                    <img src="images/vv-icon-01.png" alt="image" />
                    <p>Buy more and more shares using your virtual money without the fear of loosing money.</p>
                    <a class="more" href="index.jsp#overlay">Buy</a>
                </div>
                <div class="col_w300 float_r fp_service_box">
                    <h4>Selling</h4>
                    <img src="images/vv-icon-02.png" alt="image" />
                    <p>Sell your Real Time shares using your virtual money without the fear of loosing money. </p>
                    <a class="more" href="index.jsp#overlay">Sell</a>
                </div>
                <div class="cleaner"></div>
                <div class="col_w300 float_l fp_service_box">
                    <h4>Portfolio</h4>
                    <img src="images/vv-icon-03.png" alt="image" />
                    <p>View your Portfolio i.e. the transactions, profits, losses etc.</p>
                    <a class="more" href="index.jsp#overlay">Portfolio</a>
                </div>
                <div class="col_w300 float_r fp_service_box">
                    <h4>Balance</h4>
                    <img src="images/vv-icon-04.png" alt="image" />
                    <p>You can Buy more balance in your account.</p>
                    <a class="more" href="index.jsp#overlay">Balance</a>
                </div>
                <div class="cleaner"></div>
            </div>
        </div> <!-- end of content -->
        
        <div class="cleaner"></div>
    </div> <!-- end of main -->
</div>
</div>

<jsp:include page="tickr.jsp" />    
</div> <!-- end of wrapper -->
<jsp:include page="Footer.jsp" />    

		<script type="text/javascript">
			jQuery(document).ready(function($) {
				// We only want these styles applied when javascript is enabled
				$('div.navigation').css({'width' : '960px', 'float' : 'left'});
				$('div.content').css('display', 'block');

				// Initially set opacity on thumbs and add
				// additional styling for hover effect on thumbs
				var onMouseOutOpacity = 0.67;
				$('#thumbs ul.thumbs li').opacityrollover({
					mouseOutOpacity:   onMouseOutOpacity,
					mouseOverOpacity:  1.0,
					fadeSpeed:         'fast',
					exemptionSelector: '.selected'
				});
				
				// Initialize Advanced Galleriffic Gallery
				var gallery = $('#thumbs').galleriffic({
					delay:                     2500,
					numThumbs:                 5,
					preloadAhead:              10,
					enableTopPager:            false,
					enableBottomPager:         false,
					maxPagesToShow:            7,
					imageContainerSel:         '#slideshow',
					controlsContainerSel:      '#controls',
					captionContainerSel:       '#caption',
					loadingContainerSel:       '#loading',
					renderSSControls:          true,
					renderNavControls:         true,
					playLinkText:              'Play Slideshow',
					pauseLinkText:             'Pause Slideshow',
					prevLinkText:              '&lsaquo; Previous Photo',
					nextLinkText:              'Next Photo &rsaquo;',
					nextPageLinkText:          'Next &rsaquo;',
					prevPageLinkText:          '&lsaquo; Prev',
					enableHistory:             false,
					autoStart:                 false,
					syncTransitions:           true,
					defaultTransitionDuration: 900,
					onSlideChange:             function(prevIndex, nextIndex) {
						// 'this' refers to the gallery, which is an extension of $('#thumbs')
						this.find('ul.thumbs').children()
							.eq(prevIndex).fadeTo('fast', onMouseOutOpacity).end()
							.eq(nextIndex).fadeTo('fast', 1.0);
					},
					onPageTransitionOut:       function(callback) {
						this.fadeTo('fast', 0.0, callback);
					},
					onPageTransitionIn:        function() {
						this.fadeTo('fast', 1.0);
					}
				});
			});
		</script>
</body>
</html>