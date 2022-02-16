package tw.fooddemo.model;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface CmtReportRepository extends JpaRepository<CmtReport, Integer> {
//	  @Query(value = "SELECT * FROM CMTREPORT WHERE MEAL = ?1",
//			    countQuery = "SELECT count(*) FROM COMMENT WHERE MEAL = ?1",
//			    nativeQuery = true)
//			  Page<Comment> selectByMeal(String meal, Pageable pageable);
//	  @Query(value = "SELECT * FROM COMMENT ORDER BY SCORE DESC;",
//			    countQuery = "SELECT * FROM COMMENT ORDER BY SCORE DESC;",
//			    nativeQuery = true)
//			  Page<Comment> selectByScoreDESC(String score, Pageable pageable);
//	  @Query(value = "SELECT * FROM COMMENT ORDER BY SCORE ASC;",
//			    countQuery = "SELECT * FROM COMMENT ORDER BY SCORE ASC;",
//			    nativeQuery = true)
//			  Page<Comment> selectByScoreASC(String score, Pageable pageable);
	  @Query(value = "SELECT * FROM CMTREPORT ORDER BY REPORTCOMMENT_TIME DESC;",
			  countQuery = "SELECT * FROM CMTREPORT ORDER BY REPORTCOMMENT_TIME DESC;",
			  nativeQuery = true)
	          Page<CmtReport> selectByTime(String score, Pageable pageable);//
	  @Modifying
	  @Query(value = "DELETE FROM CMTREPORT WHERE COMMENT_ID = ?1", nativeQuery = true)
		 void deleteByCommentId(String comment_id);
}
