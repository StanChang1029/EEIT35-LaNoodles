package tw.fooddemo.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.fooddemo.model.CmtReport;
import tw.fooddemo.model.CmtReportRepository;
import tw.fooddemo.model.Comment;
import tw.fooddemo.model.CommentRepository;


@Service
@Transactional
public class CmtReportService {
	
	@Autowired
	private CmtReportRepository Re;
    
    public CmtReport insert(CmtReport cmtreport) {
		return Re.save(cmtreport);
    }
    
    public CmtReport updateOne(CmtReport cmtreport)  {
		return Re.save(cmtreport);
    }
    
    public void DeletingReport(int id) {
    	Re.deleteById(id);
    }
    
    public void deleteReportbyCommentid(int id) {
    	Re.deleteByCommentId(Integer.toString(id));
    }
    
    public Page<CmtReport> selectByTime(String meal, Pageable pageable) {
  	  return Re.selectByTime(meal,pageable);
    }

	public CmtReport selectbyId(int pid) {
		Optional<CmtReport> op1 = Re.findById(pid);
		
		if(op1.isPresent()) {
			return op1.get();
		}
		
		return null;
	}
   
}
