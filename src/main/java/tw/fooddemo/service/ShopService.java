package tw.fooddemo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.fooddemo.model.ShopBean;
import tw.fooddemo.model.ShopRepository;

@Service
@Transactional
public class ShopService {
	
	@Autowired
	private ShopRepository sRepo;
	
	public ShopBean findById(int id) {
		Optional<ShopBean> op1 = sRepo.findById(id);
		
		if(op1.isPresent()) {
			return op1.get();
		}
		
		return null;
	}
	
	public List<ShopBean> findAll(){
		return sRepo.findAll();
	}
	
}
