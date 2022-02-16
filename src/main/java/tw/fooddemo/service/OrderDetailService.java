package tw.fooddemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.fooddemo.model.OrderDetail;
import tw.fooddemo.model.OrderDetailRepository;

@Service
@Transactional
public class OrderDetailService {

	@Autowired
	private OrderDetailRepository odRepo;
	
	public OrderDetail insert(OrderDetail order) {
		return odRepo.save(order);
	}
	
	public OrderDetail update(OrderDetail order) {
		return odRepo.save(order);
	}
	
	public List<OrderDetail> findByOrderId(Integer userid) {
		return odRepo.findByOrderId(userid);
	}
	
	public List<OrderDetail> findAll(){
		return odRepo.findAll();
	}
	
	public void deleteById(Integer id) {
		odRepo.deleteById(id);
	}
}
