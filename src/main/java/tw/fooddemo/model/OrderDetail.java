package tw.fooddemo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "orderdetail")
@Component
public class OrderDetail {
	
	@Id @Column(name="ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "ORDERID")
	private int orderid;
	
	@Column(name = "NAME")
	private String name;
	
	@Column(name = "PRICE")
	private int price;
	
	@Column(name = "QUANTITY")
	private int quantity;
	
	@Column(name = "PSUM")
	private int psum;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getPsum() {
		return psum;
	}

	public void setPsum(int psum) {
		this.psum = psum;
	}
	
}
