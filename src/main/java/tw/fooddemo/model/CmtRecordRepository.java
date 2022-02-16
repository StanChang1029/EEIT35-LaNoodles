package tw.fooddemo.model;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CmtRecordRepository extends JpaRepository<CmtRecord, Integer> {

	 @Query(value = "SELECT * FROM CMTRECORD WHERE MEMBER_ID = ?1",
       countQuery = "SELECT count(*) FROM CMTRECORD WHERE MEMBER_ID = ?1", nativeQuery = true)
			Page<CmtRecord> selectByMemberId(int member_id, Pageable pageable);
	 
	 @Query(value = "SELECT * FROM CMTRECORD WHERE COMMENT_ID = ?1",
	   countQuery = "SELECT count(*) FROM CMTRECORD WHERE COMMENT_ID = ?1", nativeQuery = true)
	 Page<CmtRecord> selectByCommentId(int member_id, Pageable pageable);
	 /*
	 @Query(value = "SELECT * FROM CMTRECORD WHERE ORIGIN_ID = ?2", countQuery =
	 "SELECT * FROM CMTRECORD WHERE COMMENT_ID = ?2", nativeQuery = true)
	 Page<Comment> selectByOriginId(int comment_id, Pageable pageable);
	 
	 @Query(value = "SELECT * FROM COMMENT ORDER BY SCORE ASC;", countQuery =
	 "SELECT * FROM COMMENT ORDER BY SCORE ASC;", nativeQuery = true)
	 Page<Comment> selectByScoreASC(String score, Pageable pageable);
	 */
	 @Query(value = "SELECT * FROM CMTRECORD ORDER BY COMMENT_TIME DESC;",
	   countQuery = "SELECT * FROM CMTRECORD ORDER BY COMMENT_TIME DESC;",
	  nativeQuery = true) Page<CmtRecord> selectByTime(String score, Pageable pageable);//score is a dummy parameter
	 
	 @Query(value = "SELECT * FROM CMTRECORD WHERE COMMENT_ID=?1 ;",
	   countQuery = "SELECT count(*) FROM CMTRECORD WHERE COMMENT_ID=?1 ;",
	  nativeQuery = true) Page<CmtRecord> selectByCommentOrderByComment_timeDESC(String comment_id, Pageable pageable);//score is a dummy parameter
	 
}
