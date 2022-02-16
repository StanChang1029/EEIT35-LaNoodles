package tw.fooddemo.model;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

public interface CartRepository extends JpaRepository<CartBean, Integer> {
	@Query(value = "Select * from cart Where ACCOUNT = ?1",nativeQuery = true)
	public List<CartBean> findByAccount(String account);
	
	@Query(value = "Select * from cart Where ACCOUNT = ?1 And SP_NAME = ?2",nativeQuery = true)
	public Optional<CartBean> findByAccountName(String account, String name);
	
	@Modifying
	@Query(value = "Delete from cart Where ACCOUNT = ?1",nativeQuery = true)
	public void delByAccount(String account);
}
