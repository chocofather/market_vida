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
	private String goods_qna_answer;
	private String goods_qna_date;
	private int goods_no;
	private String crew_id;
	private int crew_no;
	private int qna_lock;
	private int qna_status;
	

	
}
