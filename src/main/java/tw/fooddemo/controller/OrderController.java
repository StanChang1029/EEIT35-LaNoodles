package tw.fooddemo.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.fooddemo.model.Order;
import tw.fooddemo.service.OrderService;

@Controller
@RequestMapping(path = "/order")
public class OrderController {
	
	@Autowired
	private OrderService oService;
	
	@GetMapping("/orderrecord.controller")
	public String processOrderAction() {
		return "/cart/OrderRecord";
	}
	
	@GetMapping("/ordercustomerorder.controller")
	public String processCustomerOrderAction() {
		return "/cart/CustomerOrder";
	}
	
	@PostMapping("/orderinsert.controller") @ResponseBody
	public Order processOrderInsert(@RequestBody Order order) {
		order.setOdate(new Date());
		return oService.insert(order);
	}
	
	@PostMapping("/orderbyuserid.controller") @ResponseBody
	public List<Order> processUserByIdAction(@RequestParam("userid") String userid) {
		return oService.findByUserId(userid);
	}
	
	@PostMapping("/orderbyid.controller") @ResponseBody
	public Order processOrderByIdAction(@RequestParam("oid") int oid) {
		return oService.findById(oid);
	}
	
	@PostMapping("/orderall.controller") @ResponseBody
	public List<Order> processOrderAllAction(){
		return oService.findAll();
	}
	
	@PostMapping("/orderdeletebyid.controller") @ResponseBody
	public String orderDeleteIdAction(@RequestParam("oid") Integer oid) {
		oService.deleteById(oid);
		return "/cart/OrderRecord";
	}
	
}
