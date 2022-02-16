package tw.fooddemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import tw.fooddemo.model.Member;
import tw.fooddemo.model.MemberProfile;
import tw.fooddemo.service.MemberService;

@RestController
public class MemberCrudController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping(path = "/member")
	public List<Member> getAllMember() {
		return memberService.getAllMember();
	}
	
	@GetMapping(path = "/member/{memberAccount}")
	public Member getMemberByAccount(@PathVariable("memberAccount") String memberAccount) {
		return memberService.getMemberByAccount(memberAccount);
	}

	@GetMapping(path = "/memberprofile")
	public List<MemberProfile> getAllMemberProfile() {
		return memberService.getAllMemberProfile();
	}
	
	@GetMapping(path = "/membernum")
	public int getNumberOfAllMember() {
		return memberService.queryNumberOfAllMember();
	}
	
	@GetMapping(path = "/membertypenum")
	public List<Integer> queryNumberOfMemberType() {
		return memberService.queryNumberOfMemberType();
	}
	
	@PostMapping(path = "/member")
	public Member insertOneMember(@RequestBody Member member) {
		System.out.println("member:"+member);
		System.out.println("memberProfile:"+member.getMemberProfileId());
		return memberService.insertOneMember(member);
	}
	
	@PostMapping(path = "/member/admin")
	public Member insertOneMemberAdmin(@RequestBody Member member) {
		
		String memberPassword = member.getMemberPassword();
		String memberEncodePwd = new BCryptPasswordEncoder().encode(memberPassword);
		member.setMemberPassword(memberEncodePwd);
		
		System.out.println("member:"+member);
		System.out.println("memberProfile:"+member.getMemberProfileId());
		return memberService.insertOneMember(member);
	}
	
	@PutMapping(path = "/member")
	public Member updateMember(@RequestBody Member member) {
		return memberService.updateMember(member);
	}
	
	@PutMapping(path = "/memberprofile")
	public MemberProfile updateMemberProfile(@RequestBody MemberProfile memberProfile) {
		return memberService.updateMemberProfile(memberProfile);
	}
	
	@DeleteMapping(path = "/member/{memberId}")
	public String deleteMemberByMemberId(@PathVariable("memberId") int memberId) {
		memberService.deleteMemberByMemberId(memberId);
		return "Delete OK";
	}
	
	@PutMapping(path = "/password")
	public String updateMemberPasswordWithOldPassword(
				@RequestParam("memberAccount") String memberAccount,
				@RequestParam("oldPassword") String oldPassword,
				@RequestParam("newPassword") String newPassword
			) {
		
		boolean success = memberService.updateMemberPassword(memberAccount, oldPassword, newPassword);
		
		System.out.println("updatePassword:"+success);
		
		if(success) {
			return "success";
		}
		return "failed";
	}
}
