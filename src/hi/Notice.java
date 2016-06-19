package hi;

import java.util.Date;

/**
 * Notice entity. @author MyEclipse Persistence Tools
 */

public class Notice implements java.io.Serializable {

	// Fields

	private Integer id;
	private String title;
	private String content;
	private Date publicdate;

	// Constructors

	/** default constructor */
	public Notice() {
	}

	/** minimal constructor */
	public Notice(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public Notice(Integer id, String title, String content, Date publicdate) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.publicdate = publicdate;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getPublicdate() {
		return this.publicdate;
	}

	public void setPublicdate(Date publicdate) {
		this.publicdate = publicdate;
	}

}