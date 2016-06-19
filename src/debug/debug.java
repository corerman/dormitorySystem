package debug;
import java.util.*;

import hi.Notice;
import hi.NoticeDAO;


public class debug {
	public static void main(String[] args)
	{
		NoticeDAO dao=new NoticeDAO();
		List<Notice> list = new ArrayList<Notice>();
		dao.getSession().beginTransaction();
		list=dao.findAll();
		 for(Notice cows:list){
			 System.out.println(cows.getTitle());
		 }
	}
	
}
