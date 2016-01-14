
<%@page import="bean.URLHtml"%>
<%@page import="bean.ConnectionProvider"%>
<%@ page import="java.sql.*"%>

    <h2><strong>Current Price</strong></h2>
                        <h6><strong><%=request.getParameter("name").toUpperCase()%> :  <%=URLHtml.current(request.getParameter("name"))%></strong></h6>
						<h2><strong>Your Balance</strong></h2>
						<%
						Connection con=ConnectionProvider.getCon();
						Statement st3=con.createStatement();
							String s3s="select balance from cbalance where cid="+session.getAttribute("cid");
							ResultSet rs3=st3.executeQuery(s3s);
							double balance=0;
							if(rs3.next())
							{
								balance=rs3.getDouble(1);
							}
						
						%>
						
						
                        <h6><strong><%=balance%></strong></h6>
