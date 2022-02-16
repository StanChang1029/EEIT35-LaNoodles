package tw.fooddemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes(names = {"backstage"})
public class HomeController {

	
	@GetMapping(path = "/home")
	public String processHomePage(Model model) {
		
		model.addAttribute("backstage", 0);
		
		return "Homepages";
	}
	
	@GetMapping(path = "/admin/backstage")
	public String processBackstagePage(Model model) {
		
		model.addAttribute("backstage", 1);
		
		return "Homepages_back";
	}
}
