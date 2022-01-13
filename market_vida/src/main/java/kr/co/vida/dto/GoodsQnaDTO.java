package kr.co.vida.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GoodsQnaDTO {
	private int goods_qna_no;
	private String goods_qna_title;
	private String goods_qna_contents;
	private String goods_qna_date;
	private int goods_no;
	private String crew_id;
	private String goods_qna_img;
	private int crew_no;
	private String qna_password;
	private int qna_status;

	
}
