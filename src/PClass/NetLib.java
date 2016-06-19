package PClass;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;

public class NetLib {
	public  String  readFromUrl(String urllink){
		StringBuffer document = new StringBuffer();
        try 
        {
            URL url = new URL(urllink);
            java.net.URLConnection conn = url.openConnection();
            BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream(),"UTF-8"));
            String line = null;
            while ((line = reader.readLine()) != null)
            document.append(line);
            reader.close();
        }
        catch (MalformedURLException e) 
        {
            e.printStackTrace(); 
        }
        catch (IOException e)
        {
            e.printStackTrace(); 
        }
        return document.toString();		
		
	}
}
