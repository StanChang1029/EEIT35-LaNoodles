package tw.fooddemo.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import org.hibernate.boot.jaxb.cfg.spi.JaxbCfgMappingReferenceType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import tw.fooddemo.model.CmtRecord;
import tw.fooddemo.model.CmtReport;
import tw.fooddemo.model.Comment;
import tw.fooddemo.model.Menu;
import tw.fooddemo.service.CmtRecordService;
import tw.fooddemo.service.CmtReportService;
import tw.fooddemo.service.CommentService;
import tw.fooddemo.service.MenuService;

@Controller
@SessionAttributes(names = { "totalPages", "totalElements" })
@RequestMapping(path = "/comment")
public class CommentController {
	
	@Autowired
	private CommentService cService;
	
	@Autowired
	private MenuService mService;
	
	@Autowired
	private CmtRecordService cmtrService;
	
	@Autowired
	private CmtReportService cmtrtService;
	
	@GetMapping("/HomePage")
	public String homePage() {
		return "pages/HomePage";
	}//comment/HomePage
	
	@PostMapping("/CheckCommentPage")
	public String goToCheckCommentPage() {
		return "pages/CheckComment";
	}//comment/CheckCommentPage
	
	@GetMapping("/CheckComment")
	public String checkComment() {
		return "pages/CheckComment";
	}//comment/CheckComment
	
	@GetMapping("/InsertCommentPage")
	public String goToInsertCommentPage() {
		return "pages/InsertComment";
	}//comment/InsertCommentPage
	
	@GetMapping("/CommentView2")
	public String CommentView2() {
		return "pages/CommentView2";
	}//comment/CommentView2
	
	@GetMapping("/InsertCommentPage2")
	public String goToInsertCommentPage2() {
		return "pages/InsertComment2";
	}//comment/InsertCommentPage2
	
	@PostMapping("/InsertComment")
	@ResponseBody
	public Comment insertComment(@RequestParam String name, @RequestParam String meal
								,@RequestParam int member_id, @RequestParam int score
			                    ,@RequestParam(required=false) String comment_word
			                    ,@RequestParam(required=false) MultipartFile photo) throws IOException {
		
		CmtRecord cmtr = new CmtRecord();
		
		cmtr.setComment_time(new Date());
		cmtr.setName(name); 
		cmtr.setMember_id(member_id);
		cmtr.setMeal(meal);
		cmtr.setScore(score);
		cmtr.setComment_word(comment_word);
		if(photo!=null) {
			cmtr.setPhoto(photo.getBytes());
		}else{
			cmtr.setPhoto(null);
		}
		cmtr.setStatus(1);
		cmtr.setModified_time(new Date());
		
		
		Comment c;
		if(photo==null) {
			c = new Comment(new Date(), name, member_id, meal, score, comment_word, null);
		}
		else{
			c = new Comment(new Date(), name, member_id, meal, score, comment_word, photo.getBytes());
		}
		
		if(score<=2){
		String from = "eeit35teamno4";
		String pass = "ilovecoding@1024";
		String[] to = { "eeit35teamno4@gmail.com" }; // list of recipient email addresses
		String subject = "LaNoodles-評論區負評通知信";
        String body = "負評時間: " + new Date() + "\n負評發表人: " + name
                + "\n負評內容: "+ comment_word ;
		mService.sendFromGMail(from, pass, to, subject, body);
		}

	    Comment c2 = cService.insert(c);
	    //System.out.println("c2的Id ="+c2.getId());
	    
	    cmtr.setComment_id(c2.getId());
	    cmtrService.insert(cmtr);		
		return c2;
	}

	@PostMapping("/EditComment")
	@ResponseBody
	public Comment editComment(@RequestParam String name, @RequestParam String meal
							  ,@RequestParam int id, @RequestParam int score
							  ,@RequestParam(required=false) String comment_word
							  ,@RequestParam(required=false) MultipartFile photo) throws IOException {
		
		Comment comment = cService.selectbyId(id);
		
		comment.setScore(score);
		comment.setComment_word(comment_word);
		if(photo!=null) {
			comment.setPhoto(photo.getBytes());
		}
		
		if(score<=2){
		String from = "eeit35teamno4";
		String pass = "ilovecoding@1024";
		String[] to = { "eeit35teamno4@gmail.com" }; // list of recipient email addresses
		String subject = "LaNoodles-評論區負評通知信";
        String body = "負評時間: " + new Date() + "\n負評發表人: " + name
         + "\n負評內容: "+ comment_word ;
		mService.sendFromGMail(from, pass, to, subject, body);
		}
		
		Comment comment2 = cService.insert(comment);
		
		CmtRecord cmtr = new CmtRecord();
		
		cmtr.setComment_time(comment2.getComment_time());
		cmtr.setName(comment2.getName());
		cmtr.setMember_id(comment2.getMember_id());
		cmtr.setMeal(comment2.getMeal());
		cmtr.setScore(comment2.getScore());
		cmtr.setComment_word(comment2.getComment_word());
		cmtr.setPhoto(comment2.getPhoto());
		cmtr.setStatus(1);
		cmtr.setComment_id(id);
		cmtr.setModified_time(new Date());
		
		cmtrService.insert(cmtr);
		
		return comment2;
	}
	
	@PostMapping("/ReportComment")
	@ResponseBody
	public CmtReport reportComment(@RequestParam int memberId, @RequestParam int comment_id
			                    ,@RequestParam String username
			                    ,@RequestParam(required=false) String ReportCommentWord) {
		
		CmtReport cmtrt = new CmtReport();
		Comment comment = cService.selectbyId(comment_id);
		
		cmtrt.setReportcomment_time(new Date());
		cmtrt.setReportname(username);
		cmtrt.setReportmember_id(memberId);
		cmtrt.setReportcomment_word(ReportCommentWord);
		cmtrt.setComment_id(comment_id);
		cmtrt.setComment_time(comment.getComment_time());
		cmtrt.setName(comment.getName());
		cmtrt.setMember_id(comment.getMember_id());
		cmtrt.setMeal(comment.getMeal());
		cmtrt.setScore(comment.getScore());
		cmtrt.setComment_word(comment.getComment_word());
		cmtrt.setPhoto(comment.getPhoto());

		String from = "eeit35teamno4";
		String pass = "ilovecoding@1024";
		String[] to = { "eeit35teamno4@gmail.com" }; // list of recipient email addresses
		String subject = "LaNoodles-評論區檢舉通知信";
        String body = "檢舉時間:" + cmtrt.getReportcomment_time() + "\n檢舉人:" + cmtrt.getReportname()
         + "\n檢舉內容:"+ cmtrt.getReportcomment_word() ;
		mService.sendFromGMail(from, pass, to, subject, body);				

		return cmtrtService.insert(cmtrt);
	}
	
	@GetMapping("/CommentView")
	public String commentView() {
		return "pages/CommentView";
	}//comment/CommentView
	
	@GetMapping("/CommentReport")
	public String CommentReport() {
		return "pages/CommentReport";
	}//comment/CommentView
	
	@GetMapping("/CommentRecord")
	public String CommentRecord() {
		return "pages/CommentRecord";
	}//comment/CommentView
	
	@GetMapping("/EditCommentPage")
	public String goToEditCommentPage() {
		return "pages/EditComment";
	}//comment/EditCommentPage
	
	@PostMapping("/selectbyMeal/{pageNo}") @ResponseBody
	public List<Comment> processQueryAllByMealPageAction(@PathVariable("pageNo") int pageNo,@RequestParam String meal, Model m){
		int pageSize = 10;
		
		Pageable pageable = PageRequest.of(pageNo-1, pageSize);
		Page<Comment> page = cService.selectbyMeal(meal,pageable);
		
		m.addAttribute("totalPages", page.getTotalPages());
		m.addAttribute("totalElements", page.getTotalElements());
		
		return page.getContent();
	}
	
	@PostMapping("/selectByScoreASC/{pageNo}") @ResponseBody
    	public List<Comment> processQueryAllOrderByScoreASCPageAction(@PathVariable("pageNo") int pageNo,@RequestParam String meal, Model m){
    		int pageSize = 10;
    		
    		Pageable pageable = PageRequest.of(pageNo-1, pageSize);
    		Page<Comment> page = cService.selectByScoreASC(meal,pageable);
    		
    		m.addAttribute("totalPages", page.getTotalPages());
    		m.addAttribute("totalElements", page.getTotalElements());
    		
    		return page.getContent();
    }
	
	@PostMapping("/selectByScoreDESC/{pageNo}") @ResponseBody
	public List<Comment> processQueryAllOrderByScoreDESCPageAction(@PathVariable("pageNo") int pageNo,@RequestParam String meal, Model m){
		int pageSize = 10;
		
		Pageable pageable = PageRequest.of(pageNo-1, pageSize);
		Page<Comment> page = cService.selectByScoreDESC(meal,pageable);
		
		m.addAttribute("totalPages", page.getTotalPages());
		m.addAttribute("totalElements", page.getTotalElements());
		
		return page.getContent();
	}
	
	@PostMapping("/selectByTime/{pageNo}") @ResponseBody
	public List<Comment> processQueryAllByTimePageAction(@PathVariable("pageNo") int pageNo,@RequestParam String meal, Model m){
		int pageSize = 10;
		
		Pageable pageable = PageRequest.of(pageNo-1, pageSize);
		Page<Comment> page = cService.selectByTime(meal,pageable);
		
		m.addAttribute("totalPages", page.getTotalPages());
		m.addAttribute("totalElements", page.getTotalElements());
		
		return page.getContent();
	}
	
	@PostMapping("/DeletingComment")
	@ResponseBody
	public void deletingComment(@RequestParam int pid) {
		
		CmtRecord cmtr = new CmtRecord();
		Comment comment = cService.selectbyId(pid);
		
		cmtr.setComment_time(comment.getComment_time());
		cmtr.setName(comment.getName());
		cmtr.setMember_id(comment.getMember_id());
		cmtr.setMeal(comment.getMeal());
		cmtr.setScore(comment.getScore());
		cmtr.setComment_word(comment.getComment_word());
		cmtr.setPhoto(comment.getPhoto());
		cmtr.setStatus(0);
		cmtr.setComment_id(pid);
		cmtr.setModified_time(new Date());
		
		cmtrService.insert(cmtr);
		
		cService.delete(pid);
	}//comment/EditCommentPage
	
	@PostMapping("/SelectbyId")
	@ResponseBody
	public Comment selectbyId(@RequestParam int cid) {
		Comment comment = cService.selectbyId(cid);
		return comment;
	}//comment/EditCommentPage
	
    @PostMapping("/QueryAllMenu") 
    @ResponseBody
	public List<Menu> processQueryAllByPageAction(){
	  
    	int pageSize = 100; //每頁顯示的筆數 
    	Pageable pageable = PageRequest.of(0, pageSize); //設定顯示頁碼與每頁筆數 
    	Page<Menu> page = mService.findAllByPage(pageable);   
	   
	    return page.getContent();//取得所取得的該頁資料內容 
	 }
    
    @PostMapping("/QueryAllMenu2") 
    @ResponseBody
    public List<Menu> processQueryAllByPageAction2(){
    	
    	int pageSize = 100; //每頁顯示的筆數 
    	Pageable pageable = PageRequest.of(0, pageSize); //設定顯示頁碼與每頁筆數 
    	Page<Menu> page = mService.findAllByPage(pageable);   
    	
    	return page.getContent();//取得所取得的該頁資料內容 
    }
	
}
