package report;

/**
 * Report entity. @author MyEclipse Persistence Tools
 */

public class Report implements java.io.Serializable {

	// Fields

	private Integer id;
	private String sushelou;
	private String susheId;
	private String reportinfo;

	// Constructors

	/** default constructor */
	public Report() {
	}

	/** minimal constructor */
	public Report(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public Report(Integer id, String sushelou, String susheId, String reportinfo) {
		this.id = id;
		this.sushelou = sushelou;
		this.susheId = susheId;
		this.reportinfo = reportinfo;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getSushelou() {
		return this.sushelou;
	}

	public void setSushelou(String sushelou) {
		this.sushelou = sushelou;
	}

	public String getSusheId() {
		return this.susheId;
	}

	public void setSusheId(String susheId) {
		this.susheId = susheId;
	}

	public String getReportinfo() {
		return this.reportinfo;
	}

	public void setReportinfo(String reportinfo) {
		this.reportinfo = reportinfo;
	}

}