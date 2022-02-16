package tw.fooddemo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "menu")
@Component
public class ShopBean {

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer sId;

	@Column(name = "DISH")
	private String sName;

	@Column(name = "PRICE")
	private Integer sPrice;

	@Column(name = "ITEM")
	private String info;

	@Column(name = "PHOTO")
	private String sPic;

	@Column(name = "QUANTITY")
	private String sQuantity;
	
	public Integer getsId() {
		return sId;
	}

	public void setsId(Integer sId) {
		this.sId = sId;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public Integer getsPrice() {
		return sPrice;
	}

	public void setsPrice(Integer sPrice) {
		this.sPrice = sPrice;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getsPic() {
		return sPic;
	}

	public void setsPic(String sPic) {
		this.sPic = sPic;
	}
	
	public String getsQuantity() {
		return sQuantity;
	}

	public void setsQuantity(String sQuantity) {
		this.sQuantity = sQuantity;
	}

}
