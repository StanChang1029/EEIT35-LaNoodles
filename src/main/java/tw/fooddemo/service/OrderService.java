package tw.fooddemo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.fooddemo.model.Order;
import tw.fooddemo.model.OrderRepository;

@Service
@Transactional
public class OrderService {
	
	@Autowired
	private OrderRepository oRepo;

	public Order insert(Order order) {
		return oRepo.save(order);
	}
	
	public Order update(Order order) {
		return oRepo.save(order);
	}
	
	public List<Order> findByOrderId(String userid) {
		return oRepo.findByUserId(userid);
	}
	
	public Order findById(int id) {
		Optional<Order> op1 = oRepo.findById(id);
		
		if(op1.isPresent()) {
			return op1.get();
		}
		
		return null;
	}
	
	public List<Order> findByUserId(String userid) {
		return oRepo.findByUserId(userid);
	}
	
	
	public List<Order> findAll(){
		return oRepo.findAll();
	}
	
	public void deleteById(Integer id) {
		oRepo.deleteById(id);
	}
}
