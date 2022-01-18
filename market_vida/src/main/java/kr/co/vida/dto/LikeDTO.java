package kr.co.vida.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class LikeDTO {

	private int keep_no;
	private int crew_no;
	private int goods_no;

	public LikeDTO(int crew_no, int goods_no) {
		this.crew_no = crew_no;
		this.goods_no = goods_no;
	}
}
