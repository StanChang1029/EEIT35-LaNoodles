package tw.fooddemo.service;

import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;

import tw.fooddemo.model.Member;

public class UserAuthorityUtils {

	private static final List<GrantedAuthority> ADMIN_ROLES = AuthorityUtils
			.createAuthorityList("ROLE_ADMIN", "ROLE_USER");
			//利用Spring提供的AuthorityUtils中createAuthorityList將該群組加入相關roles
			//以便用一個List變數就儲存所有roles
	private static final List<GrantedAuthority> USER_ROLES = AuthorityUtils
			.createAuthorityList("ROLE_USER");

	public static Collection<? extends GrantedAuthority> createAuthorities(
			Member member) {
		String memberType = member.getMemberType();
		if (memberType.equals("0")) { //memberType為0，即有管理者之role
			return ADMIN_ROLES;
		}
		return USER_ROLES; //否則則為一般使用者
	}
}
