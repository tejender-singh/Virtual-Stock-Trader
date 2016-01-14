<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="bean.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <marquee style="background-color: #000; border: 1px solid #ccc">
    <p><b>
<%
try{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs= st.executeQuery("select * from stock");

while(rs.next())
{	
	
	if(rs.getString(3)!=null && rs.getString(4)!=null)
	{
	out.println("<font style='color: white' >&nbsp;&nbsp;&nbsp;"+rs.getString(2).toUpperCase()+"-> ");
	
	if(rs.getString(4).charAt(0)=='-')
	{out.println("<font style='color: red' >"+rs.getString(3) + " ("+rs.getString(4)+")   " );
	}
	else
	{
		out.println("<font style='color: green' >"+rs.getString(3) + " ("+rs.getString(4)+") ");
	}
}
}
}
catch(NullPointerException e)
{
	
}
%></b>
</p>
</marquee>
