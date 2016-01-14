

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
 * Servlet implementation class sell
 */
@WebServlet("/sell")
public class sell extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sell() {
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
		String name,quantity,price;
		int cid;
		double balance=0;
		Connection con = ConnectionProvider.getCon();
		
		name=request.getParameter("name");
		quantity=request.getParameter("quantity");
		int quantity1=Integer.parseInt(quantity);
		price=request.getParameter("price");
		double price1=Double.parseDouble(price);
		HttpSession session = request.getSession();
		cid=(Integer)session.getAttribute("cid");
		
		try {
			
		
			
			
			Statement st=con.createStatement();
			String s="insert into tosell values('"+name+"',"+cid+","+price1+","+quantity+",'pending')";
			st.executeUpdate(s);
			response.sendRedirect("successpage3.jsp");
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
