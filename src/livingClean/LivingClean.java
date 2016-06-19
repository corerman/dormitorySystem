package livingClean;

/**
 * LivingClean entity. @author MyEclipse Persistence Tools
 */

public class LivingClean implements java.io.Serializable {

	// Fields

	private Integer id;
	private String sushelou;
	private String goodlevel;
	private String midlevel;
	private String badlevel;

	// Constructors

	/** default constructor */
	public LivingClean() {
	}

	/** minimal constructor */
	public LivingClean(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public LivingClean(Integer id, String sushelou, String goodlevel,
			String midlevel, String badlevel) {
		this.id = id;
		this.sushelou = sushelou;
		this.goodlevel = goodlevel;
		this.midlevel = midlevel;
		this.badlevel = badlevel;
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

	public String getGoodlevel() {
		return this.goodlevel;
	}

	public void setGoodlevel(String goodlevel) {
		this.goodlevel = goodlevel;
	}

	public String getMidlevel() {
		return this.midlevel;
	}

	public void setMidlevel(String midlevel) {
		this.midlevel = midlevel;
	}

	public String getBadlevel() {
		return this.badlevel;
	}

	public void setBadlevel(String badlevel) {
		this.badlevel = badlevel;
	}

}