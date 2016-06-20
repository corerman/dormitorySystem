package notice;

import hi.Notice;
import hi.NoticeDAO;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class NoticeControl extends ActionSupport {
	public static String result;
	private int id;
	private String title;
	private String content;
	private String publicdate;
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPublicdate() {
		return publicdate;
	}

	public void setPublicdate(String publicdate) {
		this.publicdate = publicdate;
	}
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
	
	public String editNotices() throws ParseException{
		NoticeDAO dao=new NoticeDAO();
		Notice notice=new Notice();
		notice.setId(id);
		notice.setTitle(title);
		notice.setContent(content);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
		notice.setPublicdate(sdf.parse(publicdate)); //时间转换异常 注意
		try{
			
			dao.getSession().beginTransaction();
			dao.merge(notice);
			result="success";
			dao.getSession().beginTransaction().commit();
			dao.getSession().clear();
			dao.getSession().close();
		}catch(Exception e){
			e.printStackTrace();
		}	
		return "success";
	}
	
	
	public String delNotices() {
		NoticeDAO dao=new NoticeDAO();
		Notice notice=new Notice();
		notice.setId(id);
		try{
			//System.out.println(id+" "+title+"  "+content+"  "+publicdate);
			dao.getSession().beginTransaction();
			dao.delete(notice);
			result="success";
			dao.getSession().beginTransaction().commit();
			dao.getSession().clear();
			dao.getSession().close();
			
		}catch(Exception e){
			e.printStackTrace();
		}	
		return "success";
	}
	
	public String addNotices() throws ParseException {
		NoticeDAO dao=new NoticeDAO();
		Notice notice=new Notice();
		//notice.setId(id);
		notice.setTitle(title);
		notice.setContent(content);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
		notice.setPublicdate(sdf.parse(publicdate)); //时间转换异常 注意
		try{
			System.out.println(title+"  "+content+"  "+publicdate);
			dao.getSession().beginTransaction();
			dao.save(notice);
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
