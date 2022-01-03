package kr.co.vida.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ImgDTO {

	private int img_no;
	private int goods_no;
	private String img_name;
	private int img_status;

}
