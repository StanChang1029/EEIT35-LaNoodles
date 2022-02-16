package tw.fooddemo.model;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface FoodRepositoryStock extends JpaRepository<FoodBeanStock, Integer> {
	
	@Query(value = "select*from Foodstock Where date between ?1 and ?2",nativeQuery = true)
	public List<FoodBeanStock>findByDateBetween(String date1,String date2);
	
}
