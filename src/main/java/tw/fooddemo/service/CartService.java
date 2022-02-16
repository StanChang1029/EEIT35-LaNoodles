package tw.fooddemo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.fooddemo.model.CartBean;
import tw.fooddemo.model.CartRepository;

@Service
@Transactional
public class CartService {

	@Autowired
	private CartRepository cRepo;
	
	public CartBean insert(CartBean cart) {
		return cRepo.save(cart);
	}
	
	public CartBean update(CartBean bird) {
		return cRepo.save(bird);
	}
	
	public List<CartBean> findByAccount(String account) {
		return cRepo.findByAccount(account);
	}
	

	public CartBean findByAccountName(String account, String name) {
		Optional<CartBean> op1 = cRepo.findByAccountName(account, name);
		
		if(op1.isPresent()) {
			return op1.get();
		}
		
		return null;
	}
	
	public List<CartBean> findAll(){
		return cRepo.findAll();
	}
	
	public void deleteById(Integer id) {
		cRepo.deleteById(id);
	}
	
	public void delByAccount(String account) {
		cRepo.delByAccount(account);
	}
	
}
