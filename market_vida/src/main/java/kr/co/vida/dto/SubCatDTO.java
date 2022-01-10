package kr.co.vida.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SubCatDTO {
	
	private int sub_cat_code;
	private String sub_cat_name;
	private int main_cat_code;
	
	

}
