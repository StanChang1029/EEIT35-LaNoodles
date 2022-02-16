package tw.fooddemo.service;

import java.util.List;
import java.util.Optional;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.fooddemo.model.FoodBeanStock;
import tw.fooddemo.model.FoodBeanquantity;
import tw.fooddemo.model.FoodRepositoryStock;
import tw.fooddemo.model.FoodRepositoryStockAll;



@Service
@Transactional
public class FoodServiceStock {
	@Autowired
    private FoodRepositoryStock fRestock;
	
	@Autowired
    private FoodRepositoryStockAll fRestockall;
    
	public FoodBeanStock insert(FoodBeanStock food) {
		return fRestock.save(food);
	}
	
	public List<FoodBeanStock> getAllFoodDate() {
		return fRestock.findAll();
	}
	
	public FoodBeanquantity query(String food) {
		return fRestockall.findbyname(food);
	}
	
	public FoodBeanquantity updata(FoodBeanquantity food) {
		return fRestockall.save(food);
	}
	public List<String> selectAllName() {
		return fRestockall.findAllname();
	}
	
	public List<FoodBeanquantity> getAllFoodDateAll() {
		return fRestockall.findAll();
	}
	
	public List<FoodBeanStock> getAllFoodDatesingle() {
		return fRestock.findAll();
	}
	
	public List findByDateBetween(String date1,String date2) {
		return fRestock.findByDateBetween(date1,date2);
	}
}
