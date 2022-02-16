package tw.fooddemo.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "Food")
@Component
public class FoodBean implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@Column(name = "name")
	private String name;
	@Column(name = "date")
	private String date;
	@Column(name = "time")
	private String time;
	@Column(name = "phone")
	private String phone;
	@Column(name = "quantity")
	private int quantity;
	@Column(name = "mail")
	private String mail;

	public FoodBean() {
	}

	public FoodBean(String pName, String pDate, String pTime, String pPhone, int pQuantity,String pMail) {
//		super();
		this.name = pName;
		this.date = pDate;
		this.time = pTime;
		this.phone = pPhone;
		this.quantity = pQuantity;
		this.mail = pMail;
	}

	public FoodBean(int pId, String pName, String pDate, String pTime, String pPhone, int pQuantity,String pMail) {
		this.id = pId;
		this.name = pName;
		this.date = pDate;
		this.time = pTime;
		this.phone = pPhone;
		this.quantity = pQuantity;
		this.mail = pMail;		
	}
	
	public FoodBean(String pDate,String pTime,int pQuantity) {
		this.date = pDate;
		this.time = pTime;
		this.quantity = pQuantity;
	}
	
	

	public int getId() {
		return id;
	}

	public void setId(int pId) {
		this.id = pId;
	}

	public String getName() {
		return name;
	}

	public void setName(String pName) {
		this.name = pName;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String pDate) {
		this.date = pDate;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String pTime) {
		this.time = pTime;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String pPhone) {
		this.phone = pPhone;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int pQuantity) {
		this.quantity = pQuantity;
	}
	public String getMail() {
		return mail;
	}

	public void setMail(String pMail) {
		this.mail = pMail;
	}

}
