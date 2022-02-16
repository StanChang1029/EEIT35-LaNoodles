package tw.fooddemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.fooddemo.model.OrderDetail;
import tw.fooddemo.service.OrderDetailService;

@Controller
@RequestMapping(path = "/orderdetail")
public class OrderDetailController {
	
	@Autowired
	private OrderDetailService odService;
	
	@GetMapping("/confim.controller")
	public String processConfimAction() {
		return "/cart/confirm";
	}
	
	@GetMapping("/details.controller")
	public String processDetailsAction() {
		return "/cart/Details";
	}
	
	@GetMapping("/customerdetails.controller")
	public String processCustomerDetailsAction() {
		return "/cart/CustomerDetails";
	}
	
	@PostMapping("/orderdetailinsert.controller") @ResponseBody
	public OrderDetail processOrderDetailDetailInsert(@RequestBody OrderDetail od) {
		return odService.insert(od);
	}
	
	@GetMapping("/orderdetailbyorderid.controller") @ResponseBody
	public List<OrderDetail> processOrderDetailByOrderIdAction(@RequestParam("orderid") Integer orderid) {
		return odService.findByOrderId(orderid);
	}
	
}
