package kr.co.vida.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class CouponDTO {
	private String coupon_code;
	private String coupon_name;
	private int coupon_dc;
	private String coupon_period;
	private String coupon_detail;
	private int coupon_no;
}
