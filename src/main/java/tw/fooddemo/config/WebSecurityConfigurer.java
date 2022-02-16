package tw.fooddemo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import tw.fooddemo.service.AuthenticationSuccessHandlerImpl;
import tw.fooddemo.service.UserDetailsServiceImpl;

@EnableWebSecurity
public class WebSecurityConfigurer extends WebSecurityConfigurerAdapter {

	@Autowired
	private UserDetailsServiceImpl userDetailsService;
	
	@Autowired
	private AuthenticationSuccessHandlerImpl authenticationSuccessHandler;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth
		.userDetailsService(userDetailsService)
		.passwordEncoder(new BCryptPasswordEncoder());
	}

	@Override
	public void configure(WebSecurity web) throws Exception {
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
		  .authorizeRequests()
//		  .antMatchers(HttpMethod.GET, "/users/**").authenticated()
		  .antMatchers(HttpMethod.GET, "/userprofile/**").authenticated()
		  .antMatchers(HttpMethod.GET).permitAll()
//		  .antMatchers(HttpMethod.POST, "/users/**").authenticated()
		  .antMatchers(HttpMethod.POST, "/userprofile/**").authenticated()
		  .antMatchers(HttpMethod.POST).permitAll()
		  .antMatchers(HttpMethod.PUT).permitAll()
		  .anyRequest().authenticated()
		  .and()
		  .rememberMe().tokenValiditySeconds(86400).key("rememberMe-key")
		  .and()
		  .csrf().disable()
		  .formLogin().loginPage("/login/page")
		  .successHandler(authenticationSuccessHandler) //登入成功後的處理
//		  .defaultSuccessUrl("/login/welcome")
		  .and()
	      .exceptionHandling().accessDeniedPage("/home"); //被擋轉換到home
	}

	
	
}
