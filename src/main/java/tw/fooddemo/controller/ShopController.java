package tw.fooddemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.fooddemo.model.ShopBean;
import tw.fooddemo.service.ShopService;


@Controller
@RequestMapping(path = "/shop")
public class ShopController {
	
	@Autowired
	private ShopService sService;
	
	@GetMapping("/shop.controller")
	public String processShopAction() {
		return "/cart/index";
	}
	
	@PostMapping("/shopbyid.controller") @ResponseBody
	public ShopBean processShopByIdAction(@RequestParam("sid") int sid) {
		return sService.findById(sid);
	}
	
	@PostMapping("/shopall.controller") @ResponseBody
	public List<ShopBean> processShopAllAction(){
		return sService.findAll();
	}
	
}
