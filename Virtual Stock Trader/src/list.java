

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.util.*;
/**
 * Application Lifecycle Listener implementation class list
 *
 */
@WebListener
public class list implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public list() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0) {
        // TODO Auto-generated method stub
		try {    	
		   TimerTask tasknew = new TimerTask() {
			   
				@Override
				public void run() {
					// TODO Auto-generated method stub
		
					while(true)
					{
//						try {
//							Refreshdb.main();
//						} catch (SQLException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						} catch (InterruptedException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						}
					}
				}
		    
					
					
					
				
			};
			   Timer timer = new Timer();
			      
			   // scheduling the task at interval
		//	   timer.schedule(tasknew,1000, 5000);      
			   	
		}catch (Exception e) {
			// TODO: handle exception
		}
			   
			   }    	
    
    

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0) {
        // TODO Auto-generated method stub
    }
	
    
}
