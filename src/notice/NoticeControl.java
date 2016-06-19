package notice;

import hi.Notice;
import hi.NoticeDAO;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class NoticeControl extends ActionSupport {
	public static String result;
	private int id;
	private static int listCount=0;


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
	public static List<Notice> searchAll()
	{
		NoticeDAO dao=new NoticeDAO();
		List<Notice>  list = new ArrayList<Notice>();
		dao.getSession().beginTransaction();
		list=dao.findAll();	
		listCount=list.size();
	//	System.out.println(listCount);
		return list;
	}
	

	
	public String getNoticeTitleFromBackId()
	{
		List<Notice> list = new ArrayList<Notice>();
		list=searchAll();
		//setId(2);
		result=list.get(listCount-id).getTitle();
		//先调用setId 在调用此函数
		 
		return "success";
	}
	public String getNoticeContentFromBackId()
	{
		List<Notice> list = new ArrayList<Notice>();
		list=searchAll();
		
		result=list.get(listCount-id).getContent();
		//先调用setId 在调用此函数
		 
		return "success";
	}
}
