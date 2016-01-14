package bean;


import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URI;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;


public class URLHtml {
	
	public static void main(String[] args) {
		System.out.println(URLHtml.current("NTPC"));
		System.out.println(URLHtml.change("nhpc"));
	}

    public static String current(String args) 
    {
        //String url = "enter your URL here";
        String url = "http://finance.google.com/finance/info?client=ig&q="+args;
        String output = getHTML(url);
        //System.out.println("html output is from next line");
        //System.out.println(output);
        int i=0;
        try
        {
        while(i<=4)
        {
        	output=output.substring(output.indexOf(":")+1);
        	//System.out.println("in while"+i+output);
        	i++;
        }
        output=output.substring(2, output.indexOf(",")-1);
		return(""+Double.parseDouble(output));
        }
        catch(Exception e)
        {
        	//System.out.println("Please connect to the internet"+output);
        	return(null);
        }
    }    		

        public static String change(String args) 
        {
            //String url = "enter your URL here";
            String url = "http://finance.google.com/finance/info?client=ig&q="+args;
            String output = getHTML(url);
            //System.out.println("html output is from next line");
            //System.out.println(output);
            int i=0;
            try
            {
            while(i<=16)
            {
            	output=output.substring(output.indexOf(":")+1);
            	//System.out.println("in while"+i+output);
            	i++;
            }
            output=output.substring(2, output.indexOf(",")-1);
            double db=Double.parseDouble(output);
            if(db<1&&db>0)
    		return(""+db);
            else if(db<0&&db>-1)
            return(""+db);	
            else
            return(""+db);
            }
            catch(Exception e)
            {
            	//System.out.println("Please connect to the internet"+output);
            	return(null);
            }

    }
    public static String getHTML(String url) 
    {
        String result = "";
        try {
            HttpClient client = new DefaultHttpClient();
            HttpParams httpParameters = client.getParams();
            HttpConnectionParams.setConnectionTimeout(httpParameters, 5000);
            HttpConnectionParams.setSoTimeout(httpParameters, 5000);
            HttpConnectionParams.setTcpNoDelay(httpParameters, true);
            HttpGet request = new HttpGet();
            request.setURI(new URI(url));
            HttpResponse response = client.execute(request);
            InputStream ips = response.getEntity().getContent();
            BufferedReader buf = new BufferedReader(new InputStreamReader(ips,"UTF-8"));
            StringBuilder sb = new StringBuilder();
            String s;
            while (true) {
                s = buf.readLine();
                if (s == null)
                    break;
                sb.append(s);
            }
            buf.close();
            ips.close();
            result = sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    
    
    
    
    
    }
    
    
    