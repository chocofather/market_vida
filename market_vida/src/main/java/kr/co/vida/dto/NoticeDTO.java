package kr.co.vida.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NoticeDTO {
	
	private int notice_no;
	private String notice_category;
	private String notice_title;
	private String crew_id;
	private String notice_date;
	private String notice_content;
	private int notice_hits;
	
}
