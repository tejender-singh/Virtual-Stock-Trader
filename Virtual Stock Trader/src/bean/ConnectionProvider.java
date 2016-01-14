package bean;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class ConnectionProvider {
	
	static private String user = "root";
	static private String pass = "root";
//	static private String dbClass = "com.mysql.jdbc.Driver";
//	static private String dbClass =	"oracle.jdbc.driver.OracleDriver";
//	static private String dbDriver = "jdbc:mysql://mysql10135-tejender.ind-cloud.everdata.com/mm";
	static private String dbDriver ="jdbc:oracle:thin:@localhost:1521:xe";
//	static private String dbDriver ="jdbc:mysql://localhost:3306/makemoney";
//	static private String dbDriver ="jdbc:mysql://mysql39811-metallicz.whelastic.net/vm1";
	static private java.sql.Connection  conn = null;

	public static java.sql.Connection getCon() {
	    boolean done = false;
	    //load driver
	    try {
			Class.forName("com.mysql.jdbc.Driver");
Class.forName("oracle.jdbc.driver.OracleDriver");
	        System.out.println("connecting!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");

//	    	conn = DriverManager.getConnection("jdbc:mysql://mm.cxtnf8qvbzmd.us-west-2.rds.amazonaws.com:3306/mm?user=mm&password=makemoney");
	    	conn = DriverManager.getConnection(dbDriver,"root","root");
//	    	conn = DriverManager.getConnection(dbDriver,"root","root");
//	    	conn = DriverManager.getConnection("jdbc:mysql://mysql39811-metallicz.whelastic.net:3306/vm1?user=vm1&password=vm1");
	    	    	
	        
	        System.out.println("connected"); // THIS IS NOT BEING RETURNED
	        
	        done = true;
	    } catch (SQLException ex) {
	    	ex.printStackTrace();
	  
//	    } catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    return conn;
	}

	public static void main(String args[]) {

	   	System.out.println(ConnectionProvider.getCon());
		System.out.println(System.out);

	}

}
