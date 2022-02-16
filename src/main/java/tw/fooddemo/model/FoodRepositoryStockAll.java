package tw.fooddemo.model;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface FoodRepositoryStockAll extends JpaRepository<FoodBeanquantity, Integer> {
	@Query(value = "select * from Foodquantity where name = ?1",nativeQuery = true)
	public FoodBeanquantity findbyname(String food);
	
	
	@Query(value = "select name from Foodquantity",nativeQuery = true)
	public List<String> findAllname();
	
} 
