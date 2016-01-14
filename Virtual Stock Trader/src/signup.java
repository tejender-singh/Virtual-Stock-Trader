import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.ConnectionProvider;
import bean.Gmail;
   
/**
 * Servlet implementation class signup
 */
@WebServlet("/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection con=ConnectionProvider.getCon();
		try {
			String name =request.getParameter("name");
			String username=request.getParameter("username");
			String pass =request.getParameter("pass");
			String email =request.getParameter("email");
			String sex =request.getParameter("sex");
			System.out.println("InSignup.java ="+sex);
			String phone =request.getParameter("phone");
			String dd=request.getParameter("dd");
			String mm =request.getParameter("mm");
			String yy =request.getParameter("yy");
			String address =request.getParameter("address");
			//username= email.substring(0, email.indexOf("@"));
			System.out.println("username = "+username);
			Statement s1 = con.createStatement();
			Statement s2=con.createStatement();
			Statement s3=con.createStatement();
			Statement s4=con.createStatement();
			String s4s="select * from customer where username='"+username+"'"; //or email="+email;
			ResultSet rs4=s4.executeQuery(s4s);
			Statement s5=con.createStatement();
			String s5s="select * from customer where email='"+email+"'"; //or email="+email;
			ResultSet rs5=s5.executeQuery(s5s);
			
			if(rs4.next())
			{	
				System.out.println("in if");
				System.out.println(""+rs4.getStatement());
				request.setAttribute("issue","username");
				request.getRequestDispatcher("signup2.jsp").forward(request, response);
				
				//response.sendRedirect("signup2.jsp");
			}
			else if(rs5.next())
			{	System.out.println("in else if");
			System.out.println(rs5.getStatement());
				request.setAttribute("issue","email");
				request.getRequestDispatcher("signup2.jsp").forward(request, response);
			}
			else
			{
			String st2="select count(cid) from customer";
			ResultSet rs2=s2.executeQuery(st2);
			int cid=1;
			if(rs2.next())
			{
				cid=rs2.getInt(1)+1;
			}
			String st1="insert into customer values("+cid+",'"+name+"','"+username+"','"+pass+"','"+sex+"','"+address+"','"+phone+"','"+yy+"-"+mm+"-"+dd+"','"+email+"')";
			String st3="insert into cbalance values("+cid+",10000)";
			s1.executeUpdate(st1);
			s3.executeUpdate(st3);
			HttpSession session=request.getSession();
			session.setAttribute("uname", username);
				Gmail.TO = "ss";
				Gmail.TEXT="Thanks For Siging up on Make Money Pvt. Ltd. \n Your UserName :"+username+"\n Your Password :"+pass+"";
				Gmail.send();
	   	 System.out.print("Mail sent");	

			response.sendRedirect("successpage1.jsp");
			
		}}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
	}

}
