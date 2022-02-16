package tw.fooddemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/admin")
@SessionAttributes(names = {"memberProfile"})
public class MemberAdminController {

	@GetMapping(path = "/member")
	public String processMemberAccountPage(Model model) {
		return "th/memberadmin/MemberAdmin.html";
	}
}
