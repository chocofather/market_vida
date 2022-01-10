package kr.co.vida.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CrewPointsDTO {
	private int point_no;
	private String accumulate_date;
	private String point_detail;
	private String ex_period;
	private int accumulate_point;
	private int crew_no;
	private int crew_point;
	private int point_status;
}
