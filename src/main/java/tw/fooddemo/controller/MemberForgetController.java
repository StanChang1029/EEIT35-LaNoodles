package tw.fooddemo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.fooddemo.model.Member;
import tw.fooddemo.model.MemberProfile;
import tw.fooddemo.service.MailService;
import tw.fooddemo.service.MemberService;

@Controller
@SessionAttributes(names = {"memberProfile"})
public class MemberForgetController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private MailService mailService;
	
	@GetMapping(path = "/forgetpassword")
	public String processForgetPage(Model model) {
		return "th/memberforget/forgetPassword.html";
	}
	
	@PostMapping(path = "/forgetpassword")
	@ResponseBody
	public String processForgetPassword(
			@RequestParam("memberAccount") String memberAccount,
			@RequestParam("memberEmail") String memberEmail) {
		
		MemberProfile memberProfile = memberService.getMemberProfileByAccount(memberAccount);
		if(memberEmail.equals(memberProfile.getMemberEmail())) {
			String newPassword = memberService.getRandomPassword();
			
			String memEmail = memberService.forgetMemberPassword(memberAccount,newPassword);
			
			//寄信
			mailService.sendMail(memEmail,newPassword);
			
			return "success";
		}else {
			return "fail";
		}
		

	}
}
