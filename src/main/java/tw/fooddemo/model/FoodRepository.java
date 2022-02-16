package tw.fooddemo.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface FoodRepository extends JpaRepository<FoodBean, Integer> {
	@Query(value = "select*from Food Where date between ?1 and ?2",nativeQuery = true)
	public List<FoodBean>findByDateBetween(String date1,String date2);
	
	//@Query(value = "select SUM(quantity) from Food Where time  =  '中午' and date = '2022-01-08' ",nativeQuery = true)
	@Query(value = "select SUM(quantity) from Food Where date  =  ?1 and time = ?2 ",nativeQuery = true)
	
	public List<Integer> SumQuantity(String date,String time);
//	public List<Integer> SumQuantity();
	
	@Query(value = "select *from Food",nativeQuery = true)
	public List<FoodBean> findtdq();
	
}
