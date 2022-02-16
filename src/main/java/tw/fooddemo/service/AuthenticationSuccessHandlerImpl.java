package tw.fooddemo.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import tw.fooddemo.model.Member;
import tw.fooddemo.model.MemberProfile;

@Component
public class AuthenticationSuccessHandlerImpl implements AuthenticationSuccessHandler {

	@Autowired
	private MemberService memberService;
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {

		String username = authentication.getName();
		
//		System.out.println("login success, username:"+username);

		MemberProfile memberProfile  = memberService.getMemberProfileByAccount(username);
		
		System.out.println("login success, memberProfile:"+memberProfile);
		request.getSession().setAttribute("memberProfile", memberProfile);
		
		Member member  = memberService.getMemberByAccount(username);
		System.out.println("login success, member type:"+member.getMemberType());
		request.getSession().setAttribute("memberType", member.getMemberType());
		
		
//		response.sendRedirect("/login/welcome");
		response.sendRedirect("/home");
	}

	
}
