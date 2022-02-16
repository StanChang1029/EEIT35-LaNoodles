package tw.fooddemo.model;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface MemberRepository extends JpaRepository<Member, Integer> {
	public Optional<Member> findByMemberAccount(String memberAccount);
	
	@Query(value = "SELECT count(*) FROM member_profile", nativeQuery = true)
	public int queryNumberOfAllMember();
	
	@Query(value = "SELECT COUNT(*) FROM [MEMBER] GROUP BY MEMBER_TYPE",nativeQuery = true)
	public List<Integer> queryNumberOfMemberType();
}
