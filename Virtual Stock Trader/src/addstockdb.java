

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

/**
 * Servlet implementation class addstockdb
 */
@WebServlet("/addstockdb")
public class addstockdb extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public addstockdb() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int sid=0,a=0;
		HttpSession session = request.getSession();
		Connection con = ConnectionProvider.getCon();
		try {
			Statement s1=con.createStatement();
			ResultSet rs2=s1.executeQuery("Select * from stock");
			while(rs2.next())
			{
				if(rs2.getString(2).equalsIgnoreCase((String) session.getAttribute("name")))
				{a++;
				}
			}
			if(a>0)
			{
				response.sendRedirect("errorpage1.jsp");
				
			}
			else
			{
			Statement st=con.createStatement();
			ResultSet rs = st.executeQuery("select max(sid) from stock");
			if(rs.next())
			{
				sid=rs.getInt(1)+1;
			}
			else
			{
				sid=1;
			}

			String name=(String) session.getAttribute("id");
			String p=(String) session.getAttribute("price");
			Statement st2 = con.createStatement();
			boolean b =st2.execute("insert into stock(sid,name,price,changee) values("+sid+",'"+name+"',"+Double.parseDouble(p)+",0)");
			System.out.println(b);
			response.sendRedirect("successpage.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
}
