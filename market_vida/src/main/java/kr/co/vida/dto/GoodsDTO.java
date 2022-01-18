package kr.co.vida.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GoodsDTO {
	
	private int goods_no;
	private String goods_name;
	private String qty;
	private int goods_price;
	private int discount_rate;
	private int stock;
	private String package_type;
	private String origin;
	private String goods_info;
	private int sub_cat_code;
	private int project_status;
	private int sales_amt;
	private String add_date;
	
	

}