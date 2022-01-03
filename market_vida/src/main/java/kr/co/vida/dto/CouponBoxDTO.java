package kr.co.vida.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CouponBoxDTO {
	private int couponbox_no;
	private int crew_no;
	private String coupon_code;
	private int status;
	private int coupon_no;
}