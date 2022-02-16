package tw.fooddemo.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.fooddemo.model.Comment;
import tw.fooddemo.model.CommentRepository;


@Service
@Transactional
public class CommentService {
	
	@Autowired
	private CommentRepository coRe;
    
    public Comment insert(Comment comment) {
		return coRe.save(comment);
    }
    
  public Page<Comment> selectbyMeal(String meal, Pageable pageable) {
	  return coRe.selectByMeal(meal,pageable);
  }
   
  public Page<Comment> selectByScoreDESC(String meal, Pageable pageable) {
	  return coRe.selectByScoreDESC(meal,pageable);
  }
  
  public Page<Comment> selectByScoreASC(String meal, Pageable pageable) {
	  return coRe.selectByScoreASC(meal,pageable);
  }
  
  public Page<Comment> selectByTime(String meal, Pageable pageable) {
	  return coRe.selectByTime(meal,pageable);
  }
  
    public Comment selectbyId(int pid) {
		Optional<Comment> op1 = coRe.findById(pid);
		
		if(op1.isPresent()) {
			return op1.get();
		}
		
		return null;
    }
    
    public Comment updateOne(Comment comment)  {
		return coRe.save(comment);
    }
    
    public void delete(int id) {
    	coRe.deleteById(id); 
    }
   
}
