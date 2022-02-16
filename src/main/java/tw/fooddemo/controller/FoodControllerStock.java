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

import java.sql.Date;
import java.util.List;

import javax.mail.Multipart;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMultipart;

import tw.fooddemo.model.FoodBean;
import tw.fooddemo.model.FoodBeanStock;
import tw.fooddemo.model.FoodBeanquantity;
import tw.fooddemo.service.FoodService;
import tw.fooddemo.service.FoodServiceStock;

@Controller
@SessionAttributes(names = { "totalPages", "totalElements" })
@RequestMapping(path = "/food")
public class FoodControllerStock {
	
	@Autowired
    private FoodServiceStock fservicestock;
	
	
	@RequestMapping(path = "foodstock.controller", method = RequestMethod.GET)
	public String FoodMemberAction() {
		return "/food/FirstFoodStock";
	}
	
	@RequestMapping(path = "foodselectall.controller", method = RequestMethod.GET)
	public String  foodstockselect1(Model f) {
	
		return "/food/FirstFoodStockSelect";
	}
			
	@RequestMapping(path = "foodselectinquire.controller", method = RequestMethod.GET)
	public String  tofoodstock(Model f) {
	
		return "/food/InquireSTOCK";
	}

	
	@RequestMapping(path = "foodselectalltest", method = RequestMethod.GET)
	@ResponseBody
	public List<FoodBeanquantity>  foodstockqu(Model f) {
		
		List<FoodBeanquantity> allFoodDateAll = fservicestock.getAllFoodDateAll();
		
		return allFoodDateAll;
	}
	
	
	
	@PostMapping(path = "foodstockinput.controller")
	public String foodstockinsertAction(@RequestParam("greenonion") int greenonion,@RequestParam("garlic") int garlic,
			@RequestParam("egg") int egg,@RequestParam("kelp") int kelp,@RequestParam("seasoningpack") int seasoningpack,
			@RequestParam("alkalinewater") int alkalinewater,@RequestParam("miso") int miso,@RequestParam("salt") int salt,
			@RequestParam("sesame") int sesame,@RequestParam("mushroom") int mushroom,@RequestParam("onion") int onion,
			@RequestParam("chinesecabbage") int chinesecabbage,@RequestParam("bambooshoots") int bambooshoots,@RequestParam("noodle") int noodle,
			@RequestParam("beefbone") int beefbone,@RequestParam("porkbone") int porkbone,@RequestParam("beef") int beef,@RequestParam("pork") int pork) {
		
		
		long milliseconds =System.currentTimeMillis();
		Date m = new Date(milliseconds);
//		String a = "2022-02-17";
//		String date = new Date(milliseconds);
				
		String BOS = "入庫";
		
		FoodBeanStock FoodBeanStock = new FoodBeanStock(m,BOS,greenonion,garlic,egg,kelp,seasoningpack,alkalinewater,miso,salt,sesame,mushroom,onion,chinesecabbage,bambooshoots
				,noodle,beefbone,porkbone,beef,pork);
		fservicestock.insert(FoodBeanStock);
		
		List<String> Name = fservicestock.selectAllName();
		int[] q = {greenonion,garlic,egg,kelp,seasoningpack,alkalinewater,miso,salt,sesame,mushroom,onion,chinesecabbage,bambooshoots
				,noodle,beefbone,porkbone,beef,pork};
		
		
			for(int i=0;i<Name.size();i++) {
				FoodBeanquantity allFoodDate = fservicestock.query(Name.get(i));
			int a = allFoodDate.getQuantity()+q[i];
			allFoodDate.setQuantity(a);
			fservicestock.updata(allFoodDate);
			}		
			
		return "/food/FirstFoodStockSelect";
	}
	
	@PostMapping(path = "foodstockoutput.controller")
	public String foodstockinsert2Action(@RequestParam("greenonion") int greenonion,@RequestParam("garlic") int garlic,
			@RequestParam("egg") int egg,@RequestParam("kelp") int kelp,@RequestParam("seasoningpack") int seasoningpack,
			@RequestParam("alkalinewater") int alkalinewater,@RequestParam("miso") int miso,@RequestParam("salt") int salt,
			@RequestParam("sesame") int sesame,@RequestParam("mushroom") int mushroom,@RequestParam("onion") int onion,
			@RequestParam("chinesecabbage") int chinesecabbage,@RequestParam("bambooshoots") int bambooshoots,@RequestParam("noodle") int noodle,
			@RequestParam("beefbone") int beefbone,@RequestParam("porkbone") int porkbone,@RequestParam("beef") int beef,@RequestParam("pork") int pork) {
		
		
		long milliseconds =System.currentTimeMillis();
		Date m = new Date(milliseconds);
//		String a = "2022-02-17";
//		String date = new Date(milliseconds);
				
		String BOS = "出庫";
		
		FoodBeanStock FoodBeanStock = new FoodBeanStock(m,BOS,greenonion,garlic,egg,kelp,seasoningpack,alkalinewater,miso,salt,sesame,mushroom,onion,chinesecabbage,bambooshoots
				,noodle,beefbone,porkbone,beef,pork);
		fservicestock.insert(FoodBeanStock);
		
		
		List<String> Name = fservicestock.selectAllName();
		int[] q = {greenonion,garlic,egg,kelp,seasoningpack,alkalinewater,miso,salt,sesame,mushroom,onion,chinesecabbage,bambooshoots
				,noodle,beefbone,porkbone,beef,pork};
		
		
			for(int i=0;i<Name.size();i++) {
				FoodBeanquantity allFoodDate = fservicestock.query(Name.get(i));
			int a = allFoodDate.getQuantity()-q[i];
			allFoodDate.setQuantity(a);
			fservicestock.updata(allFoodDate);
			}
		
		
		
		return "/food/FirstFoodStock";
	}
	
	@PostMapping(path = "foodquerys.controller")	
	public String foodString(@RequestParam("date1") String date1,@RequestParam("date2") String date2,Model f) {
//	FoodBean1 Foodbean1 = new FoodBean1(date1,date2);
//	fDao.quireFood(date1, date2);
	f.addAttribute("reg_food",fservicestock.findByDateBetween(date1, date2));
	return "/food/Inquireend";
}
	
	
	
	
	
	
	@PostMapping(path = "foodquerydate.controller")	
	public String foodqueryall(@RequestParam("date1") String date1,@RequestParam("date2") String date2,Model f) {

		
		f.addAttribute("reg_food",fservicestock.findByDateBetween(date1, date2));
		
	return "/food/FirstFoodStockSelect2";
	
}
	@RequestMapping(path = "foodselectsingle.controller", method = RequestMethod.POST)
	public String foodstockselect(Model f) {
		
		f.addAttribute("reg_food",fservicestock.getAllFoodDatesingle());
		
		return "/food/FirstFoodStockSelect2";
	}
	
}


	
