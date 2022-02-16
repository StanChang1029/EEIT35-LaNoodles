package tw.fooddemo.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.fooddemo.model.CmtRecord;
import tw.fooddemo.model.CmtRecordRepository;
import tw.fooddemo.model.Comment;
import tw.fooddemo.model.CommentRepository;


@Service
@Transactional
public class CmtRecordService {
	
	@Autowired
	private CmtRecordRepository Re;
    
    public CmtRecord insert(CmtRecord cmtrecord) {
		return Re.save(cmtrecord);
    }
    
    public Page<CmtRecord> selectByMemberId(int member_id, Pageable pageable) {
    	return Re.selectByMemberId(member_id,pageable);
    }
    
    public Page<CmtRecord> selectByCommentId(int comment_id, Pageable pageable) {
    	return Re.selectByCommentId(comment_id,pageable);
    }
    
	
//	  public Page<CmtRecord> selectbyMeal(String meal, Pageable pageable) { return
//	  Re.selectByMeal(meal,pageable); }
//	  
//	  public Page<CmtRecord> selectByScoreDESC(String meal, Pageable pageable) {
//	  return Re.selectByScoreDESC(meal,pageable); }
//	  
//	  public Page<CmtRecord> selectByScoreASC(String meal, Pageable pageable) {
//	  return Re.selectByScoreASC(meal,pageable); }
//	  
	  public Page<CmtRecord> selectByTime(String meal, Pageable pageable){
		  return Re.selectByTime(meal,pageable); 
	  }
	  
	  public Page<CmtRecord> selectByCommentOrderByComment_timeDESC(String comment_id, Pageable pageable){
		  return Re.selectByCommentOrderByComment_timeDESC(comment_id,pageable); 
	  }
	
	  public void deleteByCommentId(int cid){
		  Re.deleteById(cid); 
	  }
   
}
