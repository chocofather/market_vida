package kr.co.vida.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NoticeDTO {
	
	private int noticNo;
	private String noticCate;
	private String noticeTitle;
	private String crewId;
	private String noticeDate;
	private String noticeContent;
	private int hits;
	
}
