

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
 * Servlet implementation class buy
 */
@WebServlet("/buy")
public class buy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public buy() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
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
			
			Statement st3=con.createStatement();
			String s3="select balance from cbalance where cid="+cid;
			ResultSet rs3=st3.executeQuery(s3);
			if(rs3.next())
			{
				balance=rs3.getDouble(1);
			}
			if((balance-price1*quantity1)<0)
			{
				response.sendRedirect("errorpage2.jsp");
			}
			else
			{
			Statement st=con.createStatement();
			String s="insert into tobuy values('"+name+"',"+cid+","+price1+","+quantity+",'pending')";
			st.executeUpdate(s);
			balance=balance-price1*quantity1;
			
			response.sendRedirect("successpage3.jsp");
			}
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}

}
