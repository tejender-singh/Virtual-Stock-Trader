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
    	
    	<h2><Strong>What are stocks?</strong></h2>
            <p><em>



<br><h2>The Definition of a Stock</h2>
<br>Plain and simple, stock is a share in the ownership of a company. Stock represents a claim on the company's assets and earnings. As you acquire more stock, your ownership stake in the company becomes greater. Whether you say shares, equity, or stock, it all means the same thing. 


<br><br><h2>Being an Owner</h2> 
<br>Holding a company's stock means that you are one of the many owners (shareholders) of a company and, as such, you have a claim (albeit usually very small) to everything the company owns. Yes, this means that technically you own a tiny sliver of every piece of furniture, every trademark, and every contract of the company. As an owner, you are entitled to your share of the company's earnings as well as any voting rights attached to the stock. 



<br>
A stock is represented by a stock certificate. This is a fancy piece of paper that is proof of your ownership. In today's computer age, you won't actually get to see this document because your brokerage keeps these records electronically, which is also known as holding shares "in street name". This is done to make the shares easier to trade. In the past, when a person wanted to sell his or her shares, that person physically took the certificates down to the brokerage. Now, trading with a click of the mouse or a phone call makes life easier for everybody. 

Being a shareholder of a public company does not mean you have a say in the day-to-day running of the business. Instead, one vote per share to elect the board of directors at annual meetings is the extent to which you have a say in the company. For instance, being a Microsoft shareholder doesn't mean you can call up Bill Gates and tell him how you think the company should be run. In the same line of thinking, being a shareholder of Anheuser Busch doesn't mean you can walk into the factory and grab a free case of Bud Light! 

The management of the company is supposed to increase the value of the firm for shareholders. If this doesn't happen, the shareholders can vote to have the management removed, at least in theory. In reality, individual investors like you and I don't own enough shares to have a material influence on the company. It's really the big boys like large institutional investors and billionaire entrepreneurs who make the decisions. 

For ordinary shareholders, not being able to manage the company isn't such a big deal. After all, the idea is that you don't want to have to work to make money, right? The importance of being a shareholder is that you are entitled to a portion of the company's profits and have a claim on assets. Profits are sometimes paid out in the form of dividends. The more shares you own, the larger the portion of the profits you get. Your claim on assets is only relevant if a company goes bankrupt. In case of liquidation, you'll receive what's left after all the creditors have been paid. This last point is worth repeating: the importance of stock ownership is your claim on assets and earnings. Without this, the stock wouldn't be worth the paper it's printed on. 



Another extremely important feature of stock is its limited liability, which means that, as an owner of a stock, you are not personally liable if the company is not able to pay its debts. Other companies such as partnerships are set up so that if the partnership goes bankrupt the creditors can come after the partners (shareholders) personally and sell off their house, car, furniture, etc. Owning stock means that, no matter what, the maximum value you can lose is the value of your investment. Even if a company of which you are a shareholder goes bankrupt, you can never lose your personal assets. 
<br><br>
<h2>Debt vs. Equity</h2> 
<br>Why does a company issue stock? Why would the founders share the profits with thousands of people when they could keep profits to themselves? The reason is that at some point every company needs to raise money. To do this, companies can either borrow it from somebody or raise it by selling part of the company, which is known as issuing stock. A company can borrow by taking a loan from a bank or by issuing bonds. Both methods fit under the umbrella of debt financing. On the other hand, issuing stock is called equity financing. Issuing stock is advantageous for the company because it does not require the company to pay back the money or make interest payments along the way. All that the shareholders get in return for their money is the hope that the shares will someday be worth more than what they paid for them. The first sale of a stock, which is issued by the private company itself, is called the initial public offering (IPO). 

It is important that you understand the distinction between a company financing through debt and financing through equity. When you buy a debt investment such as a bond, you are guaranteed the return of your money (the principal) along with promised interest payments. This isn't the case with an equity investment. By becoming an owner, you assume the risk of the company not being successful - just as a small business owner isn't guaranteed a return, neither is a shareholder. As an owner, your claim on assets is less than that of creditors. This means that if a company goes bankrupt and liquidates, you, as a shareholder, don't get any money until the banks and bondholders have been paid out; we call this absolute priority. Shareholders earn a lot if a company is successful, but they also stand to lose their entire investment if the company isn't successful. 

<br><br><h2>Risk</h2> 
<br>It must be emphasized that there are no guarantees when it comes to individual stocks. Some companies pay out dividends, but many others do not. And there is no obligation to pay out dividends even for those firms that have traditionally given them. Without dividends, an investor can make money on a stock only through its appreciation in the open market. On the downside, any stock may go bankrupt, in which case your investment is worth nothing. 

Although risk might sound all negative, there is also a bright side. Taking on greater risk demands a greater return on your investment. This is the reason why stocks have historically outperformed other investments such as bonds or savings accounts. Over the long term, an investment in stocks has historically had an average return of around 10-12%.

 </em></p>   
            
            <div class="cleaner h30"></div>
          	      <div class="cleaner"></div>
               
            </div>
            <div class="cleaner"></div>
            <div class="pagging">
            	<ul>
                	<li><a href="userhome.jsp">previous</a></li>
                    <li><a href="userhome.jsp">1</a></li>
                    <li><a href="userhome1.jsp">2</a></li>
                    <li><a href="userhome2.jsp">3</a></li>
                    <li><a href="userhome3.jsp">4</a></li>
                    <li><a href="userhome2.jsp">next</a></li>
				</ul>
                <div class="cleaner"></div>
            </div>
        
        <div class="cleaner"></div>
    </div> <!-- end of main -->
    
</div> <!-- end of wrapper -->
<jsp:include page="tickr.jsp" />    
</div> <!-- end of wrapper -->
<jsp:include page="Footer.jsp" />    
        
</body>
</html>