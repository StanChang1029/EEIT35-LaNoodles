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
@Table(name = "Foodquantity")
@Component
public class FoodBeanquantity implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@Column(name = "name")
	private String name;
	@Column(name = "img")
	private String img;
	@Column(name = "quantity")
	private int quantity;
	@Column(name = "namech")
	private String namech;
	@Column(name = "low")
	private int low;
	@Column(name = "classification")
	private String classification;
	@Column(name = "itn")
	private String itn;

	

	public FoodBeanquantity() {
	}

	public FoodBeanquantity(String name, String img, int quantity,int low, String namech,String classification,String itn) {

		this.name=name;
		this.img=img;
		this.quantity=quantity;
		this.low=low;
		this.namech=namech;	
		this.classification=classification;
		this.itn=itn;
		
	}

	public FoodBeanquantity(int id, String name, String img, int quantity,int low,String namech,String classification,String itn) {
		this.id = id;
		this.name=name;
		this.img=img;
		this.quantity=quantity;	
		this.low=low;
		this.namech=namech;
		this.classification=classification;
		this.itn=itn;
	}

	public String getClassification() {
		return classification;
	}

	public void setClassification(String classification) {
		this.classification = classification;
	}

	public String getNamech() {
		return namech;
	}

	public void setNamech(String namech) {
		this.namech = namech;
	}

	public int getLow() {
		return low;
	}

	public void setLow(int low) {
		this.low = low;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getItn() {
		return itn;
	}

	public void setItn(String itn) {
		this.itn = itn;
	}	
	

}