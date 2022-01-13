package kr.co.vida.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class OrdersDTO {
	private int order_no;
	private int goods_no;
	private int order_price;
	private String delivery;
	private String payment_date;
	private int order_status;
	private String card_no;
	private int crew_no;
	private int address_no;
	private int order_qty;
}
