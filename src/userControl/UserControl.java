package userControl;


import hi.Notice;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import user.User;
import user.UserDAO;

public class UserControl extends ActionSupport {
	private int id;
	private String username;
	private String password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String result="error";
	
	public String loginCheck(){
		UserDAO dao=new UserDAO();
		User user=new User();
		user.setUsername(username);
		user.setPassword(password);
		dao.getSession().beginTransaction();
		List<User>  list = new ArrayList<User>();
		list=dao.findAll();
		
		for(int i=0;i<list.size();i++)
		{
			String username1=list.get(i).getUsername();
			String password1=list.get(i).getPassword();
			if(username1.equals(username)&&password1.equals(password))
			{
				result="success";
				HttpSession session = ServletActionContext.getRequest().getSession(); 
				session.setAttribute("nowUser", username); 
				break;
			}
		}
		
		return "success";
	}
	public String check(){
		result="123";
		return "success";
	}
	
}
