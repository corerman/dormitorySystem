package PClass;


import PClass.NetLib;


public class Json {
	public String readJsonFromUrl(String url)
	{
		NetLib netlib=new NetLib();
		String jsonContent = netlib.readFromUrl(url);
		return  jsonContent;
	}
	
	
	
	
}

