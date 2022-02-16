package tw.fooddemo.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface OrderDetailRepository extends JpaRepository<OrderDetail, Integer> {
	@Query(value = "Select * from OrderDetail Where OrderId = ?1",nativeQuery = true)
	public List<OrderDetail> findByOrderId(Integer orderid);
	
}