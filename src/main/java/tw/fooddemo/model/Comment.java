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
@Table(name = "comment")
@Component
public class Comment implements Serializable {

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
	
	public Comment() {
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

	public Comment(Date comment_time, String name, int member_id, String meal
			        , int score, String comment_word, byte[] photo) {
		super();
		this.comment_time = comment_time;
		this.name = name;
		this.member_id = member_id;
		this.meal = meal;
		this.score = score;
		this.comment_word = comment_word;
		this.photo = photo;
	}
}