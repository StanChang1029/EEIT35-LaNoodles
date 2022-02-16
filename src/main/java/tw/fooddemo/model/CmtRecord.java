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
@Table(name = "CMTRECORD")
@Component
public class CmtRecord implements Serializable {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id; 

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
	
	@Column(name = "status")
	private int status;
	
	@Column(name = "comment_id")
	private int comment_id;
	
	@Column(name = "modified_time")
	private Date modified_time;
	
	public CmtRecord() {
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
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getComment_id() {
		return comment_id;
	}
	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}
	public Date getModified_time() {
		return modified_time;
	}
	public void setModified_time(Date modified_time) {
		this.modified_time = modified_time;
	}
	public CmtRecord(Date comment_time, String name, int member_id, String meal, int score
			 		 , String comment_word, byte[] photo, int status, int comment_id , Date modified_time) {
		super();
		this.comment_time = comment_time;
		this.name = name;
		this.member_id = member_id;
		this.meal = meal;
		this.score = score;
		this.comment_word = comment_word;
		this.photo = photo;
		this.status = status;
		this.comment_id = comment_id;
		this.modified_time = modified_time;
	}
}