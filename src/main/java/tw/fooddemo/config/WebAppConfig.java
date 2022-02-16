package tw.fooddemo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebAppConfig implements WebMvcConfigurer {

	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		registry.addViewController("/login/page").setViewName("th/login/login");
		registry.addViewController("/login/welcome").setViewName("th/login/welcome");
		registry.addViewController("/logout/page").setViewName("th/login/logout");
		//預約
		registry.addViewController("/Thanks").setViewName("/food/Thanks");
		registry.addViewController("/Thanks").setViewName("/food/foodinsert.controller");
		registry.addViewController("/foodmember.controller").setViewName("/food/MemberFirst");;
		registry.addViewController("/Update").setViewName("/food/Update");
		registry.addViewController("/ThankDel").setViewName("/food/ThankDel");	
		registry.addViewController("/Delete").setViewName("/food/Delete");
		registry.addViewController("/Inquireend").setViewName("/food/foodquery.controller");
		registry.addViewController("/Inquire").setViewName("/food/Inquire");
		registry.addViewController("/FirstFoodStock").setViewName("/food/foodstock.controller");
		registry.addViewController("/InquireSTOCK").setViewName("/food/InquireSTOCK");
		//
		registry.addViewController("/header").setViewName("Header");
		registry.addViewController("/headerth").setViewName("th/header");
//		registry.addViewController("/home").setViewName("Homepages");
//		registry.addViewController("/admin/backstage").setViewName("Homepages_back");
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
//		registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/resources/css/");
		registry.addResourceHandler("/images/**").addResourceLocations("/WEB-INF/resources/images/");

	}

}
