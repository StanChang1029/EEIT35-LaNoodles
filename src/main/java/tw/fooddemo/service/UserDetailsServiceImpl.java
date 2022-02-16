package tw.fooddemo.service;

import java.util.Collection;
import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import tw.fooddemo.model.Member;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private MemberService memberService;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		Member member = memberService.getMemberByAccount(username);
		
		//用集合及一個helper class來取得user的擁有的role
        Collection<? extends GrantedAuthority> authorities=  UserAuthorityUtils.createAuthorities(member);
		
		return new User(member.getMemberAccount(), member.getMemberPassword(), authorities);
//		return new User(member.getMemberAccount(), member.getMemberPassword(), Collections.emptyList());
	}

}
