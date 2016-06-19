package livingRoomClean;

import livingClean.LivingClean;
import livingClean.LivingCleanDAO;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class LivingRoomCleanControl extends ActionSupport {
	public static String result;
	private static int listCount=0;
	private int id;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	public static List<LivingClean> searchAll()
	{
		LivingCleanDAO dao=new LivingCleanDAO();
		List<LivingClean>  list = new ArrayList<LivingClean>();
		dao.getSession().beginTransaction();
		list=dao.findAll();	
		listCount=list.size();
	//	System.out.println(listCount);
		return list;
	}
	
	public String getGoodLevelFromId() //只有-1 ,-2
	{
		List<LivingClean> list = new ArrayList<LivingClean>();
		list=searchAll();
		//setId(2);
		result=list.get(listCount-id).getGoodlevel();
		//先调用setId 在调用此函数
		return "success";
	}

	
	public String getMidLevelFromId() //只有-1 ,-2
	{
		List<LivingClean> list = new ArrayList<LivingClean>();
		list=searchAll();
		//setId(2);
		result=list.get(listCount-id).getMidlevel();
		//先调用setId 在调用此函数
		return "success";
	}

	public String getBadLevelFromId() //只有-1 ,-2
	{
		List<LivingClean> list = new ArrayList<LivingClean>();
		list=searchAll();
		//setId(2);
		result=list.get(listCount-id).getBadlevel();
		//先调用setId 在调用此函数
		return "success";
	}
	
	public String getLivingRoomId() //只有-1 ,-2 获取宿舍楼号
	{
		List<LivingClean> list = new ArrayList<LivingClean>();
		list=searchAll();
		//setId(2);
		result=list.get(listCount-id).getSushelou();
		//先调用setId 在调用此函数
		return "success";
	}
}
