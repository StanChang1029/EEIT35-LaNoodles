package tw.fooddemo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.fooddemo.model.MemberProfile;
import tw.fooddemo.service.MemberService;

@Controller
@RequestMapping("/userprofile")
@SessionAttributes(names = {"memberProfile"})
public class MemberProfileController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping(path = "/profile")
	public String processMemberProfilePage(Model model) {
		return "th/member/MemberProfile.html";
	}
	
	
	@GetMapping(path = "/profileupdate")
	public String processMemberProfileUpdatePage(Model model) {
		return "th/member/MemberProfileUpdate.html";
	}
	
	@GetMapping(path = "/profileupdate/success")
	public String processMemberProfileUpdateSuccseePage(Model model) {
		
		MemberProfile preMemberProfile = (MemberProfile)model.getAttribute("memberProfile");
		
		MemberProfile memberProfile = memberService.getMemberProfileByAccount(preMemberProfile.getMemberAccount());
		
		model.addAttribute("memberProfile",memberProfile);
		
		return "redirect:/userprofile/profile";
	}
}
