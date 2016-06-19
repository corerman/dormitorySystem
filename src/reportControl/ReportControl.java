package reportControl;

import java.util.ArrayList;
import java.util.List;

import report.Report;
import report.ReportDAO;

import livingClean.LivingClean;
import livingClean.LivingCleanDAO;

import com.opensymphony.xwork2.ActionSupport;


public class ReportControl extends ActionSupport {
	private String id;
	private String sushelou;
	private String susheId;
	private String reportinfo;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSushelou() {
		return sushelou;
	}
	public void setSushelou(String sushelou) {
		this.sushelou = sushelou;
	}
	public String getSusheId() {
		return susheId;
	}
	public void setSusheId(String susheId) {
		this.susheId = susheId;
	}
	public String getReportinfo() {
		return reportinfo;
	}
	public void setReportinfo(String reportinfo) {
		this.reportinfo = reportinfo;
	}
	
	public String result="success";
	public  String addReportInfo(){
		ReportDAO dao=new ReportDAO();
		Report newinfo=new Report();
		newinfo.setSushelou(sushelou);
		newinfo.setSusheId(susheId);
		newinfo.setReportinfo(reportinfo);
		try{
			dao.getSession().beginTransaction();
			dao.save(newinfo);	
			dao.getSession().beginTransaction().commit();
			dao.getSession().close();
			
		}catch(Exception e){
			e.printStackTrace();
		}	
		
		return "success";
	}
}
