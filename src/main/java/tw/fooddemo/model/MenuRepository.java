package tw.fooddemo.model;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface MenuRepository extends JpaRepository<Menu, Integer> {

	List<Menu> findByItemLike(String item);

	List<Menu> findByPriceBetween(Integer menuPrice1, Integer menuPrice2);

	@Query(value = "Select * from Menu Where Dish = ?1",nativeQuery = true)
	public Optional<Menu> findByName(String name);
}
