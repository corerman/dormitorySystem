package action;
import org.json.JSONArray;
import org.json.JSONObject;

import com.opensymphony.xwork2.ActionSupport;

import PClass.Json;

public class weather extends ActionSupport {
	public static String result;
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public static String getJsonFromUrl(){
		String mintemp,maxtemp,status1,status2,date;
		String url="http://api.heweather.com/x3/weather?cityid=CN101221101&key=568530407ca04a2b85f46109ae04879a";
		Json json=new Json();
		String jsonContent=json.readJsonFromUrl(url);
		
		
		JSONObject jsonobj = new JSONObject(jsonContent); 
		JSONArray jsonArray = jsonobj.getJSONArray("HeWeather data service 3.0"); //获取根节点
		
		jsonobj = new JSONObject(jsonArray.get(0).toString());
		
		jsonArray = jsonobj.getJSONArray("daily_forecast");
		
		
		jsonobj = new JSONObject(jsonArray.get(0).toString());  //获取今天当天的天气数据
		mintemp=jsonobj.getJSONObject("tmp").get("min").toString();
		maxtemp=jsonobj.getJSONObject("tmp").get("max").toString();
		status1=jsonobj.getJSONObject("cond").get("txt_d").toString();
		status2=jsonobj.getJSONObject("cond").get("txt_n").toString();
		date=jsonobj.get("date").toString();
	
		
		result="滁州   "+"  "+"气温："+mintemp+"度~"+maxtemp+"度  "+" 天气："+status1+" 转  "+status2;
		
		return "success";
	}
	

}
