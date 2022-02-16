package tw.fooddemo.model;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CommentRepository extends JpaRepository<Comment, Integer> {
	  @Query(value = "SELECT * FROM COMMENT WHERE MEAL = ?1",
			    countQuery = "SELECT count(*) FROM COMMENT WHERE MEAL = ?1",
			    nativeQuery = true)
			  Page<Comment> selectByMeal(String meal, Pageable pageable);
	  @Query(value = "SELECT * FROM COMMENT ORDER BY SCORE DESC;",
			    countQuery = "SELECT * FROM COMMENT ORDER BY SCORE DESC;",
			    nativeQuery = true)
			  Page<Comment> selectByScoreDESC(String score, Pageable pageable);
	  @Query(value = "SELECT * FROM COMMENT ORDER BY SCORE ASC;",
			    countQuery = "SELECT * FROM COMMENT ORDER BY SCORE ASC;",
			    nativeQuery = true)
			  Page<Comment> selectByScoreASC(String score, Pageable pageable);
	  @Query(value = "SELECT * FROM COMMENT ORDER BY COMMENT_TIME DESC;",
			  countQuery = "SELECT * FROM COMMENT ORDER BY COMMENT_TIME DESC;",
			  nativeQuery = true)
	          Page<Comment> selectByTime(String score, Pageable pageable);//score is a dummy parameter
}
