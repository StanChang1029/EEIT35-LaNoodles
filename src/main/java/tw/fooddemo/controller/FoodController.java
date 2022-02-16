package tw.fooddemo.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

import javax.mail.Multipart;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMultipart;

import tw.fooddemo.model.FoodBean;
import tw.fooddemo.service.FoodService;

@Controller
@SessionAttributes(names = { "totalPages", "totalElements" })
@RequestMapping(path = "/food")
public class FoodController {
	
	@Autowired
    private FoodService fservice;
	
	@RequestMapping(path = "foodmember.controller", method = RequestMethod.GET)
	public String FoodMemberAction() {
		return "/food/MemberFirst";
	}
	
	
	@RequestMapping(path = "Inquire", method = RequestMethod.GET)
	public String FoodInquireAction() {
		return "/food/Inquire";
	}
	
	@RequestMapping(path = "Update", method = RequestMethod.GET)
	public String FoodUpdateAction() {
		return "/food/Update";
	}
	
	@RequestMapping(path = "ThankDel", method = RequestMethod.GET)
	public String FoodDeleteAction() {
		return "/food/ThankDel";
	}

	
	
	//@RequestMapping(path = "/profiles", method = RequestMethod.POST)
	@PostMapping(path = "foodinsert.controller")
	public String foodinsertAction(@RequestParam("name") String name, @RequestParam("date") String date, 
			                          @RequestParam("time") String time,@RequestParam("phone") String phone,@RequestParam("quantity") int quantity,@RequestParam("mail") String mail) {
		System.out.println(name+date+ time+ phone+quantity);
		
		FoodBean Foodbean = new FoodBean(name,date, time, phone,quantity,mail);
		fservice.insert(Foodbean);
			
			
		
		String USER_NAME = "botstanleybot";
		String PASSWORD = "vczptyfwqtabstch";
		
		String RECIPIENT = mail;

//		public static void main(String[] args) {
			String from = USER_NAME;
			String pass = PASSWORD;
			String[] to = { RECIPIENT }; // list of recipient email addresses
			String subject = "豚介小舖預約訊息";
			String body = "親愛的顧客您好!\n 感謝您預約本店消費，您的預約已成功!\n \n預約資訊如下 \n "+"貴賓姓名："+name+"\n" 
			+"預約日期："+ date +"\n"+" 時段:" +time +"\n"+ "聯絡方式:"+phone +"\n"+"用餐人數："+quantity+"。"
			+"\n"+"\n"+"再次感謝"+name+"先生/小姐的預約，期待您的光臨。";
			
			fservice.sendFromGMail(from, pass, to, subject, body);
			
			
//			MimeBodyPart textPart = new MimeBodyPart();
//            StringBuffer html = new StringBuffer();
//            html.append("<h2>這是第一行</h2><br>");
//            html.append("<h3>這是第二行，下面會是圖</h3><br>");
//            html.append("<img src='cid:image'/><br>");
//            textPart.setContent(html.toString(), "text/html; charset=UTF-8");

			
			return "/food/Thanks";
		}
		
	
		

//	@PostMapping(path = "foodinsert1.controller")	
//	public String foodAction(@RequestParam("name") String name, @RequestParam("date") String date, 
//			                 @RequestParam("time") String time,@RequestParam("phone") String phone,@RequestParam("quantity") String quantity,Model f) {
//		
//		FoodBean Foodbean = new FoodBean(name,date, time, phone,quantity);		
//		f.addAttribute("reg_food",Foodbean);
//		return "DisplayFood";	
//	}
	
	@PostMapping(path = "foodquery.controller")	
	public String foodString(@RequestParam("date1") String date1,@RequestParam("date2") String date2,Model f) {
//	FoodBean1 Foodbean1 = new FoodBean1(date1,date2);
//	fDao.quireFood(date1, date2);
	f.addAttribute("reg_food",fservice.findByDateBetween(date1, date2));
	return "/food/Inquireend";
}
	
	@PostMapping(path = "foodqueryall.controller")	
	public String foodqueryall(Model f) {

		
		f.addAttribute("reg_food",fservice.getAllFoodDate());
		
	return "/food/Inquireend";
	
}
	@ResponseBody
	@GetMapping(path = "foodquerytdq.controller")	
	public List<FoodBean> foodquerytdq() {
		return fservice.getfoodquerytdq();
	}
	
	@GetMapping(path = "foodquerysum.controller")@ResponseBody
	public List foodquerysum(@RequestParam("time") String time, @RequestParam("date")String date) {
		
		return fservice.SumQuantity(date, time);
		//return fservice.findByDateAndTime(date,time);
		
	}
	
		
	
	@PostMapping(path = "foodupdate.controller")
	public String update(@RequestParam("id")int id,@RequestParam("name") String name, @RequestParam("date") String date, 
            @RequestParam("time") String time,@RequestParam("phone") String phone,@RequestParam("quantity") int quantity,@RequestParam("mail") String mail) {

		FoodBean Foodbean = new FoodBean(id ,name,date, time, phone,quantity,mail);
		fservice.update(Foodbean);
		return "/food/Inquire";
	}
	

	
	@PostMapping(path = "fooddelect.controller")
	public String delete(@RequestParam("id")String id, Model m) {
		
		System.out.println("delete");
		System.out.println(id);
		
		
		fservice.deleteById(id);
		
		return "/food/Inquire";
	}

	
//	@PostMapping(path = "mail.controller")
//	public String mail(@RequestParam("mail") String mail,@RequestParam("name") String name, @RequestParam("date") String date, 
//            @RequestParam("time") String time) {
//
//		String USER_NAME = "botstanleybot";
//		String PASSWORD = "vczptyfwqtabstch";
//		
//		String RECIPIENT = mail;
//
////		public static void main(String[] args) {
//			String from = USER_NAME;
//			String pass = PASSWORD;
//			String[] to = { RECIPIENT }; // list of recipient email addresses
//			String subject = "xx預約訊息";
//			String body = "預約成功!預約資訊如下"+ name +date + time;
////
//			fservice.sendFromGMail(from, pass, to, subject, body);
//			return "/Thanks";
//		}
	
	
	
	
}


	
