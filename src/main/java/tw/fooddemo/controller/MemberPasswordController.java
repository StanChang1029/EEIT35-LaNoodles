package tw.fooddemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/userpassword")
@SessionAttributes(names = {"memberProfile"})
public class MemberPasswordController {

	@GetMapping(path = "/passwordupdate")
	public String processPasswordUpdatePage(Model model) {
		return "th/password/passwordupdate";
	}
	
	@GetMapping(path = "/success")
	public String processSuccessPage() {
		return "th/password/success";
	}
}
