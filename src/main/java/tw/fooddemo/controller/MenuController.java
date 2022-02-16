package tw.fooddemo.controller;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.fasterxml.jackson.core.JsonProcessingException;

import tw.fooddemo.model.FoodBean;
import tw.fooddemo.model.Menu;
import tw.fooddemo.service.MenuService;

//@RestController
@Controller
@SessionAttributes(names = { "totalPages", "totalElements" })
@RequestMapping(path = "/menu")
public class MenuController {
	
	@Autowired
    private MenuService mService;	
	
	//入口 去新增JSP
	//localhost:8080/menu/Menu.controller
	@GetMapping("/Menu.controller")
	public String processAction() {
		return "menu/menuCrud";
	}	
	//入口 去查詢JSP
		//localhost:8080/menu/Menuquery.controller
		@GetMapping("/Menuquery.controller")
		public String processqueryAction() {
			return "menu/menuQuery";
		}
	//入口 去檢視JSP
		//localhost:8080/menu/Menuuser.controller
		@GetMapping("/Menuuser.controller")
		public String processqueryuserAction() {
			return "menu/menuQueryAlluser";
		}	
		
	
	
	//新增 localhost:8080/menu/menuinsert.controller
	//@ResponseBody //使用JSP直接抓參數 要碼掉
	@PostMapping("/menuinsert.controller")
	public String processInsertAction(@RequestParam("menuDish") String menuDish,@RequestParam("menuPhoto")MultipartFile mf , 
            @RequestParam("menuPrice") int menuPrice,@RequestParam("menuItem") String menuItem,@RequestParam("menuFeature") String menuFeature,HttpServletRequest request) throws IllegalStateException, IOException {
		
		String fileName = mf.getOriginalFilename();
		
		if(fileName!=null && fileName.length()!=0) {
		
			//資料夾路徑 存在相對路徑起點是webapp
			//savefileDir.mkdirs=建立資料夾			
	    	String saveFileDir = request.getSession().getServletContext().getRealPath("/WEB-INF/resources/images") ;
	    	File saveFile = new File(saveFileDir);
	    	saveFile.mkdirs();
	    	//存檔案的路徑+  transferTo =儲存   回應成功
	    	File saveFilePath = new File(saveFile,fileName);
	    	mf.transferTo(saveFilePath);			    	
	    	System.out.println("saveFilePath:"+saveFilePath);
	    	
	    	Menu m1 = new Menu();
             m1.setDish(menuDish);
             m1.setPhoto(fileName);
             m1.setPrice(menuPrice);
             m1.setItem(menuItem);
             m1.setFeature(menuFeature); 
             m1.setQuantity(50);
             
             mService.insert(m1); 
	    	return "menu/succeed";
	}		   	
	return "menu/failed";		    	
}			
	//@ResponseBody //使用JSP直接抓參數 要碼掉
		@PostMapping("/menumail.controller")
		public String menumailAction(@RequestParam("menuDish") String menuDish, 
	            @RequestParam("menuPrice") int menuPrice) throws IllegalStateException, IOException {
			
			System.out.println("寄信給老師");
			String USER_NAME = "eeit35teamno4@gmail.com";
			String PASSWORD = "ilovecoding@1024";			
			String RECIPIENT = "eeit35teamno4@gmail.com";
			
				String from = USER_NAME;
				String pass = PASSWORD;
				String[] to = { RECIPIENT }; // list of recipient email addresses
				String subject = "匠人拉麵最新商品上架囉";
				String body = "親愛的顧客您好!"+"\n"+
				"匠人拉麵近期推出新品："+menuDish+"\n"+
				"現正新品價："+menuPrice+"\n"+
				"誠摯歡迎您前往本店消費"+"\n"+
				"🐖聯絡電話：0977-555-000🐖"+"\n"+
				"🎏營業時間🎏 "+"\n"+
				"中午11:00-14:00；晚上17:00-20:00"+"\n"+
				"期待您的光臨，匠人拉麵團隊至上!。";
				
				mService.sendFromGMail(from, pass, to, subject, body);				
				
				return "menu/succeed";
			}
	
	
	@GetMapping("/menuupdate1.controller")
//	@ResponseBody
	public String processUpdateAction(@RequestParam("mid") int mid,Model m) {
		Menu data = mService.findById(mid);
		HashMap<String, String> map = new HashMap<String, String>();
		m.addAttribute("map",map);
		String menuId = Integer.toString(data.getId());
		String menuPrice = Integer.toString(data.getPrice());
		map.put("menuId",menuId);
		map.put("menuDish", data.getDish());
		map.put("menuPhoto", data.getPhoto());
		map.put("menuPrice", menuPrice);
		map.put("menuItem", data.getItem());
		map.put("menuFeature", data.getFeature());
		
		return "menu/update";
	}
	
	//更新
	//@ResponseBody
	@PostMapping("/menuupdate2.controller")	
	public String processUpdateAction(@RequestParam("menuId") int menuId,@RequestParam("menuDish") String menuDish,@RequestParam("menuPhoto")MultipartFile mf , 
            @RequestParam("menuPrice") int menuPrice,@RequestParam("menuItem") String menuItem,@RequestParam("menuFeature") String menuFeature,HttpServletRequest request) throws IllegalStateException, IOException {
		
		String fileName = mf.getOriginalFilename();
		
		if(fileName!=null && fileName.length()!=0) {		
			//資料夾路徑
			//savefileDir.mkdirs=建立資料夾
			String saveFileDir = request.getSession().getServletContext().getRealPath("/WEB-INF/resources/images") ;
	    	File saveFile = new File(saveFileDir);
	    	saveFile.mkdirs();
	    	//存檔案的路徑+  transferTo =儲存   回應成功
	    	File saveFilePath = new File(saveFile,fileName);
	    	mf.transferTo(saveFilePath);			    	
	    	System.out.println("saveFilePath:"+saveFilePath);
		
		Menu m2 = new Menu();
		m2.setId(menuId);
		m2.setDish(menuDish);
		m2.setPhoto(fileName);
		m2.setPrice(menuPrice);
		m2.setItem(menuItem);
		m2.setFeature(menuFeature);
		m2.setQuantity(50);
		
		mService.update(m2);
		
		return "menu/updatesucceed";
		}		   	
		return "menu/updatefailed";		    	
	}

	//查詢 localhost:8080/menu/menuqerybyid.controller
	@PostMapping("/menuqerybyid.controller")
	//@ResponseBody	
	public String processQueryByIdAction(@RequestParam("mid") Integer mid, Model m) throws JsonProcessingException, JsonProcessingException {
		
		m.addAttribute("reg_menu",mService.findById(mid));
		
		if (mService.findById(mid) !=null) {			
			
			return "menu/menuQuerybyid";			
		}	
			return "menu/queryfailed";
				
	}		

	//查詢 localhost:8080/menu/menuqerybyitemlike.controller
//	@ResponseBody	
		@PostMapping("/menuqerybyitemlike.controller")
		public String processQueryByItemLikeAction(@RequestParam("menuItem") String menuItem,Model f) throws JsonProcessingException, JsonProcessingException {
			
			f.addAttribute("reg_food",mService.findByItemLike("%"+menuItem+"%"));
			if (mService.findByItemLike("%"+menuItem+"%") !=null) {			
				
				return "menu/menuQuerybyitem";			
			}	
				return "menu/queryfailed";
								
		}
	
		//查詢 localhost:8080/menu/menuqerybypricebetween.controller
//		@ResponseBody	
			@PostMapping("/menuqerybypricebetween.controller")
			public String processQueryByPriceBetweenAction(@RequestParam("menuPrice1") Integer menuPrice1,@RequestParam("menuPrice2") Integer menuPrice2,Model f) throws JsonProcessingException, JsonProcessingException {
				
				f.addAttribute("reg_price",mService.findByPriceBetween(menuPrice1,menuPrice2));
				if (mService.findByPriceBetween(menuPrice1,menuPrice2) !=null) {			
					
					return "menu/menuQuerybyprice";	
				}	
					return "menu/queryfailed";
										
			}			
		

//	//刪除 localhost:8080/menu/menudeletebyid.controller?mid=11
	@GetMapping("/menudeletebyid.controller")
	//@ResponseBody	
	public String processDeleteAction(@RequestParam("mid") Integer mid) {
		if (mid !=null) {			
			mService.deleteById(mid);		
			return "menu/menuQueryAll";
		}else {
			return "menu/failed";
		}
	}
	//----------分頁總覽--------------------------------
	
	//產品列表 不加@ResponseBody 轉跳到JSP 
		@GetMapping("/menumain.controller")
		public String processProductMainAction() {
			return "menu/menuQueryAll";
		}
	
	//+@ResponseBody 被呼叫到，回傳JSON
		@PostMapping("/menuqueryallbypage/{pageNo}") @ResponseBody
		public List<Menu> processQueryAllByPageAction(@PathVariable("pageNo") int pageNo, Model m){
			
			 int pageSize = 5; //每頁顯示的筆數 
			 Pageable pageable = PageRequest.of(pageNo-1, pageSize); //設定顯示頁碼與每頁筆數 
			 Page<Menu> page = mService.findAllByPage(pageable); 
			 
			 m.addAttribute("totalPages", page.getTotalPages()); //取得資料總頁數 
			 m.addAttribute("totalElements", page.getTotalElements()); //取得全部資料筆數 	 
				
			return page.getContent();//取得所取得的該頁資料內容 
		}
	
		
	//查詢名稱
			@PostMapping("/menubyname.controller") @ResponseBody
			public Menu processMenufindByName(@RequestParam("name") String name) {
				return mService.findByName(name);
			}
			
			@PostMapping("/menuupdateqty.controller") @ResponseBody
			public Menu processUpdateAction(@RequestBody Menu menu) {
				return mService.update(menu);
			}
}

