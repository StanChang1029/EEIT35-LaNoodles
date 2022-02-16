package tw.fooddemo.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="foodstock")
@Component
public class FoodBeanStock implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@Column(name = "Date")
	private Date date;
	@Column(name = "BOS")
	private String bos;
	@Column(name = "greenonion")
	private int greenonion;
	@Column(name = "garlic")
	private int garlic;
	@Column(name = "egg")
	private int egg;
	@Column(name = "kelp")
	private int kelp;
	@Column(name = "seasoningpack")
	private int seasoningpack;
	@Column(name = "alkalinewater")
	private int alkalinewater;
	@Column(name = "miso")
	private int miso;
	@Column(name = "salt")
	private int salt;
	@Column(name = "sesame")
	private int sesame;
	@Column(name = "mushroom")
	private int mushroom;
	@Column(name = "onion")
	private int onion;
	@Column(name = "chinesecabbage")
	private int chinesecabbage;
	@Column(name = "bambooshoots")
	private int bambooShoots;
	@Column(name = "noodle")
	private int noodle;
	@Column(name = "beefbone")
	private int beefBone;
	@Column(name = "porkbone")
	private int porkBone;
	@Column(name = "beef")
	private int beef;
	@Column(name = "pork")
	private int pork;

	public FoodBeanStock() {
	}

	public FoodBeanStock(Date date,String bos ,int greenonion, int garlic, int egg, int kelp,int seasoningpack,int alkalinewater,int miso,int salt,int sesame,int mushroom,
			int onion,int chinesecabbage,int bambooShoots,int noodle,int beefBone,int porkBone,int beef,int pork) {

			this.date = date;
			this.bos=bos;
			this.greenonion = greenonion;
			this.garlic = garlic;
			this.egg = egg;
			this.kelp = kelp;
			this.seasoningpack = seasoningpack;
			this.alkalinewater = alkalinewater;
			this.miso = miso;
			this.salt = salt;
			this.sesame = sesame;
			this.mushroom = mushroom;
			this.onion = onion;
			this.chinesecabbage = chinesecabbage;
			this.bambooShoots = bambooShoots;
			this.noodle = noodle;
			this.beefBone = beefBone;
			this.porkBone = porkBone;
			this.beef = beef;
			this.pork = pork;
	
		
	}

	public FoodBeanStock(int id, Date date,String bos , int greenonion, int garlic, int egg, int kelp,int seasoningpack,int alkalinewater,int miso,int salt,int sesame,int mushroom,
			int onion,int chinesecabbage,int bambooShoots,int noodle,int beefBone,int porkBone,int beef,int pork) {
		this.id = id;
		this.date = date;
		this.bos=bos;
		this.greenonion = greenonion;
		this.garlic = garlic;
		this.egg = egg;
		this.kelp = kelp;
		this.seasoningpack = seasoningpack;
		this.alkalinewater = alkalinewater;
		this.miso = miso;
		this.salt = salt;
		this.sesame = sesame;
		this.mushroom = mushroom;
		this.onion = onion;
		this.chinesecabbage = chinesecabbage;
		this.bambooShoots = bambooShoots;
		this.noodle = noodle;
		this.beefBone = beefBone;
		this.porkBone = porkBone;
		this.beef = beef;
		this.pork = pork;			
	}
	
	

	public String getBos() {
		return bos;
	}

	public void setBos(String bos) {
		this.bos = bos;
	}

	public int getGreenonion() {
		return greenonion;
	}

	public void setGreenonion(int greenonion) {
		this.greenonion = greenonion;
	}

	public int getGarlic() {
		return garlic;
	}

	public void setGarlic(int garlic) {
		this.garlic = garlic;
	}

	public int getEgg() {
		return egg;
	}

	public void setEgg(int egg) {
		this.egg = egg;
	}

	public int getKelp() {
		return kelp;
	}

	public void setKelp(int kelp) {
		this.kelp = kelp;
	}

	public int getSeasoningpack() {
		return seasoningpack;
	}

	public void setSeasoningpack(int seasoningpack) {
		this.seasoningpack = seasoningpack;
	}

	public int getAlkalinewater() {
		return alkalinewater;
	}

	public void setAlkalinewater(int alkalinewater) {
		this.alkalinewater = alkalinewater;
	}

	public int getMiso() {
		return miso;
	}

	public void setMiso(int miso) {
		this.miso = miso;
	}

	public int getSalt() {
		return salt;
	}

	public void setSalt(int salt) {
		this.salt = salt;
	}

	public int getSesame() {
		return sesame;
	}

	public void setSesame(int sesame) {
		this.sesame = sesame;
	}

	public int getMushroom() {
		return mushroom;
	}

	public void setMushroom(int mushroom) {
		this.mushroom = mushroom;
	}

	public int getOnion() {
		return onion;
	}

	public void setOnion(int onion) {
		this.onion = onion;
	}

	public int getChinesecabbage() {
		return chinesecabbage;
	}

	public void setChinesecabbage(int chinesecabbage) {
		this.chinesecabbage = chinesecabbage;
	}

	public int getBambooShoots() {
		return bambooShoots;
	}

	public void setBambooShoots(int bambooShoots) {
		this.bambooShoots = bambooShoots;
	}

	public int getNoodle() {
		return noodle;
	}

	public void setNoodle(int noodle) {
		this.noodle = noodle;
	}

	public int getBeefBone() {
		return beefBone;
	}

	public void setBeefBone(int beefBone) {
		this.beefBone = beefBone;
	}

	public int getPorkBone() {
		return porkBone;
	}

	public void setPorkBone(int porkBone) {
		this.porkBone = porkBone;
	}

	public int getBeef() {
		return beef;
	}

	public void setBeef(int beef) {
		this.beef = beef;
	}

	public int getPork() {
		return pork;
	}

	public void setPork(int pork) {
		this.pork = pork;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}



	public Date getDate() {
		return date;
	}

	public void date(Date date) {
		this.date = date;
	}


	
}
