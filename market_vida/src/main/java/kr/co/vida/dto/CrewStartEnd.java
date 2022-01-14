package kr.co.vida.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CrewStartEnd {
	private int crew_no;
	private int startNo;
	private int endNo;
}
