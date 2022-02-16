package tw.fooddemo.model;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface MemberProfileRepository extends JpaRepository<MemberProfile, Integer> {
	public Optional<MemberProfile> findByMemberAccount(String memberAccount);
}
