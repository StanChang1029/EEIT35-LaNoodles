package tw.fooddemo.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.fooddemo.model.Member;
import tw.fooddemo.model.MemberProfile;
import tw.fooddemo.model.MemberProfileRepository;
import tw.fooddemo.model.MemberRepository;

@Service
@Transactional
public class MemberService {

	@Autowired
	private MemberRepository memberRepository;
	
	@Autowired
	private MemberProfileRepository memberProfileRepository;
	
	@PostConstruct
	private void init() {
		System.out.println("MemberService init");
		
		String adminAccount = "admin";
		
		if(getMemberByAccount(adminAccount)==null) {
			String adminEncodePwd = new BCryptPasswordEncoder().encode("admin");
			Member admin = new Member(adminAccount,adminEncodePwd,"0");
			
			MemberProfile adminProfile = new MemberProfile();
			adminProfile.setMemberAccount(adminAccount);
			adminProfile.setMemberName("管理員");
			adminProfile.setMemberEmail("admin@admin.com");
			adminProfile.setMemberPhone("0987-654-321");
			adminProfile.setMemberBirthday(new Date());
			admin.setMemberProfile(adminProfile);
			
			insertOneMember(admin);
			
			System.out.println("Create Member: "+adminAccount);
		}
		
		String memAccount = "eeit350402";
		
		if(getMemberByAccount(memAccount)==null) {

			int i;
			String[] memberArray = {"鄭喻文","李佳倫","李世麒","李銘捷"};
			for(i=0;i<4;i++) {
				int j = i+2;
				String memberAccount = "eeit35040"+j;
				String memberEncodePwd = new BCryptPasswordEncoder().encode("eeit35040"+j);
				Member member = new Member(memberAccount,memberEncodePwd);
				
				MemberProfile memberProfile = new MemberProfile();
				memberProfile.setMemberAccount(memberAccount);
				memberProfile.setMemberName(memberArray[i]);
				memberProfile.setMemberEmail("eeit35teamno4@gmail.com");
				memberProfile.setMemberPhone("0987-654-32"+i);
				memberProfile.setMemberBirthday(new Date());
				member.setMemberProfile(memberProfile);
				
				insertOneMember(member);
			}
			
			System.out.println("Create Member: "+memAccount);
		}
		
//		insertAllMember(copyMultiMember(50));
	}
	
	public List<Member> copyMultiMember(int n) {
		
		List<Member> members = new ArrayList<Member>();
		int i;
		for(i=1;i<=n;i++) {
			String id = String.format("%03d", i);
			String account = "test"+id;
			String testEncodePwd = new BCryptPasswordEncoder().encode(account);
			Member test = new Member(account,testEncodePwd);
			
			MemberProfile testProfile = new MemberProfile();
			testProfile.setMemberAccount(account);
			testProfile.setMemberName("測試員"+id);
			testProfile.setMemberEmail("test@test"+id+".com");
			testProfile.setMemberPhone("0987-654-"+id);
			testProfile.setMemberBirthday(new Date());
			test.setMemberProfile(testProfile);
			members.add(test);
		}
		return members;
	}
	
	
	public List<Member> getAllMember() {
		return memberRepository.findAll();
	}
	
	public List<MemberProfile> getAllMemberProfile() {
		return memberProfileRepository.findAll();
	}
	
	public Member getMemberByAccount(String memberAccount) {
		
		Optional<Member> optional = memberRepository.findByMemberAccount(memberAccount);
		
		if(optional.isEmpty()) {
			return null;
		}
		
		return optional.get();
	}
	
	public MemberProfile getMemberProfileByAccount(String memberAccount) {
		
		Optional<MemberProfile> optional = memberProfileRepository.findByMemberAccount(memberAccount);
		
		if(optional.isEmpty()) {
			return null;
		}
		
		return optional.get();
	}
	
	public Member insertOneMember(Member member) {
		return memberRepository.save(member);
	}
	
	public List<Member> insertAllMember(List<Member> members){
		return memberRepository.saveAll(members);
	}
	
	public Member updateMember(Member member) {
		return memberRepository.save(member);
	}
	
	public MemberProfile updateMemberProfile(MemberProfile memberProfile) {
		return memberProfileRepository.save(memberProfile);
	}
	
	public void deleteMemberByMemberId(int memberId) {
		memberRepository.deleteById(memberId);
	}
	
	public boolean updateMemberPassword(String memberAccount, String oldPassword, String newPassword) {
		
		Member member = getMemberByAccount(memberAccount);
		
		boolean checkPassword = new BCryptPasswordEncoder().matches(oldPassword, member.getMemberPassword());
		
		if(checkPassword) {
			String newEncodePwd = new BCryptPasswordEncoder().encode(newPassword);
			member.setMemberPassword(newEncodePwd);
			updateMember(member);
			return true;
		}
		return false;
	}
	
	public int  queryNumberOfAllMember() {
		return memberRepository.queryNumberOfAllMember();
	}
	
	public List<Integer>  queryNumberOfMemberType() {
		return memberRepository.queryNumberOfMemberType();
	}
	
	
	public String getRandomPassword() {
		
	    int randomN;
	    StringBuilder sb = new StringBuilder();
	    int i;
	    for (i = 0; i < 8; i++) {
	    	randomN = (int) ((Math.random() * 7) % 3);
	 
	      if (randomN == 1) { // 放數字
	        sb.append((int) ((Math.random() * 10) + 48));
	      } else if (randomN == 2) { // 放大寫英文
	        sb.append((char) (((Math.random() * 26) + 65)));
	      } else {// 放小寫英文
	        sb.append(((char) ((Math.random() * 26) + 97)));
	      }
	    }
	    
	    return sb.toString();
	}
	
	public String forgetMemberPassword(String memberAccount, String newPassword) {
		
		Member member = getMemberByAccount(memberAccount);
		
		String newEncodePwd = new BCryptPasswordEncoder().encode(newPassword);
		member.setMemberPassword(newEncodePwd);
		updateMember(member);
		
		return member.getMemberProfile().getMemberEmail();
	}
	
//	public String getRandomPassword() {
//		
//	    int randomN;
//	    StringBuilder sb = new StringBuilder();
//	    int i;
//	    for (i = 0; i < 8; i++) {
//	    	randomN = (int) ((Math.random() * 7) % 3);
//	 
//	      if (randomN == 1) { // 放數字
//	        sb.append((int) ((Math.random() * 10) + 48));
//	      } else if (randomN == 2) { // 放大寫英文
//	        sb.append((char) (((Math.random() * 26) + 65)));
//	      } else {// 放小寫英文
//	        sb.append(((char) ((Math.random() * 26) + 97)));
//	      }
//	    }
//	    
//	    return sb.toString();
//	}
}
