package kr.co.vida.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FriendsBenefitDTO {
	private String grade;
	private int hiamount;
	private int loamount;
	private float accual_rate;
	private int pay;
	private String remark;
}
