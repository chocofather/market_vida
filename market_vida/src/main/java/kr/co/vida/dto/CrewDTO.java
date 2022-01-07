package kr.co.vida.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class CrewDTO {
	 private int crew_no;
	 private String crew_id;
	 private String crew_pw;
	 private String crew_name;
	 private String crew_email;
	 private String crew_phone;
	 private String grade;
	 private String crew_gender;
	 private String crew_birth;
	
	 public String getCrew_birth() {
		return crew_birth;
	}
	public void setCrew_birth(String crew_birth) {
		this.crew_birth = crew_birth;
	}

	private int crew_point;
	public int getCrew_no() {
		return crew_no;
	}
	public void setCrew_no(int crew_no) {
		this.crew_no = crew_no;
	}
	public String getCrew_id() {
		return crew_id;
	}
	public void setCrew_id(String crew_id) {
		this.crew_id = crew_id;
	}
	public String getCrew_pw() {
		return crew_pw;
	}
	public void setCrew_pw(String crew_pw) {
		this.crew_pw = crew_pw;
	}
	public String getCrew_name() {
		return crew_name;
	}
	public void setCrew_name(String crew_name) {
		this.crew_name = crew_name;
	}
	public String getCrew_email() {
		return crew_email;
	}
	public void setCrew_email(String crew_email) {
		this.crew_email = crew_email;
	}
	public String getCrew_phone() {
		return crew_phone;
	}
	public void setCrew_phone(String crew_phone) {
		this.crew_phone = crew_phone;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getCrew_gender() {
		return crew_gender;
	}
	public void setCrew_gender(String crew_gender) {
		this.crew_gender = crew_gender;
	}
	public int getCrew_point() {
		return crew_point;
	}
	public void setCrew_point(int crew_point) {
		this.crew_point = crew_point;
	}
    
	@Override
	public String toString() {
	return "MemberDTO [crew_no=" + crew_no + ", crew_id=" + crew_id + ", crew_pw=" + crew_pw + ", crew_name=" + crew_name + ", crew_email=" + crew_email + 
			", crew_phone=" + crew_phone + ", grade=" + grade + ", crew_gender=" + crew_gender + ", crew_birth=" + crew_birth + "crew_point=" + crew_point +"]";
	}

}
