package kr.co.vida.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ReviewBoardDTO {
	private int review_no;
	private String review_title;
	private String review_contents;
	private String review_date;
	private int goods_no;
	private String crew_id;
	private int review_liked;
	private String review_img;
	private int crew_no;
	private int order_no;
}
