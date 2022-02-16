package tw.fooddemo.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface OrderRepository extends JpaRepository<Order, Integer> {
	@Query(value = "Select * from CustomerOrder Where userId = ?1",nativeQuery = true)
	public List<Order> findByUserId(String userid);
}
