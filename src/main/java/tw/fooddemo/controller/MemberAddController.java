package tw.fooddemo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.fooddemo.model.Member;
import tw.fooddemo.model.MemberProfile;

@Controller
@RequestMapping("/adduser")
//@SessionAttributes(names = {"memberAdd"})
public class MemberAddController {

	
	@GetMapping(path = "/account")
	public String processMemberAccountPage() {
		return "th/memberadd/MemberAccount.html";
	}
	
	@GetMapping(path = "/profile")
	public String processMemberProfilePage() {
		return "th/memberadd/MemberProfile.html";
	}
	
	@GetMapping(path = "/success")
	public String processSuccessPage() {
		return "th/memberadd/success.html";
	}
	
	@PostMapping(path = "/account/add")
	@ResponseBody
	public String processMemberAccountAdd(@RequestBody Member tempMember, Model model, HttpSession session) {
		
		String encodePwd = new BCryptPasswordEncoder().encode(tempMember.getMemberPassword());
		Member member = new Member(tempMember.getMemberAccount(),encodePwd);
		
		System.out.println(member);
		
		session.setAttribute("memberAdd",member);
		
		return "add member account";
	}
	
	@PostMapping(path = "/profile/add")
	@ResponseBody
	public Member processMemberProfileAdd(@RequestBody MemberProfile tempMemberProfile, HttpSession session) {
		
		Member member = (Member)session.getAttribute("memberAdd");
		
		MemberProfile memberProfile = new MemberProfile();
		memberProfile.setMemberAccount(member.getMemberAccount());
		memberProfile.setMemberName(tempMemberProfile.getMemberName());
		memberProfile.setMemberEmail(tempMemberProfile.getMemberEmail());
		memberProfile.setMemberPhone(tempMemberProfile.getMemberPhone());
		memberProfile.setMemberBirthday(tempMemberProfile.getMemberBirthday());
		
		member.setMemberProfile(memberProfile);
		
		session.removeAttribute("memberAdd");
//		session.setAttribute("memberAdd",member);
		
		return member;
	}
}
