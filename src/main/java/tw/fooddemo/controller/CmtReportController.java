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
import tw.fooddemo.model.CmtReport;
import tw.fooddemo.model.Comment;
import tw.fooddemo.model.Menu;
import tw.fooddemo.service.CmtRecordService;
import tw.fooddemo.service.CmtReportService;
import tw.fooddemo.service.CommentService;
import tw.fooddemo.service.MenuService;

@Controller
@SessionAttributes(names = { "totalPages", "totalElements" })
@RequestMapping(path = "/cmtreport")
public class CmtReportController {
	
	@Autowired
	private CmtReportService cmtrtService;
	
	@Autowired
	private CommentService cService;
	
	@PostMapping("/selectByTime/{pageNo}") @ResponseBody
	public List<CmtReport> processQueryAllByTimePageAction(@PathVariable("pageNo") int pageNo,@RequestParam String meal, Model m){
		int pageSize = 10;
		
		Pageable pageable = PageRequest.of(pageNo-1, pageSize);
		Page<CmtReport> page = cmtrtService.selectByTime(meal,pageable);
		
		m.addAttribute("totalPages", page.getTotalPages());
		m.addAttribute("totalElements", page.getTotalElements());
		
		return page.getContent();
	}
//	private CmtReportService cmtrtService;
	@PostMapping("/DeletingReport")
	@ResponseBody
	public void DeletingReport(@RequestParam int pid) {
		System.out.println("J1:"+pid);
		//CmtReport CmtReport = cmtrtService.deleteReport(pid);

		cmtrtService.DeletingReport(pid);
	}//comment/EditCommentPage
	
	@PostMapping("/DeletingOriginComment")
	@ResponseBody
	public void DeletingOriginComment(@RequestParam int pid) {
		CmtReport crprt;
		crprt = cmtrtService.selectbyId(pid);
		cService.delete(crprt.getComment_id());
		//System.out.println(crprt.getComment_id());
		cmtrtService.deleteReportbyCommentid(crprt.getComment_id());
	}//comment/EditCommentPage
}