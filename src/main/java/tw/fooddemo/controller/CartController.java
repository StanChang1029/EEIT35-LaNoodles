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

import tw.fooddemo.model.CartBean;
import tw.fooddemo.service.CartService;

@Controller
@RequestMapping(path = "/cart")
public class CartController {
	
	@Autowired
	private CartService cService;
	
	@GetMapping("/cart.controller")
	public String processCartAction1() {
		return "/cart/cart";
	}
	
	@PostMapping("/cartinsert.controller") @ResponseBody
	public CartBean processPoInsert(@RequestBody CartBean cart) {
		CartBean c = cService.findByAccountName(cart.getAccount(), cart.getName());
		
		if(c == null) {
			return cService.insert(cart);
		}
		return null;
	}
	
	@PostMapping("/cartupdate.controller") @ResponseBody
	public CartBean processUpdateAction(@RequestBody CartBean cart) {
		return cService.update(cart);
	}
	
	@PostMapping("/cartbyaccountname.controller") @ResponseBody
	public CartBean processCatrByAccountNameAction(@RequestParam("cAccount") String cAccount, @RequestParam("cName") String cName) {
		return cService.findByAccountName(cAccount, cName);
	}
	
	@GetMapping("/cartbyaccount.controller") @ResponseBody
	public List<CartBean> processCatrByAccountAction(@RequestParam("cAccount") String cAccount) {
		return cService.findByAccount(cAccount);
	}
	
	@PostMapping("/cartall.controller") @ResponseBody
	public List<CartBean> processCartAllAction(){
		return cService.findAll();
	}
	
	@PostMapping("/cartdeletebyid.controller") @ResponseBody
	public String cartDeleteIdAction(@RequestParam("cid") Integer cid) {
		cService.deleteById(cid);
		return "/cart/cart";
	}
	
	@GetMapping("/cartdeletebyall.controller")
	public String processDeleteAllAction(@RequestParam("cAccount") String cAccount) {
		cService.delByAccount(cAccount);
		return "/cart/cart";
	}
	
}
