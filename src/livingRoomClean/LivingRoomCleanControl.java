package livingRoomClean;

import livingClean.LivingClean;
import livingClean.LivingCleanDAO;

import hi.Notice;
import hi.NoticeDAO;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class LivingRoomCleanControl extends ActionSupport {
	public static String result;
	private static int listCount=0;
	private int id;
	private String sushelou;
	private String goodlevel;
	private String midlevel;
	public String getSushelou() {
		return sushelou;
	}

	public void setSushelou(String sushelou) {
		this.sushelou = sushelou;
	}

	public String getGoodlevel() {
		return goodlevel;
	}

	public void setGoodlevel(String goodlevel) {
		this.goodlevel = goodlevel;
	}

	public String getMidlevel() {
		return midlevel;
	}

	public void setMidlevel(String midlevel) {
		this.midlevel = midlevel;
	}

	public String getBadlevel() {
		return badlevel;
	}

	public void setBadlevel(String badlevel) {
		this.badlevel = badlevel;
	}

	private String badlevel;
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
	
	

	
	public String editWeiSheng() {
		LivingCleanDAO dao=new LivingCleanDAO();
		LivingClean clean=new LivingClean();
		clean.setId(id);
		clean.setSushelou(sushelou);
		clean.setGoodlevel(goodlevel);
		clean.setMidlevel(midlevel);
		clean.setBadlevel(badlevel);
		try{
			
			dao.getSession().beginTransaction();
			dao.merge(clean);
			result="success";
			dao.getSession().beginTransaction().commit();
			dao.getSession().clear();
			dao.getSession().close();
		}catch(Exception e){
			e.printStackTrace();
		}	
		return "success";
	}
	
	
	public String delWeisheng() {
		LivingCleanDAO dao=new LivingCleanDAO();
		LivingClean clean=new LivingClean();
		clean.setId(id);
		try{
			
			dao.getSession().beginTransaction();
			dao.delete(clean);
			result="success";
			dao.getSession().beginTransaction().commit();
			dao.getSession().clear();
			dao.getSession().close();
		}catch(Exception e){
			e.printStackTrace();
		}	
		return "success";
	}
		
	public String addWeisheng() {
		LivingCleanDAO dao=new LivingCleanDAO();
		LivingClean clean=new LivingClean();
		clean.setSushelou(sushelou);
		clean.setGoodlevel(goodlevel);
		clean.setMidlevel(midlevel);
		clean.setBadlevel(badlevel);
		clean.setId(id);
		try{
			
			dao.getSession().beginTransaction();
			dao.save(clean);
			result="success";
			dao.getSession().beginTransaction().commit();
			dao.getSession().clear();
			dao.getSession().close();
		}catch(Exception e){
			e.printStackTrace();
		}	
		return "success";
	}
}
