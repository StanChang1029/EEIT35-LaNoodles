package tw.fooddemo.controller;

import java.io.IOException;
import java.util.Date;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import tw.fooddemo.model.CmtRecord;
import tw.fooddemo.model.Comment;
import tw.fooddemo.model.Menu;
import tw.fooddemo.service.CmtRecordService;
import tw.fooddemo.service.CommentService;
import tw.fooddemo.service.MenuService;

@Controller
@SessionAttributes(names = { "totalPages", "totalElements" })
@RequestMapping(path = "/cmtrecord")
public class CmtRecordController {
	
	@Autowired
	private CmtRecordService cmtrService;
	
	@PostMapping("/selectByTime/{pageNo}") @ResponseBody
	public List<CmtRecord> processQueryAllByTimePageAction(@PathVariable("pageNo") int pageNo,@RequestParam String meal, Model m){
		int pageSize = 10;
		
		Pageable pageable = PageRequest.of(pageNo-1, pageSize);
		Page<CmtRecord> page = cmtrService.selectByTime(meal,pageable);
		
		m.addAttribute("totalPages", page.getTotalPages());
		m.addAttribute("totalElements", page.getTotalElements());
		
		return page.getContent();
	}
	
	@PostMapping("/selectByCommentOrderByComment_timeDESC/{pageNo}") @ResponseBody
	public List<CmtRecord> selectByCommentOrderByComment_timeDESC(@PathVariable("pageNo") int pageNo,@RequestParam String comment_id, Model m){
		int pageSize = 10;
		
		Pageable pageable = PageRequest.of(pageNo-1, pageSize);
		Page<CmtRecord> page = cmtrService.selectByCommentOrderByComment_timeDESC(comment_id,pageable);
		
		m.addAttribute("totalPages", page.getTotalPages());
		m.addAttribute("totalElements", page.getTotalElements());
		
		return page.getContent();
		
	}
}
