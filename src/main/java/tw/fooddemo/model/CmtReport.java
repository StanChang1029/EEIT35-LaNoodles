package tw.fooddemo.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "CMTREPORT")
@Component
public class CmtReport implements Serializable {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "reportcomment_time")
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8") 
	private Date reportcomment_time;
	
	@Column(name = "reportname")
	private String reportname;
	
	@Column(name = "reportmember_id")
	private int reportmember_id;

	@Column(name = "reportcomment_word")
	private String reportcomment_word;
	
	@Column(name = "comment_id")
	private int comment_id;

	@Column(name = "comment_time")
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8") 
	private Date comment_time;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "member_id")
	private int member_id;

	@Column(name = "meal")
	private String meal;
	
	@Column(name = "score")
	private int score;
	
	@Column(name = "comment_word")
	private String comment_word;
	
	@Lob
	@Column(name = "photo")
	private byte[] photo;
	
	public CmtReport() {
	}
	
	public Date getReportcomment_time() {
		return reportcomment_time;
	}
	public void setReportcomment_time(Date reportcomment_time) {
		this.reportcomment_time = reportcomment_time;
	}
	public String getReportname() {
		return reportname;
	}
	public void setReportname(String reportname) {
		this.reportname = reportname;
	}
	public int getReportmember_id() {
		return reportmember_id;
	}
	public void setReportmember_id(int reportmember_id) {
		this.reportmember_id = reportmember_id;
	}
	public String getReportcomment_word() {
		return reportcomment_word;
	}
	public void setReportcomment_word(String reportcomment_word) {
		this.reportcomment_word = reportcomment_word;
	}
	public int getComment_id() {
		return comment_id;
	}
	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getComment_time() {
		return comment_time;
	}
	public void setComment_time(Date comment_time) {
		this.comment_time = comment_time;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}
	public String getMeal() {
		return meal;
	}
	public void setMeal(String meal) {
		this.meal = meal;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getComment_word() {
		return comment_word;
	}
	public void setComment_word(String comment_word) {
		this.comment_word = comment_word;
	}
	public byte[] getPhoto() {
		return photo;
	}
	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}

	public CmtReport(Date reportcomment_time, String reportname, int reportmember_id
			       , String reportcomment_word, int comment_id, Date comment_time, String name
			       , int member_id, String meal, int score, String comment_word, byte[] photo) {
		super();
		this.reportcomment_time = reportcomment_time;
		this.reportname = reportname;
		this.reportmember_id = reportmember_id;
		this.reportcomment_word = reportcomment_word;
		this.comment_id = comment_id;
		this.comment_time = comment_time;
		this.name = name;
		this.member_id = member_id;
		this.meal = meal;
		this.score = score;
		this.comment_word = comment_word;
		this.photo = photo;
	}
}