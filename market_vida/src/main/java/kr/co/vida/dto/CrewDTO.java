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
	 private String crew_Id;
	 private String crew_Pw;
	 private String crew_Name;
	 private String crew_Email;
	 private String crew_Phone;
	 private String grade;
	 private String crew_Gender;
	 private int crew_Point;
	public int getCrew_no() {
		return crew_no;
	}
	public void setCrew_no(int crew_no) {
		this.crew_no = crew_no;
	}
	public String getCrew_Id() {
		return crew_Id;
	}
	public void setCrew_Id(String crew_Id) {
		this.crew_Id = crew_Id;
	}
	public String getCrew_Pw() {
		return crew_Pw;
	}
	public void setCrew_Pw(String crew_Pw) {
		this.crew_Pw = crew_Pw;
	}
	public String getCrew_Name() {
		return crew_Name;
	}
	public void setCrew_Name(String crew_Name) {
		this.crew_Name = crew_Name;
	}
	public String getCrew_Email() {
		return crew_Email;
	}
	public void setCrew_Email(String crew_Email) {
		this.crew_Email = crew_Email;
	}
	public String getCrew_Phone() {
		return crew_Phone;
	}
	public void setCrew_Phone(String crew_Phone) {
		this.crew_Phone = crew_Phone;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getCrew_Gender() {
		return crew_Gender;
	}
	public void setCrew_Gender(String crew_Gender) {
		this.crew_Gender = crew_Gender;
	}
	public int getCrew_Point() {
		return crew_Point;
	}
	public void setCrew_Point(int crew_Point) {
		this.crew_Point = crew_Point;
	}
	 

}
