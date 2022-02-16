package tw.fooddemo.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "MEMBER_PROFILE")
@Component
public class MemberProfile implements Serializable {

	@Id
	@Column(name = "MEMBER_PROFILE_ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int memberProfileId;
	
	@Column(name = "MEMBER_ACCOUNT")
	private String memberAccount;
	
	@Column(name = "MEMBER_NAME")
	private String memberName;
	
	@Column(name = "MEMBER_EMAIL")
	private String memberEmail;
	
	@Column(name = "MEMBER_PHONE")
	private String memberPhone;

	@Column(name = "MEMBER_BIRTHDAY")
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	@DateTimeFormat(pattern = "yyyy-MM-dd") //for form
	private Date memberBirthday;
	
	public MemberProfile() {
	}

	public int getMemberProfileId() {
		return memberProfileId;
	}

	public void setMemberProfileId(int memberProfileId) {
		this.memberProfileId = memberProfileId;
	}

	public String getMemberAccount() {
		return memberAccount;
	}

	public void setMemberAccount(String memberAccount) {
		this.memberAccount = memberAccount;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	public Date getMemberBirthday() {
		return memberBirthday;
	}

	public void setMemberBirthday(Date memberBirthday) {
		this.memberBirthday = memberBirthday;
	}

	@Override
	public String toString() {
		return "MemberProfile [memberProfileId=" + memberProfileId + ", memberAccount=" + memberAccount
				+ ", memberName=" + memberName + ", memberEmail=" + memberEmail + ", memberPhone=" + memberPhone
				+ ", memberBirthday=" + memberBirthday + "]";
	}

	
}
