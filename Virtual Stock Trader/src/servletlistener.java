

import java.sql.SQLException;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class servletlistener
 *
 */
@WebListener
public class servletlistener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public servletlistener() {
        // TODO Auto-generated constructor stub
    	
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0) {
        // TODO Auto-generated method stub
    	bean.MySessionListener.isContextRunning=true;
    	TimerTask tasknew=new TimerTask() {
			
			@Override
			public void run() {
				try
				{
				// TODO Auto-generated method stub
				Refreshdb.main();
					bean.MySessionListener.isTaskRunning=true;
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			}
		};
		Timer timer=new Timer();
	//	timer.schedule(tasknew, 1000,1000);
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0) {
        // TODO Auto-generated method stub
    }    
}
