package tw.fooddemo.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "MEMBER")
@Component
public class Member implements Serializable {

	@Id
	@Column(name = "MEMBER_ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int memberId;
	
	@Column(name = "MEMBER_ACCOUNT")
	private String memberAccount;
	
	@Column(name = "MEMBER_PASSWORD")
	private String memberPassword;
	
	@Column(name = "MEMBER_TYPE")
	private String memberType;
	
	@Column(name = "FK_MEMBER_PROFILE_ID")
	@Transient
	private int memberProfileId;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "FK_MEMBER_PROFILE_ID")
	private MemberProfile memberProfile;
	
	public Member() {
	}
	
	//一般用戶 type=1
	public Member(String memberAccount, String memberPassword) {
		super();
		this.memberAccount = memberAccount;
		this.memberPassword = memberPassword;
		this.memberType = "1";
	}

	//自訂type
	public Member(String memberAccount, String memberPassword, String memberType) {
		super();
		this.memberAccount = memberAccount;
		this.memberPassword = memberPassword;
		this.memberType = memberType;
	}


	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public String getMemberAccount() {
		return memberAccount;
	}

	public void setMemberAccount(String memberAccount) {
		this.memberAccount = memberAccount;
	}

	public String getMemberPassword() {
		return memberPassword;
	}

	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}

	public String getMemberType() {
		return memberType;
	}

	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}

	public int getMemberProfileId() {
		return memberProfileId;
	}

	public void setMemberProfileId(int memberProfileId) {
		this.memberProfileId = memberProfileId;
	}

	public MemberProfile getMemberProfile() {
		return memberProfile;
	}

	public void setMemberProfile(MemberProfile memberProfile) {
		this.memberProfile = memberProfile;
	}

	@Override
	public String toString() {
		return "Member [memberId=" + memberId + ", memberAccount=" + memberAccount + ", memberPassword="
				+ memberPassword + ", memberType=" + memberType + "]";
	}

	
}
