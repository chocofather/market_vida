package kr.co.vida.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class QnaBoardDTO {
	private int crew_no;
	private int qna_no;
	private String qna_category;
	private String qna_title;
	private String qna_date;
	private String qna_content;
	private int status;
}
