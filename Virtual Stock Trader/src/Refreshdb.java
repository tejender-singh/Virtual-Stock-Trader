import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;


import bean.ConnectionProvider;


public class Refreshdb {

	public static void main() throws SQLException, InterruptedException {
		
		
		
		TimeZone tz=TimeZone.getTimeZone("IST");
		Calendar cal=Calendar.getInstance(tz);
		//System.out.println(c.getTime());
		String time=cal.getTime().toString();
		String day=time.substring(0,3);
		String hours=time.substring(11, 13);
		int ihours=Integer.parseInt(hours);

		//System.out.println("day= "+day+" hours= "+hours);		
		if(!(day.equalsIgnoreCase("sat") || day.equalsIgnoreCase("sun")))
		{
//			if(ihours>=10 && ihours<=17)
//			{
		Connection c=ConnectionProvider.getCon();
		Statement s=c.createStatement();
		String s1="select * from stock";
		Statement s2=c.createStatement();
		String s3="";
		int i=0;
			ResultSet rs=s.executeQuery(s1);
			while(rs.next())
			{	i++;
				String a =bean.URLHtml.current(rs.getString(2));
				String b=bean.URLHtml.change(rs.getString(2));
				System.out.println(b);
				if(a!=null && b!=null)
				{s3="update stock set price="+a+" , changee='"+b+"' where name='"+rs.getString(2)+"'";
				System.out.println(s3);
				System.out.println("In Refresh DB price and change updated");

				s2.executeUpdate(s3);
				//System.out.println("Updated"+i);
				}
			}
			Thread.sleep(5000);
			System.out.println("Updated ALL");
	
			
			////////////////////////////////////////////////////////////////////////////////////////////////////
		Statement s4=c.createStatement();
		String g="select * from tobuy where status='pending'";
		ResultSet rs2=s4.executeQuery(g);
		while(rs2.next())
		{
			double bid=rs2.getDouble(3);
			double mp=Double.parseDouble(bean.URLHtml.current(rs2.getString(1)));
			if(bid>=mp)
			{
				
				
				
				
				
				System.out.println("bid ="+bid+" mp= "+mp);
				Statement s5=c.createStatement();
				String s5s="select count(tid) from buy";
				ResultSet rs5=s5.executeQuery(s5s);
				int tid=1;
				if(rs5.next())
				{
					tid=rs5.getInt(1)+1;
				}
				Statement s6=c.createStatement();
				String s6s="insert into buy values("+tid+","+rs2.getInt(2)+",'"+rs2.getString(1)+"',"+rs2.getInt(4)+",'2015-02-10',"+rs2.getDouble(3)+")";
				s6.executeUpdate(s6s);
				
				
				Statement s8=c.createStatement();
				String s8s="select * from holdings where sid='"+rs2.getString(1)+"' and cid="+rs2.getInt(2);
				ResultSet rs8=s8.executeQuery(s8s);
				int newnos=rs2.getInt(4);
				double newavgprice=rs2.getDouble(3);
				if(rs8.next())
					
				{	
					System.out.println("IN REFRESH DB IN IF");
					int inos=rs8.getInt(3);   //initial no of stocks
					double avgprice=rs8.getDouble(4); 
					double itprice=inos*avgprice; //initial total price
					int anos=rs2.getInt(4);       //added no of stocks
					double price=rs2.getDouble(3);	//new price per stock
					newnos=inos+anos;
					newavgprice=(itprice+(price*anos))/newnos;
					System.out.println("new avg price"+newavgprice);
					Statement s9=c.createStatement();
					String s9s="update holdings set nos="+newnos+" , avgprice="+newavgprice+" where sid='"+rs2.getString(1)+"' and cid="+rs2.getInt(2)+""; 
					s9.executeUpdate(s9s);
				}
				else
				{	System.out.println("IN REFRESH DB IN ELSE");
				Statement s9=c.createStatement();
				String s9s="insert into holdings values("+rs2.getInt(2)+",'"+rs2.getString(1)+"',"+newnos+","+newavgprice+")";
				s9.executeUpdate(s9s);
					
				}
				
				
				
				Statement s7=c.createStatement();
				String s7s="update tobuy set status='successfull' where username="+rs2.getInt(2)+" and stockname='"+rs2.getString(1)+"' and price="+bid;
				s7.executeUpdate(s7s);
				
				
				Statement st13=c.createStatement();
				String s13="select balance from cbalance where cid="+rs2.getInt(2);
				ResultSet rs3=st13.executeQuery(s13);
				double balance=0;
				if(rs3.next())
				{
					balance=rs3.getDouble(1);
				}
			balance=balance-(rs2.getDouble(3)*rs2.getInt(4));
				
				Statement st11=c.createStatement();
				String s11="update cbalance set balance="+balance+" where cid="+rs2.getInt(2);
				st11.executeUpdate(s11);
			
				
				
			}
		}
			

		///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		Statement s8=c.createStatement();
		String g2="select * from tosell where status='pending'";
		ResultSet rs8=s4.executeQuery(g2);
		while(rs8.next())
		{
			double bid=rs8.getDouble(3);
			double mp=Double.parseDouble(bean.URLHtml.current(rs8.getString(1)));
			if(bid<=mp)
			{
				Statement s5=c.createStatement();
				String s5s="select count(tid) from sell";
				ResultSet rs5=s5.executeQuery(s5s);
				int tid=1;
				if(rs5.next())
				{
					tid=rs5.getInt(1)+1;
				}
				Statement s16=c.createStatement();
				String s16s="insert into sell values("+tid+","+rs8.getInt(2)+",'"+rs8.getString(1)+"',"+rs8.getInt(4)+",'2015-02-10',"+rs8.getDouble(3)+")";
				s16.executeUpdate(s16s);
				
				
				Statement s9=c.createStatement();
				String s9s="select * from holdings where sid='"+rs8.getString(1)+"' and cid="+rs8.getInt(2);
				ResultSet rs9=s9.executeQuery(s9s);
				if(rs9.next())
				{	int n=rs9.getInt(3);
					System.out.println(n);
					System.out.println(n-rs8.getInt(4));
					Statement s10=c.createStatement();
					int x=n-rs8.getInt(4);
					double iprice=rs9.getDouble(4)*rs9.getInt(3);
					double nprice=iprice-(rs8.getDouble(3)*rs8.getInt(4));
					nprice=nprice/x;
					String s10s;
					if(x>0)
					{s10s="update holdings set nos="+x+", avgprice="+nprice+" where sid='"+rs8.getString(1)+"' and cid="+rs8.getInt(2);
					}
					
					else
					{
					s10s="delete from holdings where sid='"+rs8.getString(1)+"' and cid="+rs8.getInt(2);	
					}
					s10.executeUpdate(s10s);
				
				}
				
				Statement st13=c.createStatement();
				String s13="select balance from cbalance where cid="+rs8.getInt(2);
				ResultSet rs3=st13.executeQuery(s13);
				double balance=0;
				if(rs3.next())
				{
					balance=rs3.getDouble(1);
				}

				
				Statement st2=c.createStatement();
				
				balance=balance+(rs8.getDouble(3)*rs8.getInt(4));
				String ss2="update cbalance set balance="+balance+" where cid="+rs8.getInt(2);
				st2.executeUpdate(ss2);
				
				
				
				Statement s7=c.createStatement();
				String s7s="update tosell set status='successfull' where username="+rs8.getInt(2)+" and stockname='"+rs8.getString(1)+"' and price ="+bid;
				s7.executeUpdate(s7s);
			}
		}
			
		
//			}	
		}
		
		
		
	}
	
}
