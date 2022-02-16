package tw.fooddemo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "cart")
@Component
public class CartBean{
	
	@Id @Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer cId;
	
	@Column(name = "ACCOUNT")
	private String account;
	
	@Column(name = "SP_name")
	private String name;
	
	@Column(name = "SP_PRICE")
	private Integer cPrice;
	
	@Column(name = "BUY_NUM")
	private Integer num;
	
	@Column(name = "COUNT")
	private Integer count;

	public Integer getcId() {
		return cId;
	}

	public void setcId(Integer cId) {
		this.cId = cId;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getcPrice() {
		return cPrice;
	}

	public void setcPrice(Integer cPrice) {
		this.cPrice = cPrice;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}
	
}
