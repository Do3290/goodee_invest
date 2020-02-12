package logic;

import java.util.Date;

import org.hibernate.validator.constraints.NotEmpty;

public class Ms {
	private int ms_num;
	private int project_num;
	@NotEmpty(message="제목을 입력하세요.")
	private String ms_title;
	private	String ms_category;
	private String id;
	@NotEmpty(message="받는 사람의 아이디를 작성하세요.")
	private String rec_id;
	@NotEmpty(message="내용을 입력하세요.")
	private String ms_content;
	private Date send_date;
	private int ms_view;
	
	public int getMs_num() {
		return ms_num;
	}
	public void setMs_num(int ms_num) {
		this.ms_num = ms_num;
	}
	public int getProject_num() {
		return project_num;
	}
	public void setProject_num(int project_num) {
		this.project_num = project_num;
	}
	public String getMs_title() {
		return ms_title;
	}
	public void setMs_title(String ms_title) {
		this.ms_title = ms_title;
	}
	public String getMs_category() {
		return ms_category;
	}
	public void setMs_category(String ms_category) {
		this.ms_category = ms_category;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRec_id() {
		return rec_id;
	}
	public void setRec_id(String rec_id) {
		this.rec_id = rec_id;
	}
	public String getMs_content() {
		return ms_content;
	}
	public void setMs_content(String ms_content) {
		this.ms_content = ms_content;
	}
	public Date getSend_date() {
		return send_date;
	}
	public void setSend_date(Date send_date) {
		this.send_date = send_date;
	}
	public int getMs_view() {
		return ms_view;
	}
	public void setMs_view(int ms_view) {
		this.ms_view = ms_view;
	}
	@Override
	public String toString() {
		return "Ms [ms_num=" + ms_num + ", project_num=" + project_num + ", ms_title=" + ms_title + ", ms_category="
				+ ms_category + ", id=" + id + ", rec_id=" + rec_id + ", ms_content=" + ms_content + ", send_date="
				+ send_date + ", ms_view=" + ms_view + "]";
	}
}
