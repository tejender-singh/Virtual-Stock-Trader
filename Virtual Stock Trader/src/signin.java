

import static bean.Provider.CONNECTION_URL;
import static bean.Provider.DRIVER;

import java.io.IOException;
import java.sql.*;

import bean.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class signin
 */
@WebServlet("/signin")
public class signin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		Connection con=ConnectionProvider.getCon();

		
		String login=request.getParameter("email");
	String pass=request.getParameter("password");
	System.out.println(login);
	System.out.println(pass);
	System.out.println(""+con);
	try {
		PreparedStatement s=con.prepareStatement("select * from admin where login=? and pass=?");
		s.setString(1, login);
		s.setString(2, pass);
	ResultSet rs=s.executeQuery();
	HttpSession session = request.getSession();
	if(rs.next())
	{	
		session.setAttribute("admin", "true");
		response.sendRedirect("adminhome.jsp");
	}
	else
	{
		PreparedStatement ps=con.prepareStatement("select * from customer where username=? and pass=?");
	ps.setString(1, login);
	ps.setString(2, pass);
	ResultSet rs2=ps.executeQuery();	
	System.out.println("outside if");
	if(rs2.next())
	{
		System.out.println("inside if");		
		session.setAttribute("useralive", "true");
		session.setAttribute("cid", rs2.getInt(1));
		response.sendRedirect("userhome.jsp");
	}
	else
	{
		System.out.println("in else");
		session.setAttribute("admin", "false");
		session.setAttribute("useralive", "false");
		response.sendRedirect("errorpage.jsp");
	}
	}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
